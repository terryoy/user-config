#!/bin/sh

set -e

cd ~
git clone https://github.com/terryoy/user-config.git
echo "you can change repository's origin to git@github.com/terryoy/user-config.git"

cd user-config
chmod +x env_setup.sh
./env_setup.sh

