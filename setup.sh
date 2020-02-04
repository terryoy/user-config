#!/bin/sh

set -e

cd ~
git clone git@github.com:terryoy/user-config.git

cd user-config
chmod +x env_setup.sh
./env_setup.sh

