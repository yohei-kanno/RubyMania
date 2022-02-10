shared_examples :Questions_will_be_asked_examples do |category, num_of_question, category_num|

  before do
    start_questions(category_num)
  end
  
  it "#{category}の問題が表示されている事" do
    expect(page).to have_content(category)
    expect(page).to have_selector(".question-title")
    expect(page).to have_selector(".question-content")
    expect(page).to have_selector(".choice-content-hover")
    expect(all('.question-form').count).to eq(num_of_question)
    expect(all('.choice-content-hover').count).to eq(num_of_question * 4)
    expect(page).to have_button("回答する")
  end
end