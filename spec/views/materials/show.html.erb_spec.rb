require 'rails_helper'

RSpec.describe "materials/show", type: :view do
  before(:each) do
    assign(:material, Material.create!(
      recycler: nil,
      material_type: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
