#!/usr/bin/env sh

docker run --rm \
     --network=kong \
     -e "KONG_DATABASE=postgres" \
     -e "KONG_PG_HOST=kong-database" \
     -e "KONG_PG_USER=kong" \
     -e "KONG_PG_PASSWORD=kong" \
     -e "KONG_PG_DATABASE=kong" \
     kong:0.14.1-alpine kong migrations up