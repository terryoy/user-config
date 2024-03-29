#!/bin/sh

ALIAS_PATH=~/user-config/alias

# debug: echo environment variables
# echo "init aliases..."

# Basic Aliases under Linux OS
if [[ -n "${INIT_USER_ALIAS_LINUX}" ]]; then
    # echo "Init user alias: linux"
    source "${ALIAS_PATH}/linux.sh"
fi


# Python Dev Aliases
if [[ -n "${INIT_USER_ALIAS_PYTHON}" ]]; then
    # echo "Init user alias: python"
    source "${ALIAS_PATH}/python.sh"
fi 

# Ruby Dev Aliases
if [[ -n "${INIT_USER_ALIAS_RUBY}" ]]; then
    # echo "Init user alias: ruby"
    source "${ALIAS_PATH}/ruby.sh"
fi


# JavaScript Dev Aliases
if [[ -n "${INIT_USER_ALIAS_NODEJS}" ]]; then
    # echo "Init user alias: nodejs"
    source "${ALIAS_PATH}/nodejs.sh"
fi

# Docker Dev Aliases
if [[ -n "${INIT_USER_ALIAS_DOCKER}" ]]; then
    # echo "Init user alias: docker"
    source "${ALIAS_PATH}/docker.sh"
fi

# Golang Dev Aliases
if [[ -n "${INIT_USER_ALIAS_GOLANG}" ]]; then
    # echo "Init user alias: golang"
    source "${ALIAS_PATH}/golang.sh"
fi
