#!/bin/bash

CMD=$1
BOX=$2

case $CMD in
	build)
		docker build -f $BOX/Dockerfile -t cardboard/$BOX:`cat $BOX/VERSION` .
		;;

	push)
		docker push cardboard/$BOX:`cat $BOX/VERSION`
		;;

	run)
		docker run -ti cardboard/$BOX:`cat $BOX/VERSION` /bin/sh
		;;
esac
