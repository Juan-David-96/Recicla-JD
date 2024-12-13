require 'rails_helper'

RSpec.describe "recyclers/edit", type: :view do
  let(:recycler) {
    Recycler.create!(
      name: "MyString",
      phone: "MyString",
      address: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:recycler, recycler)
  end

  it "renders the edit recycler form" do
    render

    assert_select "form[action=?][method=?]", recycler_path(recycler), "post" do

      assert_select "input[name=?]", "recycler[name]"

      assert_select "input[name=?]", "recycler[phone]"

      assert_select "input[name=?]", "recycler[address]"

      assert_select "input[name=?]", "recycler[email]"
    end
  end
end
