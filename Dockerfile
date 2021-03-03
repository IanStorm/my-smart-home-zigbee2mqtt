FROM koenkk/zigbee2mqtt:1.18.1

ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
