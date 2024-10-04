FROM koenkk/zigbee2mqtt:1.40.2

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
