class WelcomesController < ApplicationController
  skip_before_action :require_login
  before_action :your_average_variable_set, only: %i[new]
  before_action :everyone_average_variable_set, only: %i[new]

  def new
    @categories = Category.all.order(:id)
  end

  private

  def your_average_variable_set
    return unless current_user

    @str = current_user.average_score(1)
    @int = current_user.average_score(2)
    @arr = current_user.average_score(3)
    @hash = current_user.average_score(4)
    @total = current_user.average_score(5)
    @obj = current_user.average_score(6)
    @reg = current_user.average_score(7)
  end

  def everyone_average_variable_set
    @estr = StudyRecord.all_user_average_score(1)
    @eint = StudyRecord.all_user_average_score(2)
    @earr = StudyRecord.all_user_average_score(3)
    @ehash = StudyRecord.all_user_average_score(4)
    @etotal = StudyRecord.all_user_average_score(5)
    @eobj = StudyRecord.all_user_average_score(6)
    @ereg = StudyRecord.all_user_average_score(7)
  end
end
