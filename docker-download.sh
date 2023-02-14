#!/bin/bash

set -ex

export FILE_HOST="${FILE_HOST:-downloads.openwrt.org}"
export GNUPGHOME="${GNUPGHOME:-/keys/gpg/}"
export USIGNHOME="${USIGNHOME:-/keys/usign/}"


mkdir -p ./build
tar xf "$FILE_NAME" --strip=1 -C ./build
rm -rf "$FILE_NAME"
