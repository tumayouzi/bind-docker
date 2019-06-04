FROM alpine:latest

LABEL  maintainer "tumayouzi <tumayouzi@gmail.com>"

RUN apk update && apk add bind tzdata --no-cache && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    wget -O /etc/bind/db.root http://www.internic.net/domain/named.root
    
COPY ./conf/* /etc/bind/

RUN chmod 644 /etc/bind/* && \
    mkdir /var/cache/bind && \
    chown root:named /var/cache/bind && \
    chmod 774 /var/cache/bind

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-u", "named", "-g"]

EXPOSE 53/udp