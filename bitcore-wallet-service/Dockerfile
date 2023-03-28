FROM base as base
FROM debian

COPY --from=base / /

RUN npm i bitcore-wallet-service -g

ENV BWS=/usr/lib/node_modules/bitcore-wallet-service

COPY bws.config.js ${BWS}/bws.config.js

EXPOSE 3232

CMD node ${BWS}/ts_build/messagebroker/messagebroker.js & \
    node ${BWS}/ts_build/fiatrateservice/fiatrateservice.js & \
    node ${BWS}/ts_build/bcmonitor/bcmonitor.js & \
    node ${BWS}/ts_build/emailservice/emailservice.js & \
    node ${BWS}/ts_build/bws.js

#node ${BWS}/ts_build/pushnotificationsservice/pushnotificationsservice.js & \
