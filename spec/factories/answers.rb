FactoryGirl.define do
  factory :answer do
    answer Faker::Lorem.word
    is_correct true
    question { FactoryGirl.create :question }
  end

end
