FROM koenkk/zigbee2mqtt:1.18.3

ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
