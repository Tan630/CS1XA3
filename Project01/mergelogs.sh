#!/bin/bash

git log --oneline | grep -i merge | cut -d' ' -f1 > ~/CS1XA3/Project01/logs/merge.log

