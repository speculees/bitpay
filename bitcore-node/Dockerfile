FROM bitcore as bitcore
FROM debian

COPY --from=bitcore / /

WORKDIR /home/bitpay/bitcore

EXPOSE 3000

COPY bitcore.config.json bitcore.config.json

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD npm run node
