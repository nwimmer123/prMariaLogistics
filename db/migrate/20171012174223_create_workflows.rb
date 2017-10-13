class CreateWorkflows < ActiveRecord::Migration[5.1]
  def change
    create_table :workflows do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five
      t.string :six
      t.string :seven
      t.string :eight
      t.string :nine
      t.string :ten
      t.string :elen
      t.string :twelve
      t.string :thirteeen
      t.string :fourteen
      t.string :fifteen
      t.string :step
      t.references :cargos, foreign_key: true
      t.references :transports, foreign_key: true
      t.references :warehouses, foreign_key: true

      t.timestamps
    end
  end
end
