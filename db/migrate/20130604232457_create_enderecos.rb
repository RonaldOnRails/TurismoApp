class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :pais
      t.string :estado
      t.string :cidade
      t.string :endereco
      t.integer :numero
      t.string :complemento
      t.string :bairro
       t.references :pessoa_fisica
      t.references :pessoa_juridica
      t.references :profile
      t.timestamps
    end
    add_index :enderecos, :pessoa_fisica_id
    add_index :enderecos, :pessoa_juridica_id
    add_index :enderecos, :profile_id
  end
end
