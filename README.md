![alt text](rh_logo.png)
 
# [Red Hat Universal Base Image 8](https://catalog.redhat.com/software/containers/ubi8/5c647760bed8bd28d0e38f9f)
 
This repository contains the necessary source code files to produce a Platform One-approved security-hardened container from the latest Red Hat Universal Base Image 8 available from the [Red Hat Ecosystem Catalog](https://catalog.redhat.com/). For additional details, please email the Red Hat Platform One team at [PlatformOne@redhat.com](mailto:PlatformOne@redhat.com).
 
## [Security](https://www.redhat.com/security/)
 
Users of this container can produce a Software Bill of Materials (SBOM) by following [question #14 "How do I find the UBI BOMs for images, runtimes, other?"](https://developers.redhat.com/articles/ubi-faq#ubi_details). For more information about Red Hat's Container Health Index, see article [Container Health Index grades as used inside the Red Hat Container Catalog](https://access.redhat.com/articles/2803031) in the Red Hat Customer Portal.
 
These elements support Red Hat's initiatives toward [trusted supply chains](https://www.redhat.com/en/topics/security/what-is-software-supply-chain-security) within the DoD.
 
## [Pipeline Hardening](https://docs-ironbank.dso.mil/quickstart/pipeline/)
 
The Platform One CI/CD pipeline  executes scripts within Red Hat's container image to comply with appropriate configuration requirements. Some requirements are not applicable to containers. Technical details including [container build instructions](Dockerfile) and [applied remediation scripts](scripts/) are available in this repository. The pipeline also includes appropriate [DoD PKI/PKE root certificates](https://public.cyber.mil/pki-pke/), see [certs](certs/) for details.
 
The Platform One Iron Bank also provides an SBOM as well.
 
## [UBI](https://developers.redhat.com/products/rhel/ubi)
 
The [Universal Base Image](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html-single/building_running_and_managing_containers/index#con_characteristics-of-ubi-images_assembly_types-of-container-images) is a collection of [Open Container Initiative (OCI)](https://opencontainers.org/)-compliant, freely redistributable, container base operating system images. There are [several options](https://catalog.redhat.com/software/container-stacks/detail/5ec53f50ef29fd35586d9a56) to choose from that vary in size, complexity, or that include language runtimes and packages. All of the packages in UBI come from Red Hat Enterprise Linux (RHEL) and are supported like [RHEL](https://access.redhat.com/support/policy/updates/errata) when run on a Red Hat supported platform like [OpenShift](https://www.redhat.com/en/technologies/cloud-computing/openshift) or Red Hat Enterprise Linux.
 
## [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux)
 
Red Hat Enterprise Linux is the world’s leading enterprise Linux platform, certified on hundreds of clouds and with thousands of hardware and software vendors. Red Hat Enterprise Linux subscriptions include access to features that address enterprise needs such as security, automation, migration & upgrades, cloud, and containers.
 
## [About Red Hat](https://www.redhat.com/en/about/open-source)
 
Red Hat is the world’s leading provider of enterprise open source solutions including Linux, cloud, container, and Kubernetes. Red Hat deliverts hardened solutions that make it easier for enterprises to work across platforms and environments, from the core datacenter to the network edge.
