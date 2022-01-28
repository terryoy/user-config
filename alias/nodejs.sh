#!/bin/sh

# NVM install (https://github.com/nvm-sh/nvm)
alias install_nvm="curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash"

# find recursively all "node_modules" folders and check the size
alias frn='find . -name "node_modules" -type d -prune | xargs du -chs'

# remove recursively all "node_modules" folders
alias rrn='find . -name "node_modules" -type d -prune -exec rm -rf {} +'