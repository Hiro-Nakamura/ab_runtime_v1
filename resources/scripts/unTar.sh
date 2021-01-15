#!/bin/bash
tar -xhjf /tmp/app.tar.tbz --checkpoint=.500
chown -R node .
chgrp -R node .
chmod -R g+rwX .
