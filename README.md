# desafioAPI

## Desafio Automação API:

O desafio consiste em automatizar três cenários para a API GO Rest: https://gorest.co.in/

- Cenário 1: Buscar todos os usuários, e armazenar o id do primeiro usuário retornado. 
- Cenário 2: Buscar os posts informando como parâmetro o id armazenado no primeiro cenário.
- Cenário 3: Buscar usuários informando o parâmetro ?name="Naik", e validar o retorno.
 

Validações realizadas: 

                       - Status Code: 200					   
					   - Mensagem do Status Code: OK					   
					   - Validar se o responseBody contém os dados de acordo com cada contexto. 

A automação em Ruby + HTTParty + Cucumber está incompleta em relação as validações e padrão Page Objects.  
No postman todas as validações foram realizadas em uma collection, Go Rest - Desafio.