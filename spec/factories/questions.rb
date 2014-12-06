FactoryGirl.define do
  factory :question do
    question Faker::Lorem.word
    quiz { FactoryGirl.create :quiz }
  end

end
