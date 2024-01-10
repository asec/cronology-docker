# Docker integration for cronology v1 API (and the old GUI)

This process was mainly designed to work on AWS hosted Ubuntu 22.04.2 machines.

## Usage:

#### 1. Generate Let's Encrypt certificates with `certbot`

#### 2. Install `docker` and the `docker-compose` plugin

#### 3. Create the containers:

`git clone https://github.com/asec/cronology-docker.git`

`cd ./cronology-docker`

`chmod +x ./docker-install.sh`

`./docker-install.sh`

Modify the configuration in the newly created `.env` file, if necessary.

`./docker-up`