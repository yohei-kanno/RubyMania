require 'rails_helper'

RSpec.describe "クイズ機能", type: :system do
  describe "ログインしていない場合" do
    let(:user){create(:user)}
    context "stringの問題を選択した場合" do
      fit "stringの問題が表示されている事" do
        
        session_params = { params: { email: user.email, password: "password" } }
        post login_path, params: session_params
        visit root_path
        page.accept_confirm do
          click_on "link-1"
        end
        expect(page).to have_content("String(文字列)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
    end
  end
end