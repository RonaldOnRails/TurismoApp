class Servico::Pacote < ActiveRecord::Base
  has_many :vendas, :as => :services

  validates_columns :status
  attr_accessible  :dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans,:nomeHotel, :cnpjHotel, :descHotel, :descQuarto, :precoHotel, :descPacote, :precoPacote,:status
end
