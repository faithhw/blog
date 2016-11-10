FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "Post test for create random title #{n}" }
    sequence(:content) { |n| "Content 123 post 4567 8910 #{n}" }
    user
  end
end
