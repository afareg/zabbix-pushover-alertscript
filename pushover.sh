#!/bin/bash

PO_TOKEN=""
PO_USER=""
PO_BIN=/usr/local/bin/pushover

ZB_TO=$1
ZB_SUBJECT=$2
ZB_BODY=$3

if [[ $ZB_TO == "all" ]]; then
        $PO_BIN -T $PO_TOKEN -U $PO_USER -p 1 -t "$ZB_SUBJECT" "$ZB_BODY"
else
        $PO_BIN -d $ZB_TO -T $PO_TOKEN -U $PO_USER -p 1 -t "$ZB_SUBJECT" "$ZB_BODY"
fi
