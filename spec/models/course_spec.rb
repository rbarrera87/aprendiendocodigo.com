require 'rails_helper'

RSpec.describe Course, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :image_url }
  it { should belong_to :category }
  it { should have_many :videos }
end
