#! /bin/bash

set -e

NODE_VERSION=14.1.0

n use ${NODE_VERSION}


yarn config set cache-folder /npm-packages-offline-cache
yarn install --offline
yarn test