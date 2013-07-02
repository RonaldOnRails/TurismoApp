class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.integer :pessoa_fisica_id
      t.integer :pessoa_juridica_id
      t.references :user
      t.integer :services_id
      t.integer :services_type
      t.boolean :tipo_cliente
      t.datetime :data_venda
      t.integer :forma_pagamento
      t.integer :status
      t.float :valor_total

      t.timestamps
    end
  end
end
