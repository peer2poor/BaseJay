
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version


#!/bin/sh
docker cp packages/p-net $1:/ \
    && docker cp ./docker_scripts/build-pnet.sh $1:/ \
    && docker exec $1 bash -c "/build-pnet.sh" \
    && rm -rf build/p-net && mkdir build/p-net \
    && docker cp $1:/p-net/build/ build/p-net/
