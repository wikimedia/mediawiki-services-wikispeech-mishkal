#!/usr/bin/env bash

# clean up previous builds
docker rm wikispeech-mishkal-test
docker rmi --force wikispeech-mishkal-test

docker rm wikispeech-mishkal
docker rmi --force wikispeech-mishkal

# build docker
blubber .pipeline/blubber.yaml test | docker build --tag wikispeech-mishkal-test --file - .
blubber .pipeline/blubber.yaml production | docker build --tag wikispeech-mishkal --file - .
