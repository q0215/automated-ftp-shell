#!/bin/bash

SERVER=$1
USER=$2
PASS=$3
FILE=$4

ftp -n <<END
open $SERVER
user $USER $PASS
bin
prompt
verbose
get $FILE
bye
END

exit 0
