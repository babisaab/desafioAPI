Dado('o endereço da API para consultar usuários') do
  end
  
  Quando('realizar a requisição passando o nome do usuário') do
    $response = @startup.getNameUser($name)
  end
  
  Então('a API deve retornar os dados dos usuários correspondentes respondendo código {int}') do |int|
    expect($response.code).to eq(int)
    puts "Response Code: #{$response.code}"
    expect($response.message).to eq('OK')
    puts "Response Message: #{$response.message}"

    expect($response.name).to include(@name)
    puts "Nome: : #{$response["name"]}"
  end
  
  Quando('realizar uma requisição para obter todos os usuários') do
    $response = @startup.getUser
  end
  
  Então('a API irá retornar os dados de todos os usuários cadastrados respondendo código {int}') do |int|
    expect($response.code).to eq(int)
    puts "Response Code: #{$response.code}"
    expect($response.message).to eq('OK')
    puts "Response Message: #{$response.message}"
    
    $id = $response['id']
  
 end
  
  Dado('o endereço da API para consultar posts de um usuário') do
  end
  
  Quando('realizar uma requisição passando o ID do usuário') do
    $response = @startup.getPosts($id)
  end
  
  Então('a API deve retornar os dados dos posts do usuário informado respondendo código {int}') do |int|
    expect($response.code).to eq(int)
    puts "Response Code: #{$response.code}"
    expect($response.message).to eq('OK')
    puts "Response Message: #{$response.message}"
  end