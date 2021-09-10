require 'rails_helper'
describe "Userモデル" do
  context "入力が正常である場合" do
    it "全て入力されていれば有効であること" do
      user = build(:user)
      expect(user).to be_valid
    end
    
    it "デフォルトのレベルは1であること" do
      user = build(:user)
      expect(user.level).to eq(1)
    end
    
    it "デフォルトの経験値は０であること" do
      user = build(:user)
      expect(user.experience_point).to eq(0)
    end
  end
  
  context "入力が異常である場合" do
    it "ニックネームが未入力であれば無効であること" do
      user = build(:user, name: nil)
      expect(user).to_not be_valid
      expect(user.errors[:name]).to include("を入力してください")
    end
    
    it "メールアドレスが未入力であれば無効であること" do
      user = build(:user, email: nil)
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("を入力してください")
    end
    
    it "メールアドレスが重複していれば無効であること" do
      user = create(:user)
      other_user = build(:user, email: user.email)
      expect(other_user).to_not be_valid
      expect(other_user.errors[:email]).to include("はすでに存在します")
    end
    
    it "パスワードが未入力であれば無効であること" do
      user = build(:user, password: nil)
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include("を入力してください")
    end
    
    it "パスワードが6文字未満であれば無効であること" do
      user = build(:user, password: "a" * 5)
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
    
    it "パスワード(確認)が未入力であれば無効であること" do
      user = build(:user, password_confirmation: nil)
      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to include("を入力してください")
    end
    
    it "パスワード(確認)が6文字未満であれば無効であること" do
      user = build(:user, password_confirmation: "a" * 5)
      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to include("は6文字以上で入力してください")
    end
    
    it "利用規約とプライバシーポリシーに同意していなければ無効であること" do
      user = build(:user, agreement: false)
      expect(user).to_not be_valid
      expect(user.errors[:agreement]).to include("に同意してください")
    end
  end
end

      