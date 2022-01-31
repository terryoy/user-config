#!/bin/sh

# Ruby Gem setup(recommended by Arch Linux)
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
