FROM koenkk/zigbee2mqtt:2.1.1

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
