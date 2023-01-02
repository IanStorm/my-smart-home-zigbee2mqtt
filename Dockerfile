FROM koenkk/zigbee2mqtt:1.29.0

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
