## Contrato de Manipulação de Variáveis em Solidity

Este repositório contém um contrato inteligente escrito em Solidity com o objetivo de estudar e entender a manipulação de variáveis na linguagem Solidity. O contrato inclui exemplos de variáveis globais, funções para definir e modificar valores, e funções para retornar resultados baseados em operações com essas variáveis.

### Descrição do Contrato

O contrato `Contratovariaveis` demonstra o uso de diferentes tipos de variáveis, como `uint8`, `int256`, `bool`, `address`, `string`, e `bytes`. Ele inclui várias funções para manipulação dessas variáveis.


### Objetivo

O objetivo deste contrato é servir como um exemplo prático para entender a manipulação de variáveis em Solidity e a criação de funções para trabalhar com essas variáveis.


### Uso

Para utilizar este contrato, compile-o e implante-o em uma rede de teste Ethereum usando um ambiente de desenvolvimento, recomendo o Remix. As funções podem ser chamadas para observar como as variáveis são manipuladas e armazenadas.



### Aqui estão as explicações simples sobre cada um dos tipos de variáveis, das variáveis usadas e das funções usados no contrato Solidity:



**Tipos das Variáveis:**

- **uint8**: Armazena números inteiros ==positivos== de 8 bits. De: 0  a 2^8 -1 (255)
  
- **uint16**: Armazena números inteiros ==positivos== de 16 bits. De: 0  a  2^16 -1 (65535).

- **int256**: Armazena números inteiros com sinal de 256 bits. De: -2^255  a  2^255-1.

- **uint256**: Armazena números inteiros ==positivos== de 256 bits. De: 0  a  2^256-1.

- **bool**: Armazena valores booleanos (`true` ou `false`).

- **address**: Armazena endereços Ethereum (160 bits). Utilizado para identificar contas ou contratos.

- **string**: Armazena uma sequência de caracteres.

- **bytes**: Armazena qualquer tipo de  dados binários de comprimento variável.



**Variáveis:**

- **maxPermit:** Define um limite máximo para valores permitidos, inicialmente configurado para 255. Essa variável é declarada como pública e pode ser utilizada para fins de demonstração de limites de variáveis uint8.
- **testLimit:** Armazena um valor inteiro de 8 bits para fins de teste. Essa variável pode ser útil para testar funções ou para realizar cálculos simples.
- **negativo:** Armazena um valor inteiro negativo (-1) que pode ser utilizado em operações matemáticas ou como referência para comparações.
- **numero:** Armazena um número inteiro de 256 bits.
- **numeroNegativo:**   Com ela podemos ver que o int nao armazena números negativos.
- **permissao:** Variável booleana que controla a permissão para realizar determinadas ações no contrato. O valor inicial sempre é `false`, indicando que a permissão está desativada por padrão.
- **contaRegistrada:** Armazena o endereço da conta Ethereum que está registrada no contrato. Essa informação pode ser utilizada para identificar o usuário ou para associar ações a uma conta específica.
- **nome:** Armazena o nome do usuário registrado no contrato, permitindo a personalização da experiência.
- **Meusbytes:** Array de bytes para armazenar dados binários de forma segura e eficiente na blockchain. Essa variável pode ser utilizada para guardar diversos tipos de informações, como imagens, documentos ou outros arquivos.

**Funções:**

- **inseriMaxuint(uint8 _numero):** Permite definir um novo valor para `testLimit`, ajustando um valor de teste no contrato.
- **inserirNumero(uint256 _numero):** Define um novo valor para a variável `numero`, armazenando um número inteiro de 256 bits(o que não é possível por ser uint8).
- **testNegativo(int256 _numero):** Função `view` que recebe um número inteiro negativo como parâmetro (`_numero`) e retorna a subtração desse valor com o valor constante `negativo`. Essa função pode ser utilizada para realizar cálculos matemáticos com números negativos.
- **mudarpermissao(bool _trueouFalse):** Permite ativar ou desativar a permissão (`permissao`), controlando o acesso a funcionalidades do contrato.
- **RegistrarEndereco(address _endereco):** Registra um novo endereço de conta Ethereum no contrato, associando-o à variável `contaRegistrada`.
- **registrarmeuendereco(string memory _meunome):** Registra o endereço do remetente da transação (`msg.sender`) na variável `contaRegistrada` e define o nome do usuário na variável `nome`. Essa função facilita o registro de usuários no contrato.
- **armazenarDados(bytes memory _dados):** Armazena um array de bytes (`_dados`) na variável `Meusbytes`, permitindo o armazenamento seguro de dados binários na blockchain.
- **convertStringBytes(string memory _minhafrase):** Função `pure` que converte uma string em um valor `bytes32`, útil para trabalhar com strings na blockchain.
- **obterTamanhoDados():** Função `view` que retorna o tamanho do array `Meusbytes`, informando a quantidade de bytes armazenados.


