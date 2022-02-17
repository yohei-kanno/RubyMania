class QuestionsController < ApplicationController
  skip_before_action :require_login

  def show
    get_question(params[:random].to_i)
  end

  def answer
    get_answer
    if @questions.size == 10
      StudyRecord.create_record_and_point_up!(current_user, @category, @point)
    else
      current_user&.point_up!(@point)
    end
    flash.now[:mysuccess] = t('flash.level_up') if current_user&.level_up?
  end
end
