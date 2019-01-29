# setup (one time on host machine):

# docker volume create grafana-storage
# docker volume create statsd-storage
# docker volume create graphite-storage

docker run -d\
       --name graphite\
       --restart=always\
       -p 80:80\
       -p 8080:81\
       -p 2003-2004:2003-2004\
       -p 2023-2024:2023-2024\
       -p 8125:8125/udp\
       -p 8126:8126\
       -v graphite-storage:/opt/graphite/storage\
       -v statsd-storage:/opt/statsd\
       -v grafana-storage:/var/lib/grafana\
       stats

