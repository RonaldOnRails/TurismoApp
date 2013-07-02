class Endereco < ActiveRecord::Base
   belongs_to :pessoa_fisica
  belongs_to :pessoa_juridica
  belongs_to :profile
  attr_accessible :profile_id, :pessoa_juridica_id, :pessoa_fisica_id, :bairro, :cep, :cidade, :complemento, :endereco, :estado, :numero, :pais
end
