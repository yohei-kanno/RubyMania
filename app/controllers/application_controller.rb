class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :level_up_point

  class Forbidden < ActionController::ActionControllerError; end

  class IpAddressRejected < ActionController::ActionControllerError; end

  include GetQuestionAndAnswer
  include ErrorHandlers if Rails.env.production?



  def current_user_average_score(category)
    Category.count.times do |i|
      @average_score = current_user.average_score(category)
    end
  end

  def not_authenticated
    flash[:mydanger] = 'ログインして下さい'
    redirect_to main_app.root_path
  end

  private

  def level_up_point
    @next_level = LevelStatus.next_level(current_user) if current_user
  end
end
