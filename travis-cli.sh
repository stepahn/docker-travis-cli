#!/usr/bin/env bash
docker run --rm -it -v $PWD:/travis -v ~/.travis-cli:/home/travis-cli travis-cli $@
