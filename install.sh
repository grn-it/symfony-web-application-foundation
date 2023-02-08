#!/bin/bash

curl -s -H 'Cache-Control: no-cache, no-store' https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/Dockerfile -o Dockerfile
curl -s -H 'Cache-Control: no-cache, no-store' https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/docker-compose.dev.yml -o docker-compose.dev.yml
curl -s -H 'Cache-Control: no-cache, no-store' https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/Makefile -o Makefile
make install
