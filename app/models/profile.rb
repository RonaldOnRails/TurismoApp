class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :endereco, :dependent => :destroy
  
  
  accepts_nested_attributes_for :endereco
   
  attr_accessible :user_id, :endereco_attributes, :nome, :cpf, :dataNasc, :sexo, :tel, :rg

end
