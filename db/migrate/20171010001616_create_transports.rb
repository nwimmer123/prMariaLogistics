class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.string :role
      t.string :range
      t.string :capacity
      t.string :name
      t.string :avaliability
      t.string :funding
      t.string :hub

      t.timestamps
    end
  end
end
