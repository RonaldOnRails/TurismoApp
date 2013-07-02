class CreateServicoPasseios < ActiveRecord::Migration
  def change
    create_table :servico_passeios do |t|
      t.datetime :dataInicio
      t.datetime :dataRetorno
      t.string :destino
      t.string :localSaida
      t.string :nomeTrans
      t.string :veiculo
      t.string :cnpjTrans
     t.decimal :precoTrans, :precision => 6, :scale => 4
      t.text :descPasseio
     t.decimal :precoTotal, :precision => 6, :scale => 4
      t.boolean :internacional
       t.column :status, :enum, :limit => [:Ativo, :Inativo, :Andamento, :Parado, :Concluido], :default => :Ativo

      t.timestamps
    end
  end
end
