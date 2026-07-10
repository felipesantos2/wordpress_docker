#!/usr/bin/env bash

chmod +x ./build.sh
docker compose build --no-cache && docker compose up -d

