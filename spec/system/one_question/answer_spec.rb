require 'rails_helper'

RSpec.describe "一問一答回答機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    before do
      login_as(user)
      user.experience_point = 100
      user.save!
    end
    
    context "Stringの問題に回答した場合" do
      before do
        start_one_question(1)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]String(文字列)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
    
    context "Integerの問題に回答した場合" do
      before do
        start_one_question(2)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Integer(数値)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
    
    context "Arrayの問題に回答した場合" do
      before do
        start_one_question(3)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Array(配列)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
    
    context "Hashの問題に回答した場合" do
      before do
        start_one_question(4)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Hash(ハッシュ)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
    
    context "基礎編総合の問題に回答した場合" do
      before do
        start_one_question(5)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]基礎編総合問題編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
    
    context "応用編の問題に回答した場合" do
      before do
        start_one_question(6)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]オブジェクト指向編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
    
    context "正規表現の問題に回答した場合" do
      before do
        start_one_question(7)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Regexp(正規表現)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
      
      it "レベルアップが機能していること" do
        expect(page).to have_content("レベルがアップしました！")
      end
    end
  end
  
  describe "ログインしていない場合" do
    context "Stringの問題に回答した場合" do
      before do
        start_one_question(1)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]String(文字列)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
    
    context "Integerの問題に回答した場合" do
      before do
        start_one_question(2)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Integer(数値)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
    
    context "Arrayの問題に回答した場合" do
      before do
        start_one_question(3)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Array(配列)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
    
    context "Hashの問題に回答した場合" do
      before do
        start_one_question(4)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Hash(ハッシュ)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
    
    context "基礎編総合の問題に回答した場合" do
      before do
        start_one_question(5)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]基礎編総合問題編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
    
    context "応用編の問題に回答した場合" do
      before do
        start_one_question(6)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]オブジェクト指向編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
    
    context "正規表現の問題に回答した場合" do
      before do
        start_one_question(7)
        page.accept_confirm do
          click_on "回答する"
        end
      end
      
      it "点数が表示されていること" do 
        expect(page).to have_selector("#your-point")
      end
      
      it "回答が表示されていること" do
        expect(page).to have_content("[回答]Regexp(正規表現)編") 
      end
      
      it "正解、不正解が表示されていること" do
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
      
      it "記録はされていないこと" do
        expect(user.study_records.count).to eq(0)
      end
    end
  end
end