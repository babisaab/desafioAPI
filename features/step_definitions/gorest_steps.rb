Dado('o endereço da API para consultar usuários') do
  
end

Quando('realizar uma requisição para obter todos os usuários') do
  $response = HTTParty.get('https://gorest.co.in/public-api/users', 
  headers: {"Authorization: Bearer bearer" => 'b44a76e067b283072754c3f519bf697475532d8549c1bf04ec7d4fb49f02f332'})
end

Então('a API irá retornar os dados de todos os usuários cadastrados respondendo código {int}') do |int|
  expect($response.code).to eq(int)
  puts "Response code #{$response.code}"

  expect($response.message).to eq('OK')
  puts "Response Message: #{$response.message}"

  puts "Response Body: #{$response.body}"

end

  Quando('realizar a requisição passando Nome do usuário') do
    $response = HTTParty.get('https://gorest.co.in/public-api/users?', query: {"name" => "Naik"},
    headers: {"Authorization: Bearer bearer" => 'b44a76e067b283072754c3f519bf697475532d8549c1bf04ec7d4fb49f02f332'})
end
  
  Então('a API deve retornar os dados dos usuários correspondentes respondendo código {int}') do |int|
    expect($response.code).to eq(int)
    puts "Response code #{$response.code}"
  
    expect($response.message).to eq('OK')
    puts "Response Message: #{$response.message}"

    puts "Response Body: #{$response.body}"
end