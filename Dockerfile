      FROM registry.access.redhat.com/ubi8/ubi
      RUN yum -y install nmap wget httpd bind-utils iperf3 && yum -y clean all && rm -rf /var/cache
      CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
      LABEL summary "My custom utility image"
