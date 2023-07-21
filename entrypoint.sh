#!/bin/bash
set -e

rm -f /active_record/tmp/pids/server.pid

exec "$@"