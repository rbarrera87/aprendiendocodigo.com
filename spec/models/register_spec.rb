require 'rails_helper'

RSpec.describe Register, :type => :model do
  it { should validate_presence_of :email }
  it { should validate_presence_of :name }
  it { should allow_value(Faker::Internet.email).for :email }
  it { should_not allow_value(Faker::Lorem.word).for :email }
  it { should validate_uniqueness_of :email }
  #cell_phone validation
  it { should allow_value("4152725835").for :cell_phone }
  it { should_not allow_value(Faker::Lorem.word).for :cell_phone }

end
