#!/usr/bin/env bash

# if argument is given, use that as quartz directory
if [ -n "$1" ]; then
    QUARTZ_DIR="$1"
else
    QUARTZ_DIR="$(mktemp -d)/quartz"
fi

SRC=$(dirname "$(readlink -f "$0")")
mkdir -p "$SRC/dist"

echo "using quartz directory: $QUARTZ_DIR"

if [ ! -d "$QUARTZ_DIR" ]; then
    echo "Creating quartz directory: $QUARTZ_DIR"
    mkdir -p "$QUARTZ_DIR"
    git clone https://github.com/jackyzha0/quartz
    pushd "$QUARTZ_DIR"
    npm install
    popd
fi

pushd "$QUARTZ_DIR"
rm -r content
ln -s "$SRC/content" content
rm quartz.config.ts
cp "$SRC/quartz.config.ts" quartz.config.ts
rm -r quartz/styles/custom.scss
cp "$SRC/custom.scss" quartz/styles/custom.scss
npx quartz build --serve
cp -r public/* "$SRC/dist/"
