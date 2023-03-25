FROM debian

#install deps
RUN set -eu \
  && apt-get update -q \
  && apt-get install -yq --no-install-recommends apt-utils python3 git curl ca-certificates build-essential dumb-init \
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -yq nodejs

#clone monorepo
WORKDIR /home/bitpay
RUN git clone https://github.com/bitpay/bitcore.git \
  && cd bitcore \
  && npm install

