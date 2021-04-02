FROM postgres:13-alpine

ARG RELATIVE_DB_SETUP_SCRIPT_PATH
COPY $RELATIVE_DB_SETUP_SCRIPT_PATH /docker-entrypoint-initdb.d/init.sql
