FROM koenkk/zigbee2mqtt:1.17.1

ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
