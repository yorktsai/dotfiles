#!/bin/bash
VBoxHeadless -s $1 >& /tmp/vbox-dev.log < /dev/null &
