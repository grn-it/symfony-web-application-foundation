FROM composer:latest AS symfony-web-application

RUN apk add bash acl yq && \
    curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash && \
    apk add symfony-cli

CMD ["symfony", "server:start", "--no-tls"]
