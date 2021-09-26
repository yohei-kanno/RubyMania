require 'rails_helper'

RSpec.describe "クイズ機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    
    before do
      login_as(user)
    end
    
    context "stringの問題を選択した場合" do
      before do
        start_questions(1)
      end
      
      it "stringの問題が表示されている事" do
        expect(page).to have_content("String(文字列)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "integerの問題を選択した場合" do
      before do
        start_questions(2)
      end
      
      it "integerの問題が表示されている事" do
        expect(page).to have_content("Integer(数値)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end

      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
      
    context "arrayの問題を選択した場合" do
      before do
        start_questions(3)
      end
      
      it "arrayの問題が表示されている事" do
        expect(page).to have_content("Array(配列)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end

      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
     
    context "hashの問題を選択した場合" do
      before do
        start_questions(4)
      end
      
      it "hashの問題が表示されている事" do
        expect(page).to have_content("Hash(ハッシュ)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "基礎編総合の問題を選択した場合" do
      before do
        start_questions(5)
      end
      
      it "基礎編総合の問題が表示されている事" do
        expect(page).to have_content("基礎編総合問題編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "応用編の問題を選択した場合" do
      before do
        start_questions(6)
      end
      
      it "応用編の問題が表示されている事" do
        expect(page).to have_content("オブジェクト指向編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "正規表現の問題を選択した場合" do
      before do
        start_questions(7)
      end
      
      it "正規表現の問題が表示されている事" do
        expect(page).to have_content("Regexp(正規表現)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
  end
  
  describe "ログインしていない場合" do
    context "stringの問題を選択した場合" do
      before do
        start_questions(1)
      end
      
      it "stringの問題が表示されている事" do
        expect(page).to have_content("String(文字列)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "integerの問題を選択した場合" do
      before do
        start_questions(2)
      end
      
      it "integerの問題が表示されている事" do
        expect(page).to have_content("Integer(数値)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end

      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
      
    context "arrayの問題を選択した場合" do
      before do
        start_questions(3)
      end
      
      it "arrayの問題が表示されている事" do
        expect(page).to have_content("Array(配列)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end

      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
     
    context "hashの問題を選択した場合" do
      before do
        start_questions(4)
      end
      
      it "hashの問題が表示されている事" do
        expect(page).to have_content("Hash(ハッシュ)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "基礎編総合の問題を選択した場合" do
      before do
        start_questions(5)
      end
      
      it "基礎編総合の問題が表示されている事" do
        expect(page).to have_content("基礎編総合問題編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "応用編の問題を選択した場合" do
      before do
        start_questions(6)
      end
      
      it "応用編の問題が表示されている事" do
        expect(page).to have_content("オブジェクト指向編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "正規表現の問題を選択した場合" do
      before do
        start_questions(7)
      end
      
      it "正規表現の問題が表示されている事" do
        expect(page).to have_content("Regexp(正規表現)編")
        expect(page).to have_selector(".question-title")
        expect(page).to have_selector(".question-content")
        expect(page).to have_selector(".choice-content-hover")
      end
      
      it "問題が10問ある事" do
        expect(all('.question-form').count).to eq(10)
      end
      
      it "選択肢が合計40個あること" do
        expect(all('.choice-content-hover').count).to eq(40)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
  end
end
      
        