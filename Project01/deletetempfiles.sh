#!/bin/bash

git ls-files . --exclude-standard --others | grep -i ".tmp$" | xargs rm 2> /dev/null
