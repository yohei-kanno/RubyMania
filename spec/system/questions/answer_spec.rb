require 'rails_helper'

RSpec.describe "回答機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    
    it_behaves_like "Answer_will_be_asked_context", "String(文字列)",   10, 1
    it_behaves_like "Answer_will_be_asked_context", "Numeric(数値)",    10, 2
    
    # context "string(文字列)の問題を回答した場合" do
    #   before do
    #     start_questions_include_choose(category_num: 1, random_num: 10)
    #     page.accept_confirm do
    #       click_on "回答する"
    #     end
    #   end
    #   it_behaves_like "Answer_will_be_asked_examples", "String(文字列)", 10
    # end

    context "Numeric(数値)の問題を回答した場合" do
      before do
        start_questions_include_choose(category_num: 2, random_num: 10)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      it_behaves_like "Answer_will_be_asked_examples", "Numeric(数値)", 10
    end

    context "Array(配列)問題を回答した場合" do
      before do
        start_questions_include_choose(category_num: 3, random_num: 10)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      it_behaves_like "Answer_will_be_asked_examples", "Array(配列)", 10
    end

    context "Hash(ハッシュ)の問題を回答した場合", focus: true do
      before do
        start_questions_include_choose(category_num: 4, random_num: 10)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      it_behaves_like "Answer_will_be_asked_examples", "Hash(ハッシュ)", 10
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
    
      
  
    
        
