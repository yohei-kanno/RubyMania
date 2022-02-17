class QuestionsController < ApplicationController
  skip_before_action :require_login

  def show
    @category = Category.find_by(name: params[:name])
    @questions = @category.questions.random(params[:random].to_i)
  end

  def answer
    return redirect_to :root if params[:question].nil?

    @category = Category.find_by(name: params[:question][:name])
    @point = Choice.selected_choice(except_name_params.values).point
    @questions = Question.selected_questions(except_name_params.keys)

    if @questions.size == 10 && current_user
      StudyRecord.create_record_and_point_up!(current_user, @category, @point)
      flash.now[:mysuccess] = t('flash.level_up') if current_user.level_up?
    elsif current_user
      current_user.point_up!(@point)
      flash.now[:mysuccess] = t('flash.level_up') if current_user.level_up?
    end
  end

  private

  def except_name_params
    params[:question].except("name")
  end
end
