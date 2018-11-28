class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.string :location
      t.string :gender
      t.string :hair
      t.string :clothes
      t.string :car
      t.text :text

      t.timestamps
    end
  end
end
