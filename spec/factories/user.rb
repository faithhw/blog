FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password '12345678'
  end
end
