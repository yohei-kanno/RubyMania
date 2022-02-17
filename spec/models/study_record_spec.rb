require 'rails_helper'

RSpec.describe 'StudyRecord', type: :model do
  it "call_method#create_record_and_point_up!" do
    user = create(:user)
    category = create(:category)
    expect { StudyRecord.create_record_and_point_up!(user, category, 50) }.to change { StudyRecord.count }.from(0).to(1)
  end

  it "call_method#all_user_average_score" do
    study_record = create(:study_record)
    expect(StudyRecord.all_user_average_score(1)).to eq(50)
  end
end
