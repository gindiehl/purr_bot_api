class CreateFelines < ActiveRecord::Migration[5.1]
  def change
    create_table :felines do |t|
      t.string :name
      t.integer :age
      t.integer :breed_id
      t.text :coat_color, array: true, default: []

      t.timestamps
    end
  end
end
