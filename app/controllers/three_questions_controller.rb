class ThreeQuestionsController < RundomQuestionController
  def show
    get_question(3)
  end
end
