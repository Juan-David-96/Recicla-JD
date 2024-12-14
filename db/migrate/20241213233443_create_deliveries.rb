class CreateDeliveries < ActiveRecord::Migration[7.2]
  def change
    create_table :deliveries do |t|
      t.references :recycler, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.date :delivery_date
      t.integer :quantity

      t.timestamps
    end
  end
end
