#language: pt

Funcionalidade: Configuração de produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o cliente está na página de configuração do produto

Cenário: Selecionar produto com dados obrigatórios
Quando selecionar a cor "Azul", o selecionar o tamanho "M", e informar a quantidade "2"
Então o produto deve estar apto para ser adicionado ao carrinho

Cenário: Não permitir configuração sem campos obrigatórios
Quando não selecionar a cor, e o tamanho, ou não informar a quantidade
Então o sistema deve exibir uma mensagem informando que os campos são obrigatórios

Cenário: Limite máximo de produtos por venda
Quando informar a quantidade "11"
Então o sistema deve exibir uma mensagem informando que o limite máximo é de 10 produtos

Cenário: Limpar configurações do produto
Quando selecionar a cor "Preto", o selecionar o tamanho "G", e informar a quantidade "3"
E clicar no botão "Limpar"
Então todos os campos devem retornar ao estado original
