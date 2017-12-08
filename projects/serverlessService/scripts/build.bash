#!/bin/bash

# Clean
rm -rf build
mkdir build

# Copy latent, belonging to the index module
rsync -am . ./build  --exclude '*/*' --include '*'

# Copy latent files from source, recursively
rsync -am  ./src/* ./build --exclude '*.ts'

# Rename jest snapshots to prevent test issues
find ./build -depth -name "*.ts.snap" -exec sh -c 'mv "$1" "${1%.ts.snap}.js.snap.ignored"' _ {} \;

# Build typescript
yarn tsc
