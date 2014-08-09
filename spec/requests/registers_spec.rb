require 'rails_helper'

RSpec.describe "Registers", :type => :request do
  describe "GET /registers" do
    it "works! (now write some real specs)" do
      get registers_path
      expect(response.status).to be(200)
    end
  end
end
