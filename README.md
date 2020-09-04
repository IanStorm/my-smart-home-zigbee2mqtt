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
```
$	docker run \
		--rm \
		-d \
		-t \
		--device=/dev/ttyACM0 \
		ianstorm/my-smart-home-zigbee2mqtt
```


## How to develop? 👨‍💻 👩‍💻

Make sure you have installed *Visual Studio Code*.

1. Clone this repository.
2. `cd` inside the cloned folder.
2. In `data/configuration.yaml` set `permit_join: true` (instead of `false`).
2. Build the Docker image: Run the vscode task `build`.
2. Ensure to have a running MQTT broker available via `mqtt-broker:1883`.
2. Start a Docker instance:
```
$	docker run \
		--rm \
		-i \
		-t \
		--device=/dev/ttyACM0 \
		-v $(pwd)/data/:/app/data/ \
		my-smart-home-zigbee2mqtt
```
*
	* `--device=/dev/ttyACM0`: Makes the host's CC2135 available to the Docker container (see `data/configuration.yaml`)


## Appendix


### How to get a pre-built Docker image? ☁️

Get the latest Docker image from Docker Hub:
```
$	docker pull ianstorm/my-smart-home-zigbee2mqtt:latest
```


### Sources

* [Official Zigbee2MQTT documentation: Docker](https://www.zigbee2mqtt.io/information/docker.html#docker)
* [Official Zigbee2MQTT documentation: Configuration](https://www.zigbee2mqtt.io/information/configuration.html#configuration)
