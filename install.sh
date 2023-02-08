#!/bin/bash

curl -s "https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/Dockerfile?$(date +%s)" -o Dockerfile
curl -s "https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/docker-compose.dev.yml?$(date +%s)" -o docker-compose.dev.yml
curl -s "https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/Makefile?$(date +%s)" -o Makefile
