require 'rails_helper'

RSpec.describe "ユーザーレコード機能", type: :system do
  describe "ログインしている場合" do
    let(:user) { create(:user) }
    let!(:study_record1) { create(:study_record) }
    let!(:study_record2) { create(:study_record) }
    before do
      login_as(user)
    end

    context "#show" do
      it "プロフィールが確認できること" do
        visit record_path
        expect(page).to have_content("Your record")
      end
    end

    context "#update" do
      it "名前の更新が出来ること" do
        visit edit_record_path
        fill_in "ニックネーム", with: "菅野洋平"
        click_button "更新する"
        expect(page).to have_content("更新しました")
      end

      it "名前が編集出来ないこと" do
        visit edit_record_path
        fill_in "ニックネーム", with: nil
        click_button "更新する"
        expect(page).to have_content("更新出来ませんでした")
      end
    end
  end

  describe "ログインしていない場合" do
    context "#show" do
      it "トップページへリダイレクトされること" do
        visit record_path
        expect(page).to have_content("ログインして下さい")
        expect(page).to have_current_path root_path
      end
    end
  end
end
