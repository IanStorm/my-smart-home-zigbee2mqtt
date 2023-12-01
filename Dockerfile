FROM koenkk/zigbee2mqtt:1.34.0

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
