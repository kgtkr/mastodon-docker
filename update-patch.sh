#!/usr/bin/env bash
set -eu

TMPDIR=$(mktemp -d)
git clone https://github.com/kgtkr/mastodon.git $TMPDIR
(cd $TMPDIR && git diff v4.1.4 mstdn.kgtkr.net) > mastodon.patch
