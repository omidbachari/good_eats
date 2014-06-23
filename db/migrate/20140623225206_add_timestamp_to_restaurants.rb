class AddTimestampToRestaurants < ActiveRecord::Migration
  def change
    drop_table :restaurants
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip, null: false
      t.string :description
      t.string :category

      t.timestamps
    end

    25.times do |i|
      restaurant = Restaurant.create(name: "Restaurant #{i}", address: "Address #{i}", city: "City #{i}",state: "State #{i}", zip: "Zip #{i}")
    end
  end
end

