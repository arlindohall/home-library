#!/bin/bash

docker build . -t home-library:latest

# docker image ls -a | grep none | ruby -ane 'puts $F[2]' | xargs docker image rm

docker run --rm -it \
  -v ./db/production.sqlite3:/app/db/production.sqlite3 \
  -p 3000:4080 \
  localhost/home-library:latest
