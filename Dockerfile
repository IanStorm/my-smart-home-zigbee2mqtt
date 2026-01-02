FROM koenkk/zigbee2mqtt:2.7.2

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
