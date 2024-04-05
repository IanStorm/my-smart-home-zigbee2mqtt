FROM koenkk/zigbee2mqtt:1.36.1

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
