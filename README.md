### Purpose

This project is a bitcore regtest project. It is sandboxed in Docker containers for easy instalation process. After the setup this allows you to send transactions to bitcoin node with hopefuly minimal effort.

### Build images

`docker build -t base ./base`

`docker build -t bitcore-wallet-service ./bitcore-wallet-service`

`docker build -t bitcore-node ./bitcore-node`

### Run containers

`docker-compose up`

Once docker containers are active you can mount the bitcoin-node-0 and mine blocks

First create a default wallet
`bitcoin-cli createwallet default`

Then generate some number of blocks
`bitcoin-cli -generate 1000`

### Start bws

`docker exec bitpay-bitcore-wallet-service-1 /home/bitpay/bitcore/packages/bitcore-wallet-service/start.sh`

