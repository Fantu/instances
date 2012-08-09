#!/bin/bash

if [ "$1" == "add" ]; then
	gpg --no-default-keyring --keyring $PWD/debomatic.gpg --keyserver pgp.mit.edu --recv-key $2
elif [ "$1" == "delete" ]; then
	gpg --no-default-keyring --keyring $PWD/debomatic.gpg --keyserver pgp.mit.edu --delete-key $2
elif [ "$1" == "list" ]; then
	gpg --no-default-keyring --keyring $PWD/debomatic.gpg --keyserver pgp.mit.edu --list-keys
else
	echo "Unknown command $1"
fi
