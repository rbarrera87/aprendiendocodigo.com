require 'rails_helper'

RSpec.describe "registers/index", :type => :view do
  before(:each) do
    assign(:registers, [
      Register.create!(
        :name => "Name",
        :email => "Email",
        :cell_phone => "Cell Phone"
      ),
      Register.create!(
        :name => "Name",
        :email => "Email",
        :cell_phone => "Cell Phone"
      )
    ])
  end

  it "renders a list of registers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
  end
end
