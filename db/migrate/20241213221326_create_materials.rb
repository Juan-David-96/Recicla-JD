class CreateMaterials < ActiveRecord::Migration[7.2]
  def change
    create_table :materials do |t|
      t.references :recycler, null: false, foreign_key: true
      t.references :material_type, null: false, foreign_key: true
      t.date :delivery_date

      t.timestamps
    end
  end
end
