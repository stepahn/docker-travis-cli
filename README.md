# travis-cli

[![Build Status](https://img.shields.io/docker/build/rycus86/travis-cli.svg)](https://hub.docker.com/r/rycus86/travis-cli)
[![Layers](https://images.microbadger.com/badges/image/rycus86/travis-cli.svg)](https://microbadger.com/images/rycus86/travis-cli "Get your own image badge on microbadger.com")

A *Docker* image to run the `travis` cli tool without having to install it (or Ruby).

### Usage

```
docker run --rm -it  \
  -v $PWD:/travis    \
  -v ~/.travis-cli:/home/travis-cli  \
  rycus86/travis-cli COMMAND
```

The `/travis` mount will bring in the current directory you're in.
The `~/.travis-cli` mount will save settings like login token, etc.

### Installation

The *Docker* image can be fetched with a simple `docker pull rycus86/travis-cli` command.
Though if you want a wrapper to execute it like the example above you can execute:

`curl -sSL https://raw.githubusercontent.com/rycus86/docker-travis-cli/master/install.sh | sudo sh`

*Ignore sudo and just do `... | sh` if that's appropriate.*

This will install the `travis-cli` *Shell wrapper* in `/usr/local/bin/travis-cli`.  
Try the installation with `travis-cli help` afterwards.

Check the [travis-cli.sh](https://github.com/rycus86/docker-travis-cli/blob/master/travis-cli.sh)
file to see what gets installed when using this installation method.