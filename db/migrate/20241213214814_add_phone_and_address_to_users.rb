class AddPhoneAndAddressToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :address, :string
  end
end
