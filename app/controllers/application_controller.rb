class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :ranking
  before_action :level_up_point

  protected

  def level_up_point
    @next_level = LevelStatus.next_level(current_user) if current_user
  end

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
    question_exist?(params[:question])
    @questions = []
    @point = 0
    @msgs = [nil]
    choices = Choice.includes([question: :choices]).find(params[:question].except("name").values)

    insert_msg(choices, @msgs, @point, @questions)
    @category = Category.find_by(name: params[:question][:name])
  end

  def not_authenticated
    redirect_to root_path
    flash[:mydanger] = 'ログインして下さい'
  end

  def ranking
    @users = User.level_upper(9)
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
    redirect_to root_url if params_question.nil?
  end
end
