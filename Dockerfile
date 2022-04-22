FROM certbot/certbot
COPY ./init /scripts/init
COPY ./renew-hook /etc/letsencrypt/renewal-hooks/deploy/renew-hook
RUN apk update && apk add socat
