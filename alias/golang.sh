#!/bin/sh

# run an image with a temporary container
function run_go() {

  if [[ -n "$1" ]]; then
  	docker run --rm -it --name go-env \
  		-v $1:/go/src/terryoy/$1 golang
  else
	echo "run_go [path]"
  fi
}
