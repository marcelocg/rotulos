class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :codigo
      t.string :sabor
      t.text :observacoes
      t.text :porcao
      t.decimal :peso
      t.integer :calorias
      t.decimal :proteinas
      t.decimal :gorduras_totais
      t.decimal :gorduras_saturadas
      t.decimal :gorduras_trans
      t.decimal :colesterol
      t.decimal :fibra
      t.decimal :sodio
      t.text :orientacoes
      t.integer :validade_ambiente
      t.integer :validade_resfriado
      t.integer :validade_congelado
      t.text :conservacao

      t.timestamps
    end
  end
end
