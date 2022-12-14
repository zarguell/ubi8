#!/bin/sh

(>&2 echo "Remediating: 'xccdf_org.ssgproject.content_rule_harden_sshd_ciphers_opensshserver_conf_crypto_policy'")

sshd_approved_ciphers='aes256-ctr,aes192-ctr,aes128-ctr'


CONF_FILE=/etc/crypto-policies/back-ends/opensshserver.config
correct_value="-oCiphers=${sshd_approved_ciphers}"

# Test if file exists
test -f ${CONF_FILE} || touch ${CONF_FILE}

# Ensure CRYPTO_POLICY is not commented out
sed --follow-symlinks -i 's/#CRYPTO_POLICY=/CRYPTO_POLICY=/' ${CONF_FILE}

grep -q "'${correct_value}'" ${CONF_FILE}

if [[ $? -ne 0 ]]; then
    # We need to get the existing value, using PCRE to maintain same regex
    existing_value=$(grep -Po '(-oCiphers=\S+)' ${CONF_FILE})

    if [[ ! -z ${existing_value} ]]; then
        # replace existing_value with correct_value
        sed --follow-symlinks -i "s/${existing_value}/${correct_value}/g" ${CONF_FILE}
    else
        # ***NOTE*** #
        # This probably means this file is not here or it's been modified
        # unintentionally.
        # ********** #
        # echo correct_value to end
        echo "CRYPTO_POLICY='${correct_value}'" >> ${CONF_FILE}
    fi
fi
