class OneQuestionsController < RundomQuestionController
  def show
    get_question(1)
  end
end
