require "rails_helper"

RSpec.describe "一問一答機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    before do
      login_as(user)
    end

    context "Stringの問題を選択した場合" do
      before do
        start_one_question(1)
      end
        
      it "Stringの問題があること" do
        expect(page).to have_content("String(文字列)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "Integerの問題を選択した場合" do
      before do
        start_one_question(2)
      end
        
      it "Integerの問題があること" do
        expect(page).to have_content("Integer(数値)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "Arrayの問題を選択した場合" do
      before do
        start_one_question(3)
      end
        
      it "Arrayの問題があること" do
        expect(page).to have_content("Array(配列)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "Hashの問題を選択した場合" do
      before do
        start_one_question(4)
      end
        
      it "Hashの問題があること" do
        expect(page).to have_content("Hash(ハッシュ)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "基礎編の問題を選択した場合" do
      before do
        start_one_question(5)
      end
        
      it "基礎編の問題があること" do
        expect(page).to have_content("基礎編総合問題編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "応用編の問題を選択した場合" do
      before do
        start_one_question(6)
      end
        
      it "応用編の問題があること" do
        expect(page).to have_content("オブジェクト指向編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "正規表現の問題を選択した場合" do
      before do
        start_one_question(7)
      end
        
      it "正規表現の問題があること" do
        expect(page).to have_content("Regexp(正規表現)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
  end
  
  describe "ログインしていない場合" do
    context "Stringの問題を選択した場合" do
      before do
        start_one_question(1)
      end
        
      it "Stringの問題があること" do
        expect(page).to have_content("String(文字列)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "Integerの問題を選択した場合" do
      before do
        start_one_question(2)
      end
        
      it "Integerの問題があること" do
        expect(page).to have_content("Integer(数値)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "Arrayの問題を選択した場合" do
      before do
        start_one_question(3)
      end
        
      it "Arrayの問題があること" do
        expect(page).to have_content("Array(配列)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "Hashの問題を選択した場合" do
      before do
        start_one_question(4)
      end
        
      it "Hashの問題があること" do
        expect(page).to have_content("Hash(ハッシュ)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "基礎編の問題を選択した場合" do
      before do
        start_one_question(5)
      end
        
      it "基礎編の問題があること" do
        expect(page).to have_content("基礎編総合問題編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "応用編の問題を選択した場合" do
      before do
        start_one_question(6)
      end
        
      it "応用編の問題があること" do
        expect(page).to have_content("オブジェクト指向編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
    
    context "正規表現の問題を選択した場合" do
      before do
        start_one_question(7)
      end
        
      it "正規表現の問題があること" do
        expect(page).to have_content("Regexp(正規表現)編")
      end
      
      it "問題が1問ある事" do
        expect(all('.question-form').count).to eq(1)
      end
      
      it "選択肢が合計4個あること" do
        expect(all('.choice-content-hover').count).to eq(4)
      end
      
      it "回答ボタンがあること" do
        expect(page).to have_button("回答する")
      end
    end
  end
end
      
    

        