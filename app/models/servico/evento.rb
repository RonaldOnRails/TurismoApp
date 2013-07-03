class Servico::Evento < ActiveRecord::Base
has_many :vendas, :as => :services
  validates_columns :status
 attr_accessible :dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :descEvento, :nomeEvento, :precoConvite, :nroLugares,:precoTotal, :internacional, :status

end
