pragma solidity >=0.4.4 <0.7.0;

contract Causas_Beneficas{
    struct Causa{
        uint id;
        string name;
        uint precioObjetivo;
        uint cantidad;
    }

    uint contadorCausas = 0;
    mapping (string => Causa) causas;

    // Creates a new cause
    function crearCausa(string memory _name, uint _precioObjetivo) public payable {
        contadorCausas++;
        causas[_name] = Causa(contadorCausas, _name, _precioObjetivo, 0);
    }

    function _puedoDonar(string memory _name, uint _cantidad) private view returns(bool){
        Causa memory _causa = causas[_name];
        return _causa.precioObjetivo >= (_causa.cantidad + _cantidad);
    }

    // Triggers donation if goal is not exceeded
    function donar(string memory _name, uint _cantidad) public returns(bool){
        if(!_puedoDonar(_name, _cantidad)){
            return false;
        }else {
            causas[_name].cantidad = causas[_name].cantidad + _cantidad;
            return true;
        }
    }

    // Checks causa goal status (achieved, remaining)
    function limiteAlcanzado(string memory _name) public view returns(bool, uint){
        Causa memory _causa = causas[_name];
        return (_causa.precioObjetivo == _causa.cantidad, _causa.cantidad);
    }
}