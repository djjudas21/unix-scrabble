#!/bin/sh

# Shonky script to list all binaries in the standard locations, and count the characters
# for frequency analysis
#
# could be improved by replacing the ls command with some invocation of find to find bin
# directories not in the standard places - or to find commands on a pre-agreed users path

ls /bin* /sbin/* /usr/bin/* /usr/sbin/* /usr/local/bin/* /usr/local/sbin/* | cut -d '/' -f4 | awk -vFS="" '{for(i=1;i<=NF;i++)w[tolower($i)]++}END{for(i in w) print i,w[i]}'
