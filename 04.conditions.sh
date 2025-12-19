#!/bin/bash
USERID=$((id -u))
if[$USERID -ne 0]
then
echo "Kindly run with sudo access"
exit1
fi