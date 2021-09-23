FactoryBot.define do
  factory :user do
    name { "panda" }
    sequence(:email) { |n| "person#{n}@example.com" }
    password { 'password' }
  end
end
