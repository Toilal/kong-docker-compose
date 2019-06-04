Kong Docker Composer
====================

A docker compose configuration for [Kong](https://konghq.com/kong-community-edition/), 
[Konga](https://github.com/pantsel/konga).

Supports [nginx-proxy](https://github.com/jwilder/nginx-proxy) and [traefik](https://traefik.io/) as frontend containers.

## Install

- Copy `.env.dist` to `.env` and customize subdomains with your own domain. *(You may use multiple domains on the same container separated by a comma)*
- Copy `konga.users.js.dist` to `konga.users.js` and customize your default users.
- Run `docker-compose up -d`.
- Point your browser on `http://` of domains configured in `.env` file.
- Configure Kong as usual to declare services by using the name of services declared in `docker-compose.override.yml` file as upstream. 
