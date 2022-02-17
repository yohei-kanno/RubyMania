class QuestionsController < ApplicationController
  skip_before_action :require_login

  def show
    get_question(10)
  end

  def answer
    get_answer
    StudyRecord.create_record_and_point_up!(current_user,@category, @point)
    flash.now[:mysuccess] = t('flash.level_up') if current_user&.level_up?
  end
end
