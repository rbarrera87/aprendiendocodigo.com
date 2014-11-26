FactoryGirl.define do
  factory :course do
    name Faker::Lorem.word
    description Faker::Lorem.word
    image_url Faker::Lorem.word
  end

end
