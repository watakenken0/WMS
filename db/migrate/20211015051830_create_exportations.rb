class CreateExportations < ActiveRecord::Migration[6.1]
  def change
    create_table :exportations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
