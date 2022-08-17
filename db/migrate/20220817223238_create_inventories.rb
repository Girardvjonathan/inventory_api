class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.references :item, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
