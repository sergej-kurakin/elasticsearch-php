#!/usr/bin/env bash

source /usr/local/bin/bash_standard_lib.sh

DOCKER_IMAGES="8.0.0beta3-cli-buster
php:7.4-cli
php:7.3-cli
php:7.2-cli
"

for di in ${DOCKER_IMAGES}
do
(retry 2 docker pull "${di}") || echo "Error pulling ${di} Docker image, we continue"
done

