require 'rails_helper'

RSpec.describe "recyclers/index", type: :view do
  before(:each) do
    assign(:recyclers, [
      Recycler.create!(
        name: "Name",
        phone: "Phone",
        address: "Address",
        email: "Email"
      ),
      Recycler.create!(
        name: "Name",
        phone: "Phone",
        address: "Address",
        email: "Email"
      )
    ])
  end

  it "renders a list of recyclers" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
