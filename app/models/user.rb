class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum :role, [:normal_user, :author, :admin]

  has_many_attached :images
  
  validates :name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true

end
