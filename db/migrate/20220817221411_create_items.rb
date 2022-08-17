class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :color
      t.string :size

      add_index :name, :color, :size, unique: true
      t.timestamps
    end
  end
end
