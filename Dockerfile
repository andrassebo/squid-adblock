FROM ubuntu
MAINTAINER andras.sebo@gmail.com

RUN apt-get update \
  && apt-get install -y wget nano ca-certificates unzip apt-transport-https net-tools squid

COPY squid.conf /etc/squid/squid.conf
COPY restricted-sites.acl /etc/squid/restricted-sites.acl
  
EXPOSE 3128/tcp

CMD service squid start && tail -F /var/log/squid/access.log