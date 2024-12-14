FactoryBot.define do
  factory :delivery do
    recycler { nil }
    material { nil }
    delivery_date { "2024-12-13" }
    quantity { 1 }
  end
end
