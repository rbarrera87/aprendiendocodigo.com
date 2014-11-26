require 'rails_helper'

RSpec.describe Level, :type => :model do
  it { should have_many :videos}
end
