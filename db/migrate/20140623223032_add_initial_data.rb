class AddInitialData < ActiveRecord::Migration
  def change
    25.times do |i|
      restaurant = Restaurant.create(name: "Restaurant #{i}", address: "Address #{i}", city: "City #{i}",state: "State #{i}", zip: "Zip #{i}")
    end
  end
end
