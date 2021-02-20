#!/bin/bash

# The user's UID and GID from outside the docker container is expected to be passed in as parameters.
# Falls back to the "node" user and group.
REAL_UID=$1
if [ "$REAL_UID" = "" ]; then
  REAL_UID="node"
fi
REAL_GID=$2
if [ "$REAL_GID" = "" ]; then
  REAL_GID="node"
fi

tar -xhjf /tmp/app.tar.tbz --checkpoint=.500

# This will cause the untarred directory to not be owned by the root user.
chown -R $REAL_UID .
chgrp -R $REAL_GID .
chmod -R g+rwX .
