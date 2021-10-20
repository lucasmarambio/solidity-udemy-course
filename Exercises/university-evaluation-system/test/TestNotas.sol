pragma solidity >= 0.4.25 < 0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Notas.sol";

contract TestNotas {
    function testInitialBalanceUsingDeployedContract() public {
        Notas notas = Notas(DeployedAddresses.Notas());

        string[] memory expected;

// TODO
        Assert.equal(uint256(1), uint256(1), "test msg");
    }
}