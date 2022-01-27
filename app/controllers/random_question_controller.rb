class RandomQuestionController < ApplicationController
  skip_before_action :require_login

  def answer
    get_answer
    point_up(@point)
    flash.now[:mysuccess] = t('flash.level_up') if current_user&.level_up?
  end

  private

  def point_up(_point)
    current_user&.point_up!(_point)
  end
end
