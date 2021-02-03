class CreateCar < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string "make"
      t.string "type"
      t.string "model"
      t.integer "manufacturer_id"
      t.integer "price"
      t.string "image"
      t.integer "mileage"
      t.srting "about"
    end
  end
end
