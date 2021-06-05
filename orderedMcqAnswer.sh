#!/bin/sh

help(){
  printf "Usage: orderedMcqAnswer.sh file1 file2\nfile1 is correct answer list\nfile2 is your copy of question\n"
  exit 1
}

( [ ! -z $1 ] && [ ! -z $2 ] && [ -f $1 ] && [ -f $2 ] ) || help

[ -f mySeqMcqAns ] && rm mySeqMcqAns

awk '/1 point/{print a}{a=$0}' $2 | while read line;do
  line=$(echo $line | sed "s/\//\./g")
  sed -n "/$line/,/^$/{p}" $1 >> mySeqMcqAns
done
