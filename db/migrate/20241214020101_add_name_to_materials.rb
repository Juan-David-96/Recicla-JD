class AddNameToMaterials < ActiveRecord::Migration[7.2]
  def change
    add_column :materials, :name, :string
  end
end
