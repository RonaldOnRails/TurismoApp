json.array!(@servico_passeios) do |servico_passeio|
  json.extract! servico_passeio, :dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :descPasseio, :precoTotal, :internacional, :status
  json.url servico_passeio_url(servico_passeio, format: :json)
end