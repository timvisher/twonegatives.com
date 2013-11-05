#!/usr/bin/env bash

if [ ! -d target ]
then
    mkdir target;
fi

rsync -avP --exclude '*.sketch' --delete src/ target/

