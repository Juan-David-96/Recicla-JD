require 'rails_helper'

RSpec.describe "materials/new", type: :view do
  before(:each) do
    assign(:material, Material.new(
      recycler: nil,
      material_type: nil
    ))
  end

  it "renders new material form" do
    render

    assert_select "form[action=?][method=?]", materials_path, "post" do

      assert_select "input[name=?]", "material[recycler_id]"

      assert_select "input[name=?]", "material[material_type_id]"
    end
  end
end
