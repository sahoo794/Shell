#!/bin/bash
USERID=$((id -u))
if["$USERID" -ne 0]
then
echo "Kindly run with sudo access"
exit 1
fi