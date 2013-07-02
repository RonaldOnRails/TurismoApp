class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nome
      t.string :cpf
      t.datetime :dataNasc
      t.column :sexo, :enum, :limit => [:Masculino, :Feminino], :default => :Masculino
      t.string :tel
      t.string :rg
      t.references :user
      t.timestamps
    end
     add_index :profiles, :user_id
  end
end
