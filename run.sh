#!/bin/bash

echo -e "0000000000000000000000000000000\n0000000000000000000000000000000\n00 000000      0      00    000\n00     00 0000 0 0000 0 0000 00\n00 0000 0 0000 0      0      00\n00 0000 0 0000 0 000000 0000000\n00 0000 0      0 0000000     00\n0000000000000000000000000000000\n0000000000000000000000000000000"

exec 'scripts/clean-root.sh'
exec 'scripts/install-pkg.sh'
