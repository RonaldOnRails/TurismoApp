class PessoaJuridica < ActiveRecord::Base
  has_one :endereco, :dependent => :destroy
  has_many :vendas
  accepts_nested_attributes_for :endereco
 
  attr_accessible :nome, :cnpj,:email,:nomeResp, :cargo, :cpf, :telefone, :observacao, :recebe_email, :status

  attr_accessible :endereco_attributes

  validates_presence_of :nome, message: "Nome da empresa deve ser preenchido"

  validates_presence_of :email, message: "email deve ser preenchido"

  #validates_presence_of :cnpj, :message=>"deve ser preenchido"
  #with_options :allow_blank => true do |v|
  #validates_uniqueness_of :cnpj, :message=>"Ja existe"
  #end

end
