#!/bin/bash
docker exec bitpay-mongodb-1 mongo --shell --eval "var db=db.getSiblingDB('bitcore'); db.state.drop(); quit();"
