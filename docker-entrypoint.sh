#!/bin/sh
if [ ! -z "$PASSWORD" ]; then
  echo "sftp:${PASSWORD}" | chpasswd
fi

exec "$@"
