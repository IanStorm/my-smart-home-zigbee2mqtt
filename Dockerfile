FROM koenkk/zigbee2mqtt:1.16.0

ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
