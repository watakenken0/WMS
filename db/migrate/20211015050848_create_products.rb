class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :size
      t.integer :quantity
      t.string :nominal
      t.integer :import_number
      t.integer :export_number

      t.timestamps
    end
  end
end
