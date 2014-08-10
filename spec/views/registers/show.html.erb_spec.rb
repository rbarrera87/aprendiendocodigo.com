require 'rails_helper'

RSpec.describe "registers/show", :type => :view do
  before(:each) do
    @register = assign(:register, Register.create!(
      :name => "Name",
      :email => Faker::Internet.email,
      :cell_phone => "4152725835"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/4152725835/)
  end
end
