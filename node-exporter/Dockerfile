
ARG BASEIMAGE_TAG='v1.1.2'
FROM prom/node-exporter:${BASEIMAGE_TAG}

ENV NODE_ID=none

USER root

COPY conf /etc/node-exporter/

ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]
