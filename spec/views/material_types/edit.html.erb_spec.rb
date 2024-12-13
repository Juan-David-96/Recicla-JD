require 'rails_helper'

RSpec.describe "material_types/edit", type: :view do
  let(:material_type) {
    MaterialType.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:material_type, material_type)
  end

  it "renders the edit material_type form" do
    render

    assert_select "form[action=?][method=?]", material_type_path(material_type), "post" do

      assert_select "input[name=?]", "material_type[name]"
    end
  end
end
