class CreatePessoaJuridicas < ActiveRecord::Migration
  def change
    create_table :pessoa_juridicas do |t|
      t.string :nome
      t.string :cnpj
      t.string :email
      t.string :nomeResp
      t.string :cargo
      t.string :cpf
      t.string :telefone
      t.text :observacao
      t.boolean :recebe_email
      t.integer :nroCompra
       t.column :status, :enum, :limit => [:Ativo, :Inativo, :Desativado, :Cancelado], :default => :Ativo

      t.timestamps
    end
  end
end
