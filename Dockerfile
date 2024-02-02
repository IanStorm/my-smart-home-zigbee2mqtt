FROM koenkk/zigbee2mqtt:1.35.2

# ENV DEBUG=zigbee-herdsman*
ENV TZ="Europe/Berlin"

COPY ./app/data/ /app/data/
