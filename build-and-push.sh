#!/usr/bin/env bash
set -euo pipefail

image="antoniomamayacalvo977/hydra:2.3.0-vfix"

docker buildx version >/dev/null
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --file .docker/Dockerfile-alpine \
  --tag "$image" \
  --push \
  .
