# Project Blockchain CV (Mac-OS)
This project will use a smart contract to store a persons CV, resume information, on a public blockchain.


## Install Instructions
### Geth
Download geth for your platform from https://geth.ethereum.org/downloads/ <br>
I'm usoing the MacOS version current version 

## Geth Mac-OS:
Copy the "geth" file within the download zip into the following folder: "/usr/local/bin"

### Run the geth command below

geth --networkid '15' --datadir ./cvchaindata/ --targetgaslimit '9000000000000' --rpc --rpccorsdomain 'localhost:8545' --mine console

## Verify the geth version

Welcome to the Geth JavaScript console! <br>
instance: Geth/v1.8.2-stable-b8b9f7f4/darwin-amd64/go1.9.4

## Truffle
Install NodeJS first: https://nodejs.org/en/

Then in the Terminal/PowerShell install Truffle:

npm install -g truffle
