class PessoaFisica < ActiveRecord::Base
     has_one :endereco, :dependent => :destroy
     has_many :vendas

  accepts_nested_attributes_for :endereco
  
  attr_accessible :endereco_attributes,:cpf, :dataNasc, :email, :facebook, :nome, :nroCompra, :recebe_email, :rg, :sexo, :sobrenome
    validates_columns :sexo
  
  validates_presence_of :nome, message: "deve ser preenchido"
  validates_presence_of :sobrenome, message: "deve ser preenchido"
  validates_uniqueness_of :rg, :message=>"Ja existe"
     
  validates_presence_of :cpf, :message=>"deve ser preenchido"
  with_options :allow_blank => true do |v|
    v.validates_length_of :cpf, :is => 14
    v.validates_uniqueness_of :cpf, :message=>"Ja existe"  
    end

    validates_presence_of :email, :message=>"deve ser preenchido"
    with_options :allow_blank => true do |j|
      j.validates_uniqueness_of :email, :message=>"Ja existe"
    end
  
end
