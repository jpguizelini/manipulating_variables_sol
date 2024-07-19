// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Contratovariaveis {
    // Declaração de variáveis globais
    uint8 public maxPermit = 255;
    uint8 public testLimit;
    int256 public negativo = -1;
    uint256 public numero;
    int256 public numeroNegativo;

    bool public permissao;
    address public contaRegistrada;
    string public nome;
    bytes public Meusbytes;

    // Função para inserir o valor máximo uint na variável
    function inseriMaxuint(uint8 _numero) external {
        testLimit = _numero;
    }

    // Função para inserir um número
    function inserirNumero(uint256 _numero) external {
        numero = _numero;
    }

    // Função que retorna a soma de números negativos
    function testNegativo(int256 _numero) external view returns (int256) {
        int256 NumNegativo = _numero;
        int256 somaDosNegativos = negativo - NumNegativo;
        return somaDosNegativos;
    }

    // Função para mudar a permissão
    function mudarpermissao(bool _trueouFalse) external {
        permissao = _trueouFalse;
    }

    // Função para registrar um endereço
    function RegistrarEndereco(address _endereco) external {
        contaRegistrada = _endereco;
    }

    // Função para registrar o endereço do remetente com um nome
    function registrarmeuendereco(string memory _meunome) external {
        contaRegistrada = msg.sender;
        nome = _meunome;
    }

    // Função para armazenar dados em bytes
    function armazenarDados(bytes memory _dados) public {
        Meusbytes = _dados;
    }

    // Função para converter string em bytes32
    function convertStringBytes(string memory _minhafrase) external pure returns (bytes32) {
        bytes32 minhafrase = bytes32(bytes(_minhafrase));
        return minhafrase;
    }

    // Função para obter o tamanho dos dados armazenados
    function obterTamanhoDados() public view returns (uint256) {
        return Meusbytes.length;
    }    
}
