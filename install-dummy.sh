#!/bin/bash

echo "Installing Dummy Systemd Service..."

cp dummy.sh /usr/bin/

cp dummy.service /etc/systemd/system/

systemctl daemon-reload

if [ $? -eq 0 ]; then
  echo -e "\033[32m""Successfully installed Dummy Systemd Service!""\033[0m"
else
  echo -e "\033[31m""Installation failed! Check errors above.""\033[0m"
  exit 1
fi
