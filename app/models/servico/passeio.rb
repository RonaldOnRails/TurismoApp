class Servico::Passeio < ActiveRecord::Base
  has_many :vendas, :as => :services
  validates_columns :status
   attr_accessible :dataInicio, :dataRetorno,:destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :descPasseio, :precoTotal, :internacional, :status
 end
