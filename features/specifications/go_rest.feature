#language: pt

@gorest
Funcionalidade: Consultar usuários

Cenário: Consultar todos os usuários
Dado o endereço da API para consultar usuários
Quando realizar uma requisição para obter todos os usuários
Então a API irá retornar os dados de todos os usuários cadastrados respondendo código 200

#Cenário: Consultar posts de um usuário
#Dado o endereço da API para consultar posts de usuários
#Quando realizar uma requisição passando o ID do usuário
#Então a API deve retornar os dados dos posts do usuário informado respondendo código 200

Cenário: Consultar usuários por nome
Dado o endereço da API para consultar usuários
Quando realizar a requisição passando Nome do usuário
Então a API deve retornar os dados dos usuários correspondentes respondendo código 200