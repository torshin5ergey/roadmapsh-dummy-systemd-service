#!/bin/bash

echo "Uninstalling Dummy Systemd Service..."

systemctl stop dummy

rm /usr/bin/dummy.sh

rm /etc/systemd/system/dummy.service

systemctl daemon-reload

if [ $? -eq 0 ]; then
  echo -e "Successfully uninstalled Dummy Systemd Service"
else
  echo -e "\033[31m""Uninstallation failed! Check errors above.""\033[0m"
  exit 1
fi
