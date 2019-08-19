FROM alpine:latest

RUN apk add --no-cache pgbouncer
COPY pgbouncer.ini /etc/pgbouncer/
COPY userlist.txt /etc/userlist/

VOLUME ["/etc/pgbouncer/", "/etc/userlist/"]

EXPOSE 5432
USER pgbouncer
ENTRYPOINT ["pgbouncer", "/etc/pgbouncer/pgbouncer.ini"]

