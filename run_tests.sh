#!/usr/bin/env bash

# exit when any command fails
set -e
# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

## Python test
python --version
python3 --version

## NPM test
(mkdir npmTest; cd npmTest; npm init -y)

## Yarn test
(mkdir yarnTest; cd yarnTest; yarn init -y)

## watchman test
watchman version

## Create-React-App test
create-react-app create-react-app-test

exit 0
