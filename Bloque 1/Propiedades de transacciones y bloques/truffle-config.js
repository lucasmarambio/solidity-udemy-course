var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "";
module.exports = {
 networks: {
  development: {
   host: "127.0.0.1",
   port: 8545,
   network_id: "*"
  },
  rinkeby: {
      provider: function() { 
       return new HDWalletProvider(mnemonic, "");
      },
      network_id: 4,
      gas: 4500000,
      gasPrice: 10000000000,
  }
 }
};