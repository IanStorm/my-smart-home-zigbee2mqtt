FROM koenkk/zigbee2mqtt:1.30.4

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
