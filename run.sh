#!/usr/bin/env bash
docker run --rm --name river5 -d -p 1337:1337 -v $PWD/config:/config oevl/docker-river5
