shared_examples "Answer_will_be_asked_examples" do |category, num_of_question, category_num|
  it "正常に回答が表示されていること" do 
    expect(page).to have_selector(".your-point")
    expect(page).to have_content(category) 
    expect(page).to have_selector(".judgment")
    expect(page).to have_content("レベルがアップしました！")
    execute_script('window.scrollBy(0,10000)')
    sleep 1
    expect(all('.answer-form-effect').count).to eq(num_of_question)
    expect(all('.choice-content-answer').count).to eq(num_of_question * 4)
    visit root_path
    expect(user.study_records.count).to eq(1)
  end
  
  it "もう一度同じカテゴリーの問題が出来ること" do
    expect(page).to have_link "Do it again"
    click_link "Do it again", match: :first
    expect(page).to have_content(category)
    execute_script('window.scrollBy(0,10000)')
    sleep 1
    expect(page).to have_content(category) 
    expect(all('.question-form').count).to eq(num_of_question)
    expect(all('.choice-content-hover').count).to eq(num_of_question * 4)
  end
  
  it "トップページに戻れること" do
    expect(page).to have_link "Home"
    click_link "Home", match: :first
    expect(page).to have_current_path root_path
  end
end

