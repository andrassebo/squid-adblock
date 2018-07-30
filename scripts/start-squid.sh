mkdir -p /var/spool/squid
touch /var/log/squid/access.log
chown -R squid:squid /var/cache/squid
chown -R squid:squid /var/log/squid
chown -R squid:squid /var/spool/squid
chmod a+x /etc/periodic/daily/access-log-rotate

/usr/sbin/squid -z
/usr/sbin/squid
