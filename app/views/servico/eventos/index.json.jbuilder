json.array!(@servico_eventos) do |servico_evento|
  json.extract! servico_evento, :dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :descEvento, :nomeEvento, :precoConvite, :nroLugares, :precoTotal, :internacional, :status
  json.url servico_evento_url(servico_evento, format: :json)
end