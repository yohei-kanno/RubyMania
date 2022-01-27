class ThreeQuestionsController < RandomQuestionController
  def show
    get_question(3)
  end
end
