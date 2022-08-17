class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :city

      t.timestamps
    end
    add_index :warehouses, :city, unique: true
  end
end
