#!/bin/bash

set -e

echo ""
echo "It's time to BUILD! All resistance is futile."
echo ""

# Downloads the LND proto file
LND_PROTO_URL=${LND_PROTO_URL:-https://raw.githubusercontent.com/lightningnetwork/lnd/master/lnrpc/rpc.proto}
curl -o ./proto/lnd-rpc.proto $LND_PROTO_URL

# Prepares the downloaded lnd-rpc proto file (installation steps tell you to remove this line)
# (this is POSIX compliant as the versions of sed differ between OSes)
sed 's|^import \"google/api/annotations.proto\";||' ./proto/lnd-rpc.proto > /tmp/file.$$ && mv /tmp/file.$$ ./proto/lnd-rpc.proto

# Rest of the installation process
npm rebuild grpc --target_arch=x64 --target_platform=linux --target_libc=glibc
npm test
