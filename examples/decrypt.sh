#!/bin/bash

NAME=baum-ransomware
BIN=../$NAME
KEY=.$NAME.key

if [ -f $KEY ]; then
	$BIN --decrypt $KEY --verbose && rm $KEY
else
	echo "no key found"
fi