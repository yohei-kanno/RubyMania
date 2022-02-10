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
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("String(文字列)") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("String(文字列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Numericの問題を回答した場合" do
      before do
        start_questions(2)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Numeric(数値)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Numeric(数値)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Arrayの問題を回答した場合" do
      before do
        start_questions(3)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Array(配列)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Array(配列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Hashの問題を回答した場合" do
      before do
        start_questions(4)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Hash(ハッシュ)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Hash(ハッシュ)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Total(総合問題)を回答した場合" do
      before do
        start_questions(5)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Total(総合問題)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Total(総合問題)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Objectを回答した場合" do
      before do
        start_questions(6)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("Object") 
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Object")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "正規表現の問題を回答した場合" do
      before do
        start_questions(7)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Regexp(正規表現)編") 
        expect(page).to have_selector(".judgment")
        expect(page).to have_content("レベルがアップしました！")
        visit root_path
        expect(user.study_records.count).to eq(1)
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Regexp(正規表現)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
  end
  
  describe "ログインしていない場合" do
    context "stringの問題を回答した場合" do
      
      before do
        start_questions(1)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("String(文字列)編") 
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("String(文字列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Numericの問題を回答した場合" do
      before do
        start_questions(2)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Numeric(数値)編") 
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Numeric(数値)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Arrayの問題を回答した場合" do
      before do
        start_questions(3)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Array(配列)編") 
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Array(配列)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Hashの問題を回答した場合" do
      before do
        start_questions(4)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Hash(ハッシュ)編")  
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Hash(ハッシュ)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
      
    context "Total(総合問題)を回答した場合" do
      before do
        start_questions(5)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Total(総合問題)編")   
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Total(総合問題)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "Objectを回答した場合" do
      before do
        start_questions(6)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Object")    
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Object")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
    
    context "正規表現の問題を回答した場合" do
      before do
        start_questions(7)
        choose_choice
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "正常に回答が表示されていること" do 
        expect(page).to have_selector(".your-point")
        expect(page).to have_content("Regexp(正規表現)編")     
        expect(page).to have_selector(".judgment")
      end
      
      it "もう一度同じカテゴリーの問題が出来ること" do
        expect(page).to have_link "Do it again"
        click_link "Do it again", match: :first
        expect(page).to have_content("Regexp(正規表現)編")
      end
      
      it "トップページに戻れること" do
        expect(page).to have_link "Home"
        click_link "Home", match: :first
        expect(page).to have_current_path root_path
      end
    end
  end
end
    
      
  
    
        