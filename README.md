Kong Docker Composer
====================

A docker compose configuration for [Kong](https://konghq.com/kong-community-edition/), 
[Kong Dashboard](https://github.com/PGBI/kong-dashboard) and [nginx-proxy](https://github.com/jwilder/nginx-proxy)

## Features

- Fully automated SSL Certificates generation with Let's Encrypt.
- Add new APIs into `docker-compose.override.yml` file.

## Prerequisites

- Wildcard domain name configured to point on your docker engine server.
- [nginx-proxy](https://github.com/jwilder/nginx-proxy) container configured globally on an external network named `nginx-proxy`.
- [docker-letsencrypt-nginx-proxy-companion](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion) container configured globally on same external network.

## Install

- Rename `.env.dist` to `.env` and customize subdomains with your own domain. *(You may use multiple domains on the same container separated by a comma)*
- Run `docker-compose up -d`.
- Point your browser on `http://` of domains configured in `.env` file.
- Configure Kong as usual to declare services by using the name of services declared in `docker-compose.override.yml` file as upstream. 

*You should always configure http protocol inside Kong as the https layer is handled externaly by `nginx-proxy` and `docker-letsencrypt-nginx-proxy-companion` containers*
