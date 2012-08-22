class CreateIngredientesProdutos < ActiveRecord::Migration
  def change
    create_table :ingredientes_produtos, :id => false do |t|
      t.integer :ingrediente_id
      t.integer :produto_id
    end
  end
end
