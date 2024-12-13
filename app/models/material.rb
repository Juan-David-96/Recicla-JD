class Material < ApplicationRecord
  belongs_to :recycler
  belongs_to :material_type

  validates :delivery_date, presence: true
  validates :description, presence: true
end
