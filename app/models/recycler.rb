class Recycler < ApplicationRecord
    has_many :deliveries, dependent: :destroy
    validates :name, presence: true
    validates :phone, presence: true
    validates :address, presence: true
    validates :email, presence: true
  end
  
