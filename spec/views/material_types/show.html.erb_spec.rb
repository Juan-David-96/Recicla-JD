require 'rails_helper'

RSpec.describe "material_types/show", type: :view do
  before(:each) do
    assign(:material_type, MaterialType.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
