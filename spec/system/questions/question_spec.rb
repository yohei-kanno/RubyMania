require 'rails_helper'

RSpec.describe "クイズ提供機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    it_behaves_like "Questions_will_be_asked_context", "String(文字列)", 10, 1
    it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)編", 10, 2
    it_behaves_like "Questions_will_be_asked_context", "Array(配列)編", 10, 3
    it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)編", 10,4
    it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)編", 10, 5
    it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)編", 10, 6
    it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)編", 10, 7


    
  #   context "Numeric(数値)の問題を選択した場合" do
  #     include_examples :Questions_will_be_asked, "Numeric(数値)編", 10, 2
  #   end

  #   context "Array(配列)の問題を選択した場合" do
  #     include_examples :Questions_will_be_asked, "Array(配列)編", 10, 3
  #   end

  #   context "Hash(ハッシュ)の問題を選択した場合" do
  #     include_examples :Questions_will_be_asked, "Hash(ハッシュ)編", 10,4
  #   end
    
  #   context "Total(総合問題)の問題を選択した場合" do
  #     include_examples :Questions_will_be_asked, "Total(総合問題)編", 10,5
  #   end

  #   context "Objectの問題を選択した場合" do
  #     include_examples :Questions_will_be_asked, "Object編", 10,6
  #   end

  #   context "Regexp(正規表現)の問題を選択した場合" do
  #     include_examples :Questions_will_be_asked, "Regexp(正規表現)編", 10,7
  #   end
  end
  # describe "ログインしていない場合" do
  #   context "Stringの問題を選択した場合" do
  #     before do
  #       start_questions(1)
  #     end
      
  #     it "Stringの問題が表示されている事" do
  #       expect(page).to have_content("String(文字列)編")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
    
  #   context "Numericの問題を選択した場合" do
  #     before do
  #       start_questions(2)
  #     end
      
  #     it "Numericの問題が表示されている事" do
  #       expect(page).to have_content("Numeric(数値)編")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
      
  #   context "Arrayの問題を選択した場合" do
  #     before do
  #       start_questions(3)
  #     end
      
  #     it "Arrayの問題が表示されている事" do
  #       expect(page).to have_content("Array(配列)編")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
     
  #   context "Hashの問題を選択した場合" do
  #     before do
  #       start_questions(4)
  #     end
      
  #     it "Hashの問題が表示されている事" do
  #       expect(page).to have_content("Hash(ハッシュ)編")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
    
  #   context "Totalの問題を選択した場合" do
  #     before do
  #       start_questions(5)
  #     end
      
  #     it "Totalの問題が表示されている事" do
  #       expect(page).to have_content("Total(総合問題)")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
    
  #   context "Objectの問題を選択した場合" do
  #     before do
  #       start_questions(6)
  #     end
      
  #     it "Objectの問題が表示されている事" do
  #       expect(page).to have_content("Object")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
    
  #   context "Regexpの問題を選択した場合" do
  #     before do
  #       start_questions(7)
  #     end
      
  #     it "Regexpの問題が表示されている事" do
  #       expect(page).to have_content("Regexp(正規表現)編")
  #       expect(page).to have_selector(".question-title")
  #       expect(page).to have_selector(".question-content")
  #       expect(page).to have_selector(".choice-content-hover")
  #       expect(all('.question-form').count).to eq(10)
  #       expect(all('.choice-content-hover').count).to eq(40)
  #       expect(page).to have_button("回答する")
  #     end
  #   end
  # end
end
      
        
