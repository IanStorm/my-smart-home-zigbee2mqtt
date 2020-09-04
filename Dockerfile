FROM koenkk/zigbee2mqtt:1.14.4

ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
