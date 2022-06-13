pragma solidity ^0.5.0;

contract SendPercentageToAnotherAddress{

    // se os fundos forem recebidos neste contrato, então
    // Pague 1% para o endereço de destino
    address payable target = 0xD5363078e878DEafAD5efa3D65C00D0B120ae3Cc;

    // Função de Fallback para ETH de entrada
    function () payable external{
       
        //Envie 1% para o endereço de destino configurado acima
        target.transfer(msg.value/100);
        
    }
}