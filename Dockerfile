FROM geerlingguy/docker-centos7-ansible

RUN yum -y install java-1.8.0-openjdk \
      rsync \
      openssl \
      rsyslog \
      libselinux-python \
      openldap \
      openldap-servers \
      compat-openldap \
      openldap-clients \
      openldap-devel \
      nss-pam-ldapd \
      libselinux-python \
      krb5-libs \
      krb5-server \
      krb5-workstation \
      unzip