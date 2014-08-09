require 'rails_helper'

RSpec.describe "registers/new", :type => :view do
  before(:each) do
    assign(:register, Register.new(
      :name => "MyString",
      :email => "MyString",
      :cell_phone => "MyString"
    ))
  end

  it "renders new register form" do
    render

    assert_select "form[action=?][method=?]", registers_path, "post" do

      assert_select "input#register_name[name=?]", "register[name]"

      assert_select "input#register_email[name=?]", "register[email]"

      assert_select "input#register_cell_phone[name=?]", "register[cell_phone]"
    end
  end
end
