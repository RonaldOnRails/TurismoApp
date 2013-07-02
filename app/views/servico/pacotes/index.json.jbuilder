json.array!(@servico_pacotes) do |servico_pacote|
  json.extract! servico_pacote, :dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :nomeHotel, :cnpjHotel, :descHotel, :descQuarto, :precoHotel, :descPacote, :precoPacote, :status
  json.url servico_pacote_url(servico_pacote, format: :json)
end