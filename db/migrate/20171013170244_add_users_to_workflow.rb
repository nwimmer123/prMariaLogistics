class AddUsersToWorkflow < ActiveRecord::Migration[5.1]
  def change
    add_reference :workflows, :users, foreign_key: true
  end
end
