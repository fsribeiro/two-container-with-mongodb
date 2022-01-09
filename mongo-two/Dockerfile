FROM mongo:4.4.4

COPY script/mongo.init.sh /docker-entrypoint-initdb.d/
COPY script/seed.sh /docker-entrypoint-initdb.d/
COPY seed/* /docker-entrypoint-initdb.d/seed/
