class Delivery < ApplicationRecord
  belongs_to :recycler
  belongs_to :material
  
  validates :delivery_date, presence: true
  validates :quantity, presence: true
end
