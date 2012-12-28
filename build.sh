#!/usr/bin/env bash

if [ -d target ]
then
    rm -rf target;
fi

mkdir target

cp -r src/* target
