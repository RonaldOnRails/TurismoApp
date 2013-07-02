class CreateServicoCruzeiros < ActiveRecord::Migration
  def change
    create_table :servico_cruzeiros do |t|
      t.datetime :dataInicio
      t.datetime :dataRetorno
      t.string :trajetoria
      t.string :localSaida
      t.string :nomeNavio
      t.string :empresaNavio
      t.string :empresaCnpj
      t.text :descQuarto
      t.decimal :precoQuarto, :precision => 6, :scale => 4
      t.text :descCruzeiro
      t.decimal :precoTotal, :precision => 6, :scale => 4
      t.integer :nroQuartos
      t.boolean :internacional
       t.column :status, :enum, :limit => [:Ativo, :Inativo, :Andamento, :Parado, :Concluido], :default => :Ativo

      t.timestamps
    end
  end
end
