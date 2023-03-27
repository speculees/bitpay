FROM debian

#install deps
RUN set -eu \
  && apt-get update -q \
  && apt-get install -yq --no-install-recommends apt-utils python3 git curl ca-certificates build-essential dumb-init \
  && curl -fssl https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -yq nodejs

env PYTHON=python3

RUN git clone https://github.com/bitpay/wallet.git \
  && cd wallet \
  && npm i \
  && npm run apply:bitpay

EXPOSE 8100

RUN npm run start
