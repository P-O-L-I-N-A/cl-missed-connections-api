class CreateMyAttrs < ActiveRecord::Migration[5.2]
  def change
    create_table :my_attrs do |t|
      t.string :location
      t.string :gender
      t.string :hair
      t.string :clothes
      t.string :car

      t.timestamps
    end
  end
end
