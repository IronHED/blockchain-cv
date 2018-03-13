# Project Blockchain CV (Mac-OS)
This project will use a smart contract to store a persons CV, resume information, on a public blockchain.

## Install Instructions
### Geth Installation for MacOS.
Download geth for your platform from https://geth.ethereum.org/downloads/ <br>
This project is using geth version 1.8.2 <br>
Copy the "geth" file within the download zip into the following folder: "/usr/local/bin"

### Run the geth command below.
geth --networkid '15' --datadir ./cvchaindata/ --targetgaslimit '9000000000000' --rpc --rpccorsdomain 'localhost:8545' --mine console
## Verify the geth version.
Welcome to the Geth JavaScript console! <br>
instance: Geth/v1.8.2-stable-b8b9f7f4/darwin-amd64/go1.9.4
### Open a geth console.
Run the command: geth attach /Users/peter/privatenet/cvchaindata/geth.ipc <br>
Welcome to the Geth JavaScript console!

instance: Geth/v1.8.2-stable-b8b9f7f4/darwin-amd64/go1.9.4 <br>
coinbase: 0xbff461b015134424a3712d6f351dc0b41a6ae72f<br>
at block: 725429 (Fri, 09 Mar 2018 08:29:42 EST) <br>
 datadir: /Users/peter/privatenet/cvchaindata<br>
 modules: admin:1.0 debug:1.0 eth:1.0 miner:1.0 net:1.0 personal:1.0 rpc:1.0 txpool:1.0 web3:1.0

## geth CLI commands you will need to use.
personal.newAccount();<br>
personal.unlockAccount(eth.accounts[0]);<br>
eth.accounts<br>
eth.coinbase<br>


## Truffle
Install NodeJS first: https://nodejs.org/en/

Then in the Terminal/PowerShell install Truffle:

npm install -g truffle
