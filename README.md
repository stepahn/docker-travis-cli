# travis-cli

A small docker image to run the `travis` cli tool without having to install it (or Ruby).

### Usage

```
docker run --rm -it  \
  -v $PWD:/travis    \
  -v ~/.travis-cli:/home/travis-cli  \
  travis-cli COMMAND
```

The `/travis` mount will bring in the current directory you're in.
The `~/.travis-cli` mount will save settings like login token, etc.
