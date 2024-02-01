# Docker integration for cronology v1 API (and the old GUI)

This process was mainly designed to work on AWS hosted Ubuntu 22.04.2 machines.

## Usage:

#### 1. Clone the repository

`git clone https://github.com/asec/cronology-docker.git`

`cd ./cronology-docker`

#### 2. Run the install script

`chmod +x ./install.sh`

`./install.sh`

This will prompt you for any necessary data, such as the domain for your app. It should install `docker` and `certbot`, also will try to generate the certificates for your domain.