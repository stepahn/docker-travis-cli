#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/rycus86/docker-travis-cli/master/travis-cli.sh -o /usr/local/bin/travis-cli \
 && chmod +x /usr/local/bin/travis-cli
INSTALL_RESULT=$?

if [ "$INSTALL_RESULT" -eq "0" ]; then
  echo "travis-cli successfully installed in /usr/local/bin/travis-cli"
  echo "Try 'travis-cli help' for usage"
else
  echo "Failed to install the travis-cli tool (exit code: $INSTALL_RESULT)"
fi