# RocketChat docker-compose

Rocket.Chat 8 with MongoDB 4

[Using RocketChat Docker Image](https://rocket.chat/docs/installation/docker-containers/#6-create-the-docker-composeyml-file--local-directories)

## Installation

Create the directories for database backup :
```bash
mkdir -p /path/to/rocketchat/data/runtime/db
mkdir -p /path/to/rocketchat/data/dump
```

Create the `.env` file from [.env.dist](.env.dist) example with the
environment variables from [docker let's encrypt nginx proxy](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion/wiki/Basic-usage)

```bash
docker-compose up -d
```

## Update docker images

```bash
./updateDockerImages.sh
```
