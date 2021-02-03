class CreateManufacturer < ActiveRecord::Migration[6.1]
  def change
    create_table :manufacturers do |t|
      t.string :country
      t.string :name
      t.timestamps
    end
  end
end
