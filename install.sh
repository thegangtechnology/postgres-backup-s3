#! /bin/sh

# exit if a command fails
set -e


apk update

# install pg_dump
apk add postgresql

# install s3 tools
apk add python3 py-pip
pip install six awscli

# cleanup
rm -rf /var/cache/apk/*