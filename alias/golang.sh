#!/bin/sh


# run an image with a temporary container
function run_go() {

  export WORK_DIR="${PWD}/${1}"

  if [[ -n "$1" ]]; then
	echo "start go environment with working dir: $WORK_DIR -> /go/src/terryoy/$1"
  	docker run --rm -it --name go-env \
  		-v $WORK_DIR:/go/src/terryoy/$1 golang
  else
	echo "run_go [path]"
  fi
}
