class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouses do |t|
      t.string :location
      t.string :funding
      t.string :capacity
      t.string :avaliability
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
