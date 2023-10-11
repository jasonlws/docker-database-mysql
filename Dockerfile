ARG IMAGE_TAG
FROM mysql:${IMAGE_TAG}
ARG SETUP_SQL_PATH
COPY ${SETUP_SQL_PATH}/setup.sql /docker-entrypoint-initdb.d/setup.sql