FROM base as base
FROM debian

COPY --from=base / /

RUN npm i bitcore-wallet -g

WORKDIR /usr/lib/node_modules/bitcore-wallet/bin
