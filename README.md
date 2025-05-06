# 🤖 Dummy Systemd Service Project for [roadmap.sh](https://roadmap.sh/)

This is my solution to the [Dummy Systemd Service project](https://roadmap.sh/projects/dummy-systemd-service) in the [DevOps roadmap](https://roadmap.sh/devops) from [roadmap.sh](https://roadmap.sh/)

**Table of Contents**
- [Project Requirements](#project-requirements)
- [Author](#author)

## Project Requirements

- [ ] Create a script called `dummy.sh` that keeps running forever and writes a message to the log file every 10 seconds simulating an application running in the background
- [ ] Create a systemd service `dummy.service` that should start the app automatically on boot and keep it running in the background. If the service fails for any reason, it should automatically restart
- [ ] You should be able to start, stop, enable, disable, check the status of the service, and check the logs i.e.
```bash
# Interacting with the service
sudo systemctl start dummy
sudo systemctl stop dummy
sudo systemctl enable dummy
sudo systemctl disable dummy
sudo systemctl status dummy

# Check the logs
sudo journalctl -u dummy -f
```

## Author

Sergey Torshin [@torshin5ergey](https://github.com/torshin5ergey)
