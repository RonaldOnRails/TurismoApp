class Servico::Cruzeiro < ActiveRecord::Base
  has_many :vendas, :as => :services
  attr_accessible :dataInicio, :dataRetorno, :trajetoria, :localSaida, :nomeNavio, :empresaNavio, :empresaCnpj, :descQuarto, :precoQuarto, :descCruzeiro, :internacional, :status
validates_columns :status
end