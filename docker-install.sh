#!/bin/sh
if [ ! -e .env ]
then
  cp .env.example .env
fi

chmod +x ./docker-up.sh ./docker-down.sh