const Keccak = artifacts.require("keccak");

module.exports = function (deployer) {
  deployer.deploy(Keccak);
};
