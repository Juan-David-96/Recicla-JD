class CreateRecyclers < ActiveRecord::Migration[7.2]
  def change
    create_table :recyclers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
