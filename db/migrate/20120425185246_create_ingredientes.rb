class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
