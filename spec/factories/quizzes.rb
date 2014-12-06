FactoryGirl.define do
  factory :quiz do
    name Faker::Lorem.word
    level { FactoryGirl.create :level }
  end

end
