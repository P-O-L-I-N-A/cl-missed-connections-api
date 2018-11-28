class CreateAttrs < ActiveRecord::Migration[5.2]
  def change
    create_table :attrs do |t|
      t.string :hair
      t.string :clothes
      t.string :gender
      t.string :car
      t.string :location

      t.timestamps
    end
  end
end
