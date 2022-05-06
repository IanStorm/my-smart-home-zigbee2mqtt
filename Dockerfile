FROM koenkk/zigbee2mqtt:1.25.1

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
