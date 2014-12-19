require 'rails_helper'

RSpec.describe Answer, :type => :model do
  it { should validate_presence_of :answer }
  it { should validate_presence_of :question }
end
