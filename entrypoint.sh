#!/usr/bin/env bash

set -euo pipefail

Xvfb :10 -ac &

echo "$@"

export DISPLAY=:10
java -jar fakeSMTP-${FAKESMTP_VERSION}.jar "$@"
