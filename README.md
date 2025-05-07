# 🤖 Dummy Systemd Service Project for [roadmap.sh](https://roadmap.sh/)

This is my solution to the [Dummy Systemd Service project](https://roadmap.sh/projects/dummy-systemd-service) in the [DevOps roadmap](https://roadmap.sh/devops) from [roadmap.sh](https://roadmap.sh/)

**Table of Contents**
- [Project Requirements](#project-requirements)
- [Prerequisites](#prerequisites)
- [How To Run](#how-to-run)
  - [Quickstart](#quickstart)
  - [Step-By-Step](#step-by-step)
- [Author](#author)

## Project Requirements

- [x] Create a script called `dummy.sh` that keeps running forever and writes a message to the log file every 10 seconds simulating an application running in the background
- [x] Create a systemd service `dummy.service` that should start the app automatically on boot and keep it running in the background. If the service fails for any reason, it should automatically restart
- [x] You should be able to start, stop, enable, disable, check the status of the service, and check the logs i.e.

## Prerequisites

- Linux OS (Ubuntu Server 22.04)

## How To Run

### Quickstart

- To install service run the `install-dummy.sh` script
- To uninstall service run the `uninstall-dummy.sh` script

### Step-By-Step

1. Create `dummy.sh` script in `/usr/bin/` or `/usr/local/bin/`
```bash
#!/bin/bash

while true; do
  echo "Dummy service is running..." >> /var/log/dummy-service.log
  sleep 10
done
```
2. Create `dummy.service` service file in `/etc/systemd/system/`
```ini
[Unit]
Description=Dummy Systemd Service

[Service]
Type=simple
ExecStart=/usr/bin/dummy.sh # path to script
User=root
Group=root
Restart=always
StandardOutput=journal+console
StandardError=journal+console
SyslogIdentifier=dummy

[Install]
WantedBy=multi-user.target
```
3. Reload systemd daemon
```bash
sudo systemctl daemon-reload
```
4. Now you can use the service
```bash
# Interacting with the service
sudo systemctl start dummy
sudo systemctl stop dummy
sudo systemctl enable dummy
sudo systemctl disable dummy
sudo systemctl status dummy

# Check the journal service status logs
sudo journalctl -u dummy -f
# And service logs
tail -f /var/log/dummy-service.log
```

## Author

Sergey Torshin [@torshin5ergey](https://github.com/torshin5ergey)
