from web3 import Web3

w3 = Web3(Web3.HTTPProvider("https://ropsten.infura.io/M1QDKJ5S7583XBFF813PTT2C6X5QHN9ANQ"))

print(w3.eth.blockNumber)
print(w3.eth.getBlock(4210587))


