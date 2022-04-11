#!/bin/bash

if [ -d "/opt/studio3t" ]; then
    /opt/studio3t/Studio-3T
else
    /opt/studio-3t-linux-x64.sh
    rm -rf /opt/studio-3t-linux-x64.tar.gz
    rm -rf /opt/studio-3t-linux-x64.sh
fi
