FactoryBot.define do
  factory :study_record do
    association :user
    category_id { 1 }
    start_time { Time.zone.now }
    score { 50 }
  end
end
