class CreateFridges < ActiveRecord::Migration[5.1]
  def change
    create_table :fridges do |t|
      t.string :brand
      t.string :location
      t.string :size
      t.string :integer
      t.boolean :has_food_in_it
      t.boolean :has_drink_in_it

      t.timestamps
    end
  end
end
