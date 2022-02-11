shared_context :Answer_will_be_asked_no_logged_in_context do |category, num_of_question, category_num|
  context "#{category}の問題を回答した場合" do
    before do
      start_questions_include_choose(category_num, num_of_question)
      page.accept_confirm do
        click_on "回答する"
      end
    end
    it_behaves_like :Answer_will_be_asked_no_logged_in_examples, category, num_of_question
  end
end
