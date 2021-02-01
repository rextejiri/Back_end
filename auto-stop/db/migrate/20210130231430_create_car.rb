class CreateCar < ActiveRecord::Migration[6.1]
  def change
    create_table "cars", id: :serial do |t|
      t.integer :manufacturer_id
      t.string :type
      t.string :make
      t.string :model
      t.integer :year
      t.timestamps
    end
  end
end
