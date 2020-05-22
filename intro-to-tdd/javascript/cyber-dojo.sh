#! /bin/bash

set -e

NODE_VERSION=14.1.0

n use ${NODE_VERSION}

yarn install --offline
yarn test