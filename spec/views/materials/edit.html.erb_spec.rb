require 'rails_helper'

RSpec.describe "materials/edit", type: :view do
  let(:material) {
    Material.create!(
      recycler: nil,
      material_type: nil
    )
  }

  before(:each) do
    assign(:material, material)
  end

  it "renders the edit material form" do
    render

    assert_select "form[action=?][method=?]", material_path(material), "post" do

      assert_select "input[name=?]", "material[recycler_id]"

      assert_select "input[name=?]", "material[material_type_id]"
    end
  end
end
