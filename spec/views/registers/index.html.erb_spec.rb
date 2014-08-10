require 'rails_helper'

RSpec.describe "registers/index", :type => :view do
  before(:each) do
    @email = Faker::Internet.email
    assign(:registers, [
      Register.create!(
        :name => "Name",
        :email => @email,
        :cell_phone => "4152725835"
      ),
      Register.create!(
        :name => "Name",
        :email => Faker::Internet.email,
        :cell_phone => "4152725835"
      )
    ])
  end

  it "renders a list of registers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => @email, :count => 1
    assert_select "tr>td", :text => "4152725835".to_s, :count => 2
  end
end
