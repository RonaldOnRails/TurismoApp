json.array!(@pessoa_fisicas) do |pessoa_fisica|
  json.extract! pessoa_fisica, :nome, :sobrenome, :dataNasc, :sexo, :telefone, :email, :cpf, :rg, :facebook, :recebe_email, :status, :nroCompra
  json.url pessoa_fisica_url(pessoa_fisica, format: :json)
end