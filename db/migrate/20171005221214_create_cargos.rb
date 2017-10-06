class CreateCargos < ActiveRecord::Migration[5.1]
  def change
    create_table :cargos do |t|
      t.string :goods
      t.string :city
      t.string :state
      t.string :quantity
      t.string :weight
      t.string :size

      t.timestamps
    end
  end
end
