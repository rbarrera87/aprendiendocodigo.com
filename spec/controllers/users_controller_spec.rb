require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "GET index" do
    before (:each) do
      @user = FactoryGirl.create :user, :admin
      sign_in @user
    end
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

end
