class RemoveDeliveryDateFromMaterials < ActiveRecord::Migration[7.2]
  def change
    remove_column :materials, :delivery_date, :date
  end
end
