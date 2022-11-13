#!/bin/sh


# run an image with a temporary container
function run_go() {

  export ENV_NAME=${1}
  export WORK_DIR="${PWD}/${2}"

  if [[ -n "$2" ]]; then
	echo "start go environment with working dir: $WORK_DIR -> /go/src/terryoy/$2"
  	docker run --rm -it --name go-env \
  		-v $WORK_DIR:/go/src/terryoy/$2 golang
  else
	echo "run_go [env_name] [path]"
  fi
}
