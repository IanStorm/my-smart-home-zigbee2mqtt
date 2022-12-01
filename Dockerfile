FROM koenkk/zigbee2mqtt:1.28.4

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
