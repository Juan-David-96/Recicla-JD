class Material < ApplicationRecord
  belongs_to :material_type
  has_many :deliveries
  has_many :recyclers, through: :deliveries

  validates :name, presence: true
  validates :description, presence: true
  validates :material_type, presence: true
end

