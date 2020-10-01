FROM koenkk/zigbee2mqtt:1.15.0

ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
