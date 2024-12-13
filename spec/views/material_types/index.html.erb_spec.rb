require 'rails_helper'

RSpec.describe "material_types/index", type: :view do
  before(:each) do
    assign(:material_types, [
      MaterialType.create!(
        name: "Name"
      ),
      MaterialType.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of material_types" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
