require 'rails_helper'

RSpec.describe "registers/show", :type => :view do
  before(:each) do
    @register = assign(:register, Register.create!(
      :name => "Name",
      :email => "Email",
      :cell_phone => "Cell Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Cell Phone/)
  end
end
