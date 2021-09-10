require 'rails_helper'

RSpec.describe "ログイン機能", type: :system do
  describe "ログイン、ログアウト" do
    let(:user){create(:user)}
    context "入力が正常である場合" do
      it "ログイン出来ること" do
        visit root_path
        expect(current_path).to eq root_path
        click_button "ログイン"
        expect(current_path).to eq root_path
      end
    end
  end
end