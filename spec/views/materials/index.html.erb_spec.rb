require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        recycler: nil,
        material_type: nil
      ),
      Material.create!(
        recycler: nil,
        material_type: nil
      )
    ])
  end

  it "renders a list of materials" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
