require 'rails_helper'

RSpec.describe "material_types/new", type: :view do
  before(:each) do
    assign(:material_type, MaterialType.new(
      name: "MyString"
    ))
  end

  it "renders new material_type form" do
    render

    assert_select "form[action=?][method=?]", material_types_path, "post" do

      assert_select "input[name=?]", "material_type[name]"
    end
  end
end
