class QuestionsController < ApplicationController
  skip_before_action :require_login

  def show
    get_question(10)
  end

  def answer
    get_answer
    ActiveRecord::Base.transaction do
      StudyRecord.create_record(current_user, category, _point)
      current_user.point_up!(_point)
    end
    flash.now[:mysuccess] = t('flash.level_up') if current_user&.level_up?
  rescue StandardError
    false
  end
end
