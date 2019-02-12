#!/bin/sh

# Exit on error
set -e

# Configuration
[ -z "$DOCKERHUB_USERNAME" ] && echo "Need to set DOCKERHUB_USERNAME" && exit 1;
[ -z "$DOCKERHUB_PASSWORD" ] && echo "Need to set DOCKERHUB_PASSWORD" && exit 1;
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update README's
for IMAGE_DIR in $(find $DIR/images/* -maxdepth 1 -type f -name README.md -exec dirname {} \;); do
    IMAGE_NAME=${IMAGE_DIR##*/}
    if [[ "$IMAGE_NAME" =~ ^(base|symfony2|symfony3|symfony4|nginx)$ ]]; then
        echo Skipping $IMAGE_NAME
    else
        echo Upating README of $IMAGE_NAME
        docker run --rm -v $IMAGE_DIR/README.md:/data/README.md -e DOCKERHUB_USERNAME=$DOCKERHUB_USERNAME -e DOCKERHUB_PASSWORD=$DOCKERHUB_PASSWORD -e DOCKERHUB_REPO_PREFIX=whatwedo -e DOCKERHUB_REPO_NAME=$IMAGE_NAME sheogorath/readme-to-dockerhub
    fi
done