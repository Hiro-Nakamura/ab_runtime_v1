#!/bin/bash
docker stack deploy -c docker-compose.yml ab
./logs.js 