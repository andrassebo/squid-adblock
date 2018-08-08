FROM alpine
MAINTAINER andras.sebo@gmail.com

RUN apk update \
    && apk add squid \
    && apk add nano \
    && apk add less \
    && rm -rf /var/cache/apk/*

# add some default configs
COPY configs/squid.conf /etc/squid/squid.conf
COPY configs/restricted-sites.acl /etc/squid/restricted-sites.acl
COPY scripts/access-log-rotate /etc/periodic/daily/access-log-rotate
COPY scripts/start-squid.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/start-squid.sh
RUN chmod a+x /etc/periodic/daily/access-log-rotate

EXPOSE 3128/tcp

CMD /usr/local/bin/start-squid.sh && tail -f /var/log/squid/access.log
