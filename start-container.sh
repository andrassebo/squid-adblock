docker rm -f squid-adblock
docker volume create squid-log

docker run -d \
    -v "$(pwd)"/configs:/etc/squid \
    -v squid-log:/var/log/squid \
    -p 3128:3128 \
    --name squid-adblock \
    --restart on-failure:3 \
    --memory="1g" \
    --cpus="1" \
    andrassebo/squid-adblock
