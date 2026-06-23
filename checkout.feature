#language: pt
Funcionalidade: Cadastro para Checkout

Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que o cliente está na tela de cadastro do checkout

Cenário: Cadastro realizado com sucesso
Quando preencher todos os campos obrigatórios
E informar um e-mail válido
Então o cadastro deve ser concluído com sucesso

Esquema do Cenário: Validação do campo e-mail
Quando preencher todos os campos obrigatórios
E informar o e-mail "<email>"
Então o sistema deve apresentar "<resultado>"

Exemplos:
| email               | resultado                           |
| cliente@ebac.com    | cadastro realizado com sucesso      |
| clienteebac.com     | e-mail inválido                     |
| cliente@            | e-mail inválido                     |
| @ebac.com           | e-mail inválido                     |

Cenário: Tentativa de cadastro com campos obrigatórios vazios
Quando deixar um ou mais campos obrigatórios em branco
E clicar em finalizar cadastro
Então o sistema deve exibir uma mensagem de alerta informando os campos obrigatórios