### Purpose

This project is a bitcore regtest project. It is sandboxed in Docker containers for easy instalation process. After the setup this allows you to send transactions to bitcoin node with hopefuly minimal effort.

### Build images

`docker build -t bitcore ./bitcore`

`docker build -t bitcore-wallet ./bitcore-wallet`

`docker build -t bitcore-wallet-service ./bitcore-wallet-service`

`docker build -t bitcore-node ./bitcore-node`

### Run containers

`docker-compose up`

Once docker containers are active you can mount the bitcoin-node-0 and mine blocks

`bitcoin-cli -generate 1000`

Once you have some coin, you can then use "bitcoin core" to send coins to your bitcore wallets

If you get an error, try removing /root/.bitcoin folder and createing a soft link to data instead

`ln -s /data /root/.bitcoin`

### Start bws

`docker exec bitpay-bitcore-wallet-service-1 /home/bitpay/bitcore/packages/bitcore-wallet-service/start.sh`

### Connect to bitcore-wallet

`docker exec -ti bitpay-bitcore-wallet-1 /bin/bash`

execute scripts from bitcore wallet bin

### TODO

alice.create-wallet.sh
bob.create-wallet.sh
alice.toBob.sh
bob.toAlice.sh

scripts that send docker instructions to run bitcore-wallet scripts
