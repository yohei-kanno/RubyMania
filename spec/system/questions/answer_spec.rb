require 'rails_helper'

RSpec.describe "回答機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    
    before do
      login_as(user)
      user.experience_point = 100
      user.save!
    end
    
    context "stringの問題を回答した場合" do
      before do
        start_questions(1)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]String(文字列)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("String(文字列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Integerの問題を回答した場合" do
      before do
        start_questions(2)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Integer(数値)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Integer(数値)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Arrayの問題を回答した場合" do
      before do
        start_questions(3)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Array(配列)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Array(配列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Hashの問題を回答した場合" do
      before do
        start_questions(4)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Hash(ハッシュ)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Hash(ハッシュ)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "基礎編総合問題を回答した場合" do
      before do
        start_questions(5)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]基礎編総合問題編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("基礎編総合問題編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "オブジェクト指向編を回答した場合" do
      before do
        start_questions(6)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("[回答]オブジェクト指向編") 
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("オブジェクト指向編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "正規表現の問題を回答した場合" do
      before do
        start_questions(7)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Regexp(正規表現)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Regexp(正規表現)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
  end
  
  describe "ログインしていない場合" do
    context "stringの問題を回答した場合" do
      
      before do
        start_questions(1)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]String(文字列)編") 
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("String(文字列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Integerの問題を回答した場合" do
      before do
        start_questions(2)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Integer(数値)編") 
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Integer(数値)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Arrayの問題を回答した場合" do
      before do
        start_questions(3)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Array(配列)編") 
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Array(配列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Hashの問題を回答した場合" do
      before do
        start_questions(4)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Hash(ハッシュ)編")  
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Hash(ハッシュ)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "基礎編総合問題を回答した場合" do
      before do
        start_questions(5)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]基礎編総合問題編")   
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("基礎編総合問題編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "オブジェクト指向編を回答した場合" do
      before do
        start_questions(6)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]オブジェクト指向編")    
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("オブジェクト指向編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "正規表現の問題を回答した場合" do
      before do
        start_questions(7)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector("#your-point")
        expect(page).to have_content("[回答]Regexp(正規表現)編")     
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "もう一度やる"
        click_link "もう一度やる", match: :first
        expect(page).to have_content("Regexp(正規表現)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "トップページへ"
        click_link "トップページへ", match: :first
        expect(page).to have_current_path root_path
      end
    end
  end
end
    
      
  
    
        