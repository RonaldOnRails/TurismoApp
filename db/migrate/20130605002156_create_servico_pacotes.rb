class CreateServicoPacotes < ActiveRecord::Migration
  def change
    create_table :servico_pacotes do |t|
      t.datetime :dataInicio
      t.datetime :dataRetorno
      t.string :destino
      t.string :localSaida
      t.string :nomeTrans
      t.string :veiculo
      t.string :cnpjTrans
     t.decimal :precoTrans, :precision => 6, :scale => 4
      t.string :nomeHotel
      t.string :cnpjHotel
      t.text :descHotel
      t.text :descQuarto
      t.decimal :precoHotel, :precision => 6, :scale => 4
      t.text :descPacote
     t.decimal :precoPacote, :precision => 6, :scale => 4
       t.column :status, :enum, :limit => [:Ativo, :Inativo, :Andamento, :Parado, :Concluido], :default => :Ativo

      t.timestamps
    end
  end
end
