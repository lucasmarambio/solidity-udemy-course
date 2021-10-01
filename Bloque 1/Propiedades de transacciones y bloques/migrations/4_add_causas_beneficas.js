const CausasBeneficas = artifacts.require("causas_beneficas.sol");

module.exports = function (deployer) {
  deployer.deploy(CausasBeneficas);
};
