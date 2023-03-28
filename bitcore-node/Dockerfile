FROM base as base
FROM debian

COPY --from=base / /

RUN npm i bitcore-node -g

ENV BITCORE_NODE=/usr/lib/node_modules/bitcore-node

COPY bitcore.config.json ${BITCORE_NODE}/bitcore.config.json

EXPOSE 3000
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD node ${BITCORE_NODE}/build/src/server.js
