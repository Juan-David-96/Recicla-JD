class Recycler < ApplicationRecord
    has_many :deliveries, dependent: :destroy
    has_many :materials, through: :deliveries
    validates :name, presence: true
    validates :phone, presence: true
    validates :address, presence: true
    validates :email, presence: true
  end
  
