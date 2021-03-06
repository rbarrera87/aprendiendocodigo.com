require 'rails_helper'

RSpec.describe Video, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :url }
  it { should belong_to :level }
end
