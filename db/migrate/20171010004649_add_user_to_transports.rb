class AddUserToTransports < ActiveRecord::Migration[5.1]
  def change
    add_reference :transports, :user, foreign_key: true
  end
end
