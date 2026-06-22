#language:
Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Esquema do Cenário: Autenticação de usuário
Dado que o cliente está na tela de login
Quando informar o usuário "<usuario>" e a senha "<senha>"
Então o sistema deve exibir "<resultado>"

Exemplos:
| usuario            | senha      | resultado                                      |
| cliente@ebac.com   | 123456     | tela de checkout                               |
| cliente@ebac.com   | senhaErrada| Usuário ou senha inválidos                     |
| usuarioErrado      | 123456     | Usuário ou senha inválidos                     |