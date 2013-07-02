class Venda < ActiveRecord::Base

	attr_accessible :tipo_cliente, :data_venda, :forma_pagamento, :status, :valor_total, :services_id, :pessoa_juridica_id, :pessoa_fisica_id

	belongs_to :pessoa_fisica
	belongs_to :pessoa_juridica
	belongs_to :services, :polymorphic => true
	belongs_to :user

	
	#with_options :allow_blank => true do |v|
	#end
end
