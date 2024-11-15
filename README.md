# My Smart Home - Zigbee2MQTT

[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FIanStorm%2Fmy-smart-home-zigbee2mqtt%2Fbadge%3Fref%3Dmain&style=flat&label=build&logo=none)](https://actions-badge.atrox.dev/IanStorm/my-smart-home-zigbee2mqtt/goto?ref=main)
[![Docker Pulls](https://img.shields.io/docker/pulls/ianstorm/my-smart-home-zigbee2mqtt)](https://hub.docker.com/r/ianstorm/my-smart-home-zigbee2mqtt)
[![Docker Stars](https://img.shields.io/docker/stars/ianstorm/my-smart-home-zigbee2mqtt)](https://hub.docker.com/r/ianstorm/my-smart-home-zigbee2mqtt)

Garage project for **private purposes**.
Allows usage of any Zigbee device in my home.

**🐳 Make sure you have installed *Docker*.**

See how to put this repo in action at [IanStorm/my-smart-home-ras-pi](https://github.com/IanStorm/my-smart-home-ras-pi).


## How to use in "production"? 👨‍💼 👩‍💼

1. Follow ["How to get a pre-built Docker image?"](#-how-to-get-a-pre-built-docker-image-☁️).
2. Ensure to have a running MQTT broker available via `mqtt-broker:1883`.
2. Start a Docker instance:
```sh
docker run \
		--rm \
		-d \
		-t \
		--device=/dev/ttyUSB0 \
		-v /var/opt/my-smart-home-zigbee2mqtt/data/state.json:/app/data/state.json \
		-p 8099:8099 \
		ianstorm/my-smart-home-zigbee2mqtt
```
*
	* `--device=[…]`: Makes the host's Zigbee gateway *(here: ConBee III)* available to the Docker container (see `app/data/configuration.yaml`)
	* `-v […]/[…]state.json`: Ensure `state.json` is initially set as `{}`


## How to develop? 👨‍💻 👩‍💻

Make sure you have installed *Visual Studio Code*.

1. Clone this repository.
2. `cd` inside the cloned folder.
2. In `./app/data/configuration.yaml`:
	1. Set `permit_join: true` (instead of `false`)
	2. Set `availability: true` (instead of `false`)
2. Ensure to have the latest firmware running on the USB Zigbee gateway *(here: ConBee III)*, see [deCONZ firmware update](https://github.com/dresden-elektronik/deconz-rest-plugin/wiki/Update-deCONZ-manually).
2. Start the Docker instances:
```sh
docker-compose up
```
6. Open any browser and enter `http://localhost:8099`.

## Appendix


### How to get a pre-built Docker image? ☁️

Get the latest Docker image from Docker Hub:
```sh
docker pull ianstorm/my-smart-home-zigbee2mqtt:latest
```


### Sources

* [Official Zigbee2MQTT documentation: Docker](https://www.zigbee2mqtt.io/information/docker.html#docker)
* [Official Zigbee2MQTT documentation: Configuration](https://www.zigbee2mqtt.io/information/configuration.html#configuration)
* [Official Zigbee2MQTT documentation: How to secure network](https://www.zigbee2mqtt.io/advanced/zigbee/03_secure_network.html)
* [Official Zigbee2MQTT documentation: How to hide secrets](https://www.zigbee2mqtt.io/guide/configuration/zigbee-network.html#specifying-network-key-in-a-different-file)
