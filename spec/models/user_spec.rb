require 'rails_helper'

RSpec.describe 'User', type: :model do
  it '名前とメールアドレスがあれば有効であること' do
    user = build(:user)
    expect(user).to be_valid
  end

  it "名前がなければ無効であること" do
    user = build(:user, name: nil)
    expect(user).to be_invalid
  end

  it "メールアドレスがなければ無効であること" do
    user = build(:user, email: nil)
    expect(user).to be_invalid
  end

  it "メールアドレスが重複していれば無効であること" do
    user = create(:user)
    another_user = build(:user, email: user.email)
    expect(another_user).to be_invalid
  end

  it "call_methid#point_up!" do
    user = create(:user)
    user.point_up!(50)
    expect(user.experience_point).to eq(50)
  end

  it "call_method#level_up?" do
    user = create(:user)
    user.point_up!(100)
    user.level_up?
    expect(user.level).to eq(2)
  end

  it "call_methid#average_score" do
    user = create(:user)
    study_record_1 = create(:study_record, user: user)
    study_record_2 = create(:study_record, user: user)
    expect(user.average_score(1)).to eq(50)
  end

  it "call_method#dev" do
    user = create(:user)
    another_user = create(:user)
    study_record_1 = create(:study_record, user: user)
    study_record_2 = create(:study_record, user: another_user, score: 40)
    user.send(:category_score, 1)
    expect(user.dev(1)).to eq(60)
  end
end
