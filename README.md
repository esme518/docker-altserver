## :whale: Dockerfiles for AltServer
Deploy [AltServer-Linux](https://github.com/NyaMisty/AltServer-Linux) on Docker container with [AltServer-Linux-PyScript](https://github.com/powenn/AltServer-Linux-PyScript)

```bash
# data folder for the running resources
# lockdown folder for the pairing records
mkdir -p altserver/{data,lockdown}

cd altserver
wget https://github.com/esme518/docker-altserver/raw/main/docker-compose.yml

# To enter in "config" mode to pair a device with "usbmuxd"
docker-compose run --rm config

# Connect your iOS device to the host via USB cable
# "Trust This Computer" alert message will pop up on the device
# Tap "Trust" and enter the password to "trust" the AltServer
# Unplug the device and use Ctrl+C to exit the "config" mode

# To bring up AltServer with wifi Daemode mode
docker-compose up -d
```
