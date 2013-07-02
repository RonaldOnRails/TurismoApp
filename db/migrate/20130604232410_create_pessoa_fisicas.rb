class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.string :nome
      t.string :sobrenome
      t.date :dataNasc
     t.column :sexo, :enum, :limit => [:Masculino, :Feminino], :default => :Masculino
      t.string :telefone
      t.string :email
      t.string :cpf
      t.string :rg
      t.string :facebook
      t.boolean :recebe_email
       t.column :status, :enum, :limit => [:Ativo, :Inativo, :Desativado, :Cancelado], :default => :Ativo
      t.integer :nroCompra

      t.timestamps
    end
  end
end
