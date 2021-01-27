#language: pt

@gorestAPI
Funcionalidade: Consultar usuários

Contexto: Consultas API Go Rest
Dado o endereço da API para consultar usuários

Cenário: Consultar todos os usuários
Quando realizar uma requisição para obter todos os usuários
Então a API irá retornar os dados de todos os usuários cadastrados respondendo código 200

Cenário: Consultar posts de um usuário
Quando realizar uma requisição passando o ID do usuário
Então a API deve retornar os dados dos posts do usuário informado respondendo código 200

Cenário: Consultar usuários por nome
Quando realizar a requisição passando Nome do usuário
Então a API deve retornar os dados dos usuários correspondentes respondendo código 200