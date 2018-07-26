FROM alpine
MAINTAINER andras.sebo@gmail.com

RUN apk update \
	&& apk add squid \
	&& apk add nano \
	&& rm -rf /var/cache/apk/*

# add some default configs
COPY config/squid.conf /etc/squid/squid.conf
COPY config/restricted-sites.acl /etc/squid/restricted-sites.acl
COPY scripts/access-log-rotate.sh /etc/cron.daily/access-log-rotate.sh
COPY scripts/start-squid.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/start-squid.sh

EXPOSE 3128/tcp

CMD /usr/local/bin/start-squid.sh && tail -f /var/log/squid/access.log
