require 'rails_helper'

RSpec.describe "ログイン機能", type: :system do
  describe "ログイン、ログアウト" do
    context "入力が正常である場合" do
      it "ログイン出来ること" do
        visit root_path
        expect(current_path).to eq root_path
        click_on "Sign in with Github"
        fill_in "login_field", with: ENV["MYADDRESS"]
        fill_in "password", with: ENV["MYPASS"] 
        click_on "Sign in"
        expect(page).to have_content("yohei-kanno")
     end
    end
  end
end