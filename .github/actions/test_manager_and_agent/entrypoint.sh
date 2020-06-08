#! /usr/bin/env bash
set -e


echo `ls -lah`
echo `git status`
echo `git branch`


mkdir -p modules/wazuh

cd .. && cp -r `ls -A | grep -v "kitchen"` kitchen/modules/wazuh/

cd kitchen # Access kitchen folder


echo "Kitchen is creating the new instances"
kitchen create # creating new kitchen instances