#!/bin/sh

#USER_ID=${LOCAL_UID:-9001}
#GROUP_ID=${LOCAL_GID:-9001}
USER_ID=${LOCAL_UID:-1000}
GROUP_ID=${LOCAL_GID:-1000}

USER_NAME=vscode

echo "Starting with UID : $USER_ID, GID: $GROUP_ID"
useradd -u $USER_ID -o -m $USER_NAME
groupmod -g $GROUP_ID $USER_NAME
export HOME=/home/$USER_NAME

#usermod -u $USER_ID -o -m vscode
#groupmod -g $GROUP_ID vscode

#exec /sbin/su-exec $USER_NAME "$@"
#exec /sbin/su-exec $USER_NAME /bin/sh

exec sleep infinity