class AddUserIsToConnections < ActiveRecord::Migration[5.2]
  def change
    add_reference :connections, :user, foreign_key: true
  end
end
