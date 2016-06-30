#!/usr/bin/env bash

set -euo pipefail

readonly IMAGE="theypsilon_docker-fakesmtp_test"

docker build -t "$IMAGE" .
docker run --rm -it "$IMAGE" --help
docker rmi "$IMAGE"