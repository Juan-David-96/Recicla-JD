class RemoveRecyclerFromMaterials < ActiveRecord::Migration[7.2]
  def change
    remove_reference :materials, :recycler, null: false, foreign_key: true
  end
end
