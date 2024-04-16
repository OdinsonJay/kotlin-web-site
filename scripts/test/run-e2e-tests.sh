#!/usr/bin/env bash
set -e
set +x
set -o pipefail
set -u

docker compose -f docker-compose-e2e-statics.yml up --exit-code-from playwright
chmod -R 777 ./test-results
