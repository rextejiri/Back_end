class CreateCar < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :type
      t.string :model
      t.integer :manufacturer_id
      t.timestamps
    end
  end
end
