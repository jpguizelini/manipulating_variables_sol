## Contrato de Variáveis em Solidity

Este repositório contém um contrato inteligente escrito em Solidity com o objetivo de estudar e entender a manipulação de variáveis na linguagem Solidity. O contrato inclui exemplos de variáveis globais, funções para definir e modificar valores, e funções para retornar resultados baseados em operações com essas variáveis.

### Descrição do Contrato

O contrato `Contratovariaveis` demonstra o uso de diferentes tipos de variáveis, como `uint8`, `int256`, `bool`, `address`, `string`, e `bytes`. Ele inclui várias funções para manipulação dessas variáveis.


### Objetivo

O objetivo deste contrato é servir como um exemplo prático para entender a manipulação de variáveis em Solidity e a criação de funções para trabalhar com essas variáveis.


### Uso

Para utilizar este contrato, compile-o e implante-o em uma rede de teste Ethereum usando um ambiente de desenvolvimento, recomendo o Remix. As funções podem ser chamadas para observar como as variáveis são manipuladas e armazenadas.

---

**Aqui estão as explicações simples sobre cada um dos tipos de variáveis, das variáveis usadas e das funções usados no contrato Solidity:**

##

**Tipos das Variáveis:**

- **uint8**: Armazena números inteiros ==positivos== de 8 bits. De: 0  a 2^8 -1 (255)
  
- **uint16**: Armazena números inteiros ==positivos== de 16 bits. De: 0  a  2^16 -1 (65535).

- **int256**: Armazena números inteiros com sinal de 256 bits. De: -2^255  a  2^255-1.

- **uint256**: Armazena números inteiros ==positivos== de 256 bits. De: 0  a  2^256-1.

- **bool**: Armazena valores booleanos (`true` ou `false`).

- **address**: Armazena endereços Ethereum (160 bits). Utilizado para identificar contas ou contratos.

- **string**: Armazena uma sequência de caracteres.

- **bytes**: Armazena qualquer tipo de  dados binários de comprimento variável.

##

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