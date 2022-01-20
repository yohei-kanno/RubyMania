class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :level_up_point

  include GetQuestionAndAnswer

  def not_authenticated
    redirect_to root_path
    flash[:mydanger] = 'ログインして下さい'
  end

  private

  def level_up_point
    @next_level = LevelStatus.next_level(current_user) if current_user
  end
end
