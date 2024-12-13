require 'rails_helper'

RSpec.describe "recyclers/new", type: :view do
  before(:each) do
    assign(:recycler, Recycler.new(
      name: "MyString",
      phone: "MyString",
      address: "MyString",
      email: "MyString"
    ))
  end

  it "renders new recycler form" do
    render

    assert_select "form[action=?][method=?]", recyclers_path, "post" do

      assert_select "input[name=?]", "recycler[name]"

      assert_select "input[name=?]", "recycler[phone]"

      assert_select "input[name=?]", "recycler[address]"

      assert_select "input[name=?]", "recycler[email]"
    end
  end
end
