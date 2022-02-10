shared_context "Questions_will_be_asked_context" do |category, num_of_question, category_num|
  context "#{category}の問題を選択した場合" do
    it_behaves_like :Questions_will_be_asked_examples, category, num_of_question, category_num
  end
end