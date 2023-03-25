##Purpose

This project is a bitcore regtest project. It is sandboxed in Docker containers for easy instalation process. After the setup this allows you to send transactions to bitcoin node with hopefuly minimal effort.

##Build images

`docker build -t bitcore ./bitcore`

`docker build -t bitcore-wallet ./bitcore-wallet`

`docker build -t bitcore-wallet-service ./bitcore-wallet-service`

`docker build -t bitcore-node ./bitcore-node`

##Run containers

`docker-compose up`

##Start bws

`docker exec bitpay-bitcore-wallet-service-1 /home/bitpay/bitcore/packages/bitcore-wallet-service/start.sh`

##Connect to bitcore-wallet

`docker exec -ti bitpay-bitcore-wallet-1 /bin/bash`

execute scripts from bitcore wallet bin

## TODO

alice.create-wallet.sh
bob.create-wallet.sh
alice.toBob.sh
bob.toAlice.sh

scripts that send docker instructions to run bitcore-wallet scripts
