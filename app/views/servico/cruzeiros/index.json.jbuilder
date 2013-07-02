json.array!(@servico_cruzeiros) do |servico_cruzeiro|
  json.extract! servico_cruzeiro, :dataInicio, :dataRetorno, :trajetoria, :localSaida, :nomeNavio, :empresaNavio, :empresaCnpj, :descQuarto, :precoQuarto, :descCruzeiro, :precoTotal, :nroQuartos, :internacional, :status
  json.url servico_cruzeiro_url(servico_cruzeiro, format: :json)
end