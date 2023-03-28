#!/bin/bash

echo "Building base image..."
docker build -t base ./base 

echo "Base image complete. Running parallel builds for Bitcore Node and BWS..."
docker build -t bitcore-wallet-service ./bitcore-wallet-service \
& docker build -t bitcore-node ./bitcore-node

# Wait for both parallel processes to finish before exiting the script
wait

echo "Script complete."
