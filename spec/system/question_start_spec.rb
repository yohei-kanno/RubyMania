require 'rails_helper'

RSpec.describe "クイズ機能", type: :system do
  describe "ログインしていない場合" do
    before do
      start_string_questions
    end
    
    context "stringの問題を選択した場合" do
      it "stringの問題が表示されている事" do
        expect(page).to have_content("String(文字列)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問並んでいること" do
        expect(page.all('.question-content').count).to eq 10
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
    end
  end
end
        