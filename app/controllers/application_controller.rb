class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :level_up_point

  class Forbidden < ActionController::ActionControllerError; end

  class IpAddressRejected < ActionController::ActionControllerError; end

  include ErrorHandlers if Rails.env.production?

  def not_authenticated
    flash[:mydanger] = 'ログインして下さい'
    redirect_to main_app.root_path
  end

  private

  def level_up_point
    @next_level = LevelStatus.next_level(current_user) if current_user
  end
end
