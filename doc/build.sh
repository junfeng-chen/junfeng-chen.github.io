#!/bin/sh
set -eu

# Resolve source files relative to this script, regardless of the caller's directory.
cd "$(dirname "$0")"

python3 jemdoc -c mysite.conf -o ../docs/ index.jemdoc publications.jemdoc
