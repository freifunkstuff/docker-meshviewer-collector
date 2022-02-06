#!/bin/bash
set -e

# check required env variables
: "${REMOTE_URL:? must be set}"
: "${REMOTE_NAME:? must be set}"
: "${YANIC_TYPE:? must be set}"
: "${YANIC_ADDRESS:? must be set}"

mkdir -p /config /data
cat << EOF > "/config/config.toml"

run_every = "1m"

ignore_meshviewer = "6d"
ignore_node = "6h"

status_json = "/data/status.json"

[dataPaths]
"${REMOTE_URL}" = "${REMOTE_NAME}"

[yanic_connection]
type          = "${YANIC_TYPE}"
address       = "${YANIC_ADDRESS}"
EOF

exec /bin/meshviewer-collector collect --config /config/config.toml
