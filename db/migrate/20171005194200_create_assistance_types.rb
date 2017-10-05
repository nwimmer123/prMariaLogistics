class CreateAssistanceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :assistance_types do |t|
      t.string :volunteer
      t.string :air_transport
      t.string :land_transport
      t.string :cargo
      t.string :money
      t.string :warehouse
      t.string :medivac

      t.timestamps
    end
  end
end