---


### Variable Manipulation in Solidity Contract

This repository contains a smart contract written in Solidity with the aim of studying and understanding variable manipulation in the Solidity language. The contract includes examples of global variables, functions to set and modify values, and functions to return results based on operations with these variables.

### Contract Description

The `VariableContract` demonstrates the use of different types of variables, such as `uint8`, `int256`, `bool`, `address`, `string`, and `bytes`. It includes various functions to manipulate these variables.

### Objective

The objective of this contract is to serve as a practical example to understand variable manipulation in Solidity and the creation of functions to work with these variables.

### Usage

To use this contract, compile and deploy it on an Ethereum test network using a development environment, I recommend Remix. Functions can be called to observe how variables are manipulated and stored.



### Here are simple explanations of each type of variable, the variables used, and the functions used in the Solidity contract:

##

**Variable Types:**

- **uint8**: Stores 8-bit unsigned integers, ranging from 0 to 2^8 -1 (255).

- **uint16**: Stores 16-bit unsigned integers, ranging from 0 to 2^16 -1 (65535).

- **int256**: Stores 256-bit signed integers, ranging from -2^255 to 2^255-1.

- **uint256**: Stores 256-bit unsigned integers, ranging from 0 to 2^256-1.

- **bool**: Stores boolean values (`true` or `false`).

- **address**: Stores Ethereum addresses (160 bits). Used to identify accounts or contracts.

- **string**: Stores a sequence of characters.

- **bytes**: Stores any type of variable-length binary data.



**Variables:**

- **maxPermit:** Sets a maximum limit for allowed values, initially set to 255. This variable is declared as public and can be used for demonstration purposes of uint8 variable limits.
- **testLimit:** Stores an 8-bit integer value for testing purposes. This variable can be useful for testing functions or performing simple calculations.
- **negative:** Stores a negative integer value (-1) that can be used in mathematical operations or as a reference for comparisons.
- **number:** Stores a 256-bit integer value.
- **negativeNumber:** Allows us to see that `int` does not store negative numbers.
- **permission:** A boolean variable that controls the permission to perform certain actions in the contract. The initial value is always `false`, indicating that the permission is disabled by default.
- **registeredAccount:** Stores the Ethereum account address registered in the contract. This information can be used to identify the user or associate actions with a specific account.
- **name:** Stores the name of the user registered in the contract, allowing for a personalized experience.
- **myBytes:** Byte array to securely and efficiently store binary data on the blockchain. This variable can be used to store various types of information, such as images, documents, or other files.

**Functions:**

- **insertMaxUint(uint8 _number):** Allows setting a new value for `testLimit`, adjusting a test value in the contract.
- **insertNumber(uint256 _number):** Sets a new value for the `number` variable, storing a 256-bit integer (which is not possible as it is uint8).
- **testNegative(int256 _number):** A `view` function that takes a negative integer parameter (`_number`) and returns the subtraction of this value from the constant `negative` value. This function can be used to perform mathematical calculations with negative numbers.
- **changePermission(bool _trueOrFalse):** Allows activating or deactivating the permission (`permission`), controlling access to contract functionalities.
- **registerAddress(address _address):** Registers a new Ethereum account address in the contract, associating it with the `registeredAccount` variable.
- **registerMyAddress(string memory _myName):** Registers the sender's transaction address (`msg.sender`) in the `registeredAccount` variable and sets the user's name in the `name` variable. This function facilitates user registration in the contract.
- **storeData(bytes memory _data):** Stores a byte array (`_data`) in the `myBytes` variable, allowing for secure storage of binary data on the blockchain.
- **convertStringBytes(string memory _myPhrase):** A `pure` function that converts a string into a `bytes32` value, useful for working with strings on the blockchain.
- **getDataSize():** A `view` function that returns the size of the `myBytes` array, indicating the number of bytes stored.

