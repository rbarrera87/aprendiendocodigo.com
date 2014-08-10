require 'rails_helper'

RSpec.describe "registers/edit", :type => :view do
  before(:each) do
    @register = assign(:register, Register.create!(
      :name => "MyString",
      :email => Faker::Internet.email,
      :cell_phone => "4152725835"
    ))
  end

  it "renders the edit register form" do
    render

    assert_select "form[action=?][method=?]", register_path(@register), "post" do

      assert_select "input#register_name[name=?]", "register[name]"

      assert_select "input#register_email[name=?]", "register[email]"

      assert_select "input#register_cell_phone[name=?]", "register[cell_phone]"
    end
  end
end
