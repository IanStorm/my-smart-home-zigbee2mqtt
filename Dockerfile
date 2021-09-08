FROM koenkk/zigbee2mqtt:1.21.1

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
