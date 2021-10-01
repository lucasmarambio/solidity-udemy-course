const FuncionesGlobales = artifacts.require("funciones_globales");

module.exports = function (deployer) {
  deployer.deploy(FuncionesGlobales);
};
