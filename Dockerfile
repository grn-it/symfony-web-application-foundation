FROM composer:latest AS symfony-web-application-foundation

RUN apk add --no-cache bash && \
    curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash && \
    apk add symfony-cli

CMD ["tail", "-f", "/dev/null"]
