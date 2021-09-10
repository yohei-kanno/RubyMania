FactoryBot.define do
  factory :user do
    name { "panda" }
    sequence(:email) { |n| "test#{n}@example.com" }
  end
end
