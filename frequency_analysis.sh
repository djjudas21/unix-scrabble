#!/bin/bash

# Perform basic character frequency analysis on:
#  -p  the commands found in the users $PATH
#  -m  mimetypes in /usr/share/mime/globs
#  -b  this users history
#  -v  verbose! outputs the word list prior to analysis

WORD_LIST='';

while getopts ":pmbv" opt; do
  case $opt in
    p)
      # $PATH analysis
      for path in `echo $PATH | sed 's/:/ \
/g'`
        do
          WORD_LIST=$WORD_LIST`ls $path`
        done
      ;;
    m)
      # mimetype analysis
      WORD_LIST=$WORD_LIST`cat /usr/share/mime/globs | cut -d '*' -f2`
      ;;
    b)
      # .bash_history analysis
      WORD_LIST=$WORD_LIST`cat ~/.bash_history`
      ;;
    v)
      VERBOSE=1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

if [ $VERBOSE ]
then
  echo $WORD_LIST
  echo
fi

# Output!
echo Character,Count
echo $WORD_LIST | gawk -vFS="" '{for(i=1;i<=NF;i++)w[tolower($i)]++}END{for(i in w) print i,w[i]}' | tr ' ' ','

