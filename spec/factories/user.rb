FactoryBot.define do
  factory :user do
    nickname { "panda" }
    sequence(:email) { |n| "test#{n}@example.com" }
    level { 1 }
    experience_point { 0 }
    password { "foobar" }
    password_confirmation { "foobar" }
    agreement { true }
    after(:create, &:activate!)
  end
end
