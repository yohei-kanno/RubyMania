module GetQuestionAndAnswer
  extend ActiveSupport::Concern

  def get_question(num)
    @categories = Category.all
    @categories.each do |category|
      if params[:name] == category.name
        @category_name = category.name
        @questions = category.questions.random(num)
      end
    end
  end

  def get_answer
    if question_exist?(params[:question])
       redirect_to root_url
       return
    end
    @questions = []
    @point = 0
    @msgs = []
    choices = Choice.includes([question: :choices]).find(params[:question].except("name").values)

    insert_msg(choices, @msgs, @point, @questions)
    @category = Category.find_by(name: params[:question][:name])
  end

  private
  
  def insert_msg(choices, msgs, _point, questions)
    choices.each do |choice|
      if choice.answer == true
        @point += 10
        msgs.push t('dict.correct')
      else
        msgs.push t('dict.uncorrect')
      end
      questions.push choice.question
    end
  end

  def question_exist?(params_question)
    params_question.nil?
  end
end
