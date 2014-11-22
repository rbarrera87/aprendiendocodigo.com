FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password Faker::Lorem.characters(10)

    trait :admin do
      after :create do |user|
        user.add_role :admin
      end
    end
  end
end