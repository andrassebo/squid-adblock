docker rm -f squid-adblock
docker run -d -v "$(pwd)"/configs:/etc/squid -p 3128:3128 --name squid-adblock --restart unless-stopped andrassebo/squid-adblock:2.0-armhf
