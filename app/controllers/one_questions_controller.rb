class OneQuestionsController < RandomQuestionController
  def show
    get_question(1)
  end
end
