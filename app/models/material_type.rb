class MaterialType < ApplicationRecord
    has_many :materials, dependent: :destroy
end
