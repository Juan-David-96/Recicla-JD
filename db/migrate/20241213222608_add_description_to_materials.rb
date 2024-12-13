class AddDescriptionToMaterials < ActiveRecord::Migration[7.2]
  def change
    add_column :materials, :description, :text
  end
end
