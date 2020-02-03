#!/bin/sh

set -e

cd ~
git clone git@github.com:terryoy/user-config.git

cd user-config
./env_setup.sh

