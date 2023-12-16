# Use a tag do MySQL disponível no .env ou mantenha a padrão
ARG MYSQL_VERSION=mysql/mysql-server:8.0.24

FROM $MYSQL_VERSION

COPY config/user.cnf /etc/mysql/my.cnf

# Definindo as variáveis de ambiente usando valores do .env
ARG MYSQL_DATABASE
ARG MYSQL_USER
ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
# ENV MYSQL_ROOT_USER=$MYSQL_ROOT_USER

# MYSQL_PASSWORD e MYSQL_ROOT_PASSWORD serão fornecidos via arquivo .env
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

