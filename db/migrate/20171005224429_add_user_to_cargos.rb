class AddUserToCargos < ActiveRecord::Migration[5.1]
  def change
    add_reference :cargos, :user, foreign_key: true
  end
end
