require 'rails_helper'

RSpec.describe "recyclers/show", type: :view do
  before(:each) do
    assign(:recycler, Recycler.create!(
      name: "Name",
      phone: "Phone",
      address: "Address",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
  end
end
