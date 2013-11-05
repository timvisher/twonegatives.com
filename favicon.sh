#!/usr/bin/env bash

set -eu

set -x

convert -resize x16 -gravity center -crop 16x16+0+0 -background black src/TwoNegativesLogo.svg src/favicon.ico
