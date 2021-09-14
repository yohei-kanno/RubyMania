class QuestionsController < ApplicationController
  skip_before_action :require_login

  def show
    @categories = Category.all
    @categories.each do |category|
      if params[:name] == category.name
        @category_name = category.name
        @questions = category.questions.random(10)
      end
    end
  end
  
  def study
    @categories = Category.all
    @categories.each do |category|
      if params[:name] == category.name
        @category_name = category.name
        @questions = category.questions.page(params[:page])
      end
    end
  end

  def answer
    question_exist?(params[:question])
    @questions = []
    @point = 0
    @msgs = [nil]
    choices = Choice.includes([question: :choices]).find(params[:question].except("name").values)

    insert_msg(choices, @msgs, @point, @questions)
    @category = Category.find_by(name: params[:question][:name])
    ActiveRecord::Base.transaction do
      record_and_point_up(current_user, @category, @point)
    end
    flash.now[:mysuccess] = t('flash.level_up') if current_user && current_user.level_up?
  rescue StandardError
    false
  end
  

  private

  def insert_msg(choices, msgs, _point, questions)
    choices.each do |choice|
      if choice.answer == true
        @point += 10
        msgs << t('dict.correct')
      else
        msgs << t('dict.uncorrect')
      end
      questions << choice.question
    end
  end

  def record_and_point_up(current_user, category, _point)
    StudyRecord.create_record(current_user, category, _point)
    current_user.point_up!(_point)
  end

  def question_exist?(params_question)
    redirect_to root_url if params_question.nil?
  end
end
