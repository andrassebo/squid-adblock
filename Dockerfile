FROM ubuntu
MAINTAINER andras.sebo@gmail.com

RUN apt-get update \
  && apt-get install -y nano squid

COPY squid.conf /etc/squid/squid.conf
COPY restricted-sites.acl /etc/squid/restricted-sites.acl
COPY access-log-rotate.sh /etc/cron.daily/access-log-rotate.sh
  
RUN chmod +x /etc/cron.daily/access-log-rotate.sh
  
EXPOSE 3128/tcp

CMD service squid start && tail -F /var/log/squid/access.log