ARG MYSQL_TAG
FROM mysql:${MYSQL_TAG}
ARG CONTENT_PATH
COPY ${CONTENT_PATH} /docker-entrypoint-initdb.d/