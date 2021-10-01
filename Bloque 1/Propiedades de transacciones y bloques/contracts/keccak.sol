pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Keccak{

    function calcularHash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }

    function calcularHash(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }
}