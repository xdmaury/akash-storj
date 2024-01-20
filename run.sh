#!/bin/sh

set -e

[ -z "$ACCESS_GRANT" ] && echo "ACCESS_GRANT empty" && exit

# Check if the gateway configuration already exists
if [ ! -f "/root/.local/share/storj/gateway/config.yaml" ]; then
    ./gateway setup --access "${ACCESS_GRANT}" --non-interactive
fi

exec "$@"