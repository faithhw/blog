FactoryGirl.define do
  factory :post do
    title 'Test 123 this is the title full of the post'
    sequence(:content) { |n| "Content 123 post 4567 8910 #{n}" }
  end
end
