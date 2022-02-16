module GetQuestionAndAnswer
  extend ActiveSupport::Concern

  def get_question(num)
    @category = Category.find_by(name: params[:name])
    @questions = @category.questions.random(num)
  end
  

  def get_answer
    return redirect_to :root if params[:question].nil?
    @category = Category.find_by(name: params[:question][:name])
    @point = Choice.selected_choice(except_name_params.values).point
    @questions = Question.selected_questions(except_name_params.keys)
  end

  private
  def except_name_params
    params[:question].except("name")
  end
end
