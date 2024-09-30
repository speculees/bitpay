# BitPay Dockerized

## Purpose

This project is a Bitcore regtest sandbox project. It uses Docker containers for easy installation process. After the setup this allows you to send transactions to bitcoin node with hopefully minimal effort.

## Build images

`./build.sh`

## Run containers

`docker-compose up`

## Usage

Go to `localhost:8100`.
This is a bitpay/copay wallet. In it create a new personal wallet. Imagine that this user is Alice. Name it (ex: Alice) and expand advanced options. Select testnet and in wallet service URL set `http://localhost:3232/api/bws`. Continue, and skip password setup. You don't need it for regtest/testnet. Click on the receive button in the footer, and copy the address in a note.

Mount the bitcoin-node-0.
`docker exec -ti bitpay-bitcoin-node-0-1 /bin/bash`

First create a wallet. Imagine this is a second user (Bob).
`bitcoin-cli createwallet bob`
This command should return this
`{
  "name": "bob",
  "warning": ""
}`

Then generate some number of blocks.
`bitcoin-cli -generate 1000`

Once the blocks are generated you can now send them to Alice.
`bitcoin-cli sendtoaddress "insert_address_you_copied_from_alice" 0.1 "drinks" "room77" true true null "unset" null 1.1`
Signature should be returned. After refreshing the Bitpay wallet in `localhost:8100`, notice that Alice now has 0.099999, and not 0.1 BTC. This is because the fee was subtracted from the amount Bob sent to Alice.
