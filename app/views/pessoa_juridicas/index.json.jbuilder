json.array!(@pessoa_juridicas) do |pessoa_juridica|
  json.extract! pessoa_juridica, :nome, :cnpj, :email, :nomeResp, :cargo, :cpf, :telefone, :observacao, :recebe_email, :nroCompra, :status
  json.url pessoa_juridica_url(pessoa_juridica, format: :json)
end