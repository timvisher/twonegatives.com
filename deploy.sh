#!/usr/bin/env bash

set -eu

set -x

environment=${1:-}
src_dir=target/
target_bucket=s3://staging.twonegatives.com/

if [[ production = $environment ]]
then
  src_dir=$target_bucket
  target_bucket=s3://twonegatives.com/
fi

aws --profile p_s3 s3 sync --delete $src_dir $target_bucket
