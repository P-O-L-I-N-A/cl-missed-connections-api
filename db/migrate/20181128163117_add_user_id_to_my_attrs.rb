class AddUserIdToMyAttrs < ActiveRecord::Migration[5.2]
  def change
    add_reference :my_attrs, :user, foreign_key: true
  end
end
