FROM bitcore as bitcore
FROM debian

COPY --from=bitcore / /

EXPOSE 3232

WORKDIR /home/bitpay/bitcore/packages/bitcore-wallet-service

COPY bws.config.js bws.config.js

RUN ./start.sh
