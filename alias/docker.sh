#!/bin/sh

# run an image with a temporary container
function docktest() {
  docker run --rm -it $1 /bin/sh
}