class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :ranking
  protected

  def not_authenticated
    redirect_to root_path
    flash[:mydanger] = 'ログインして下さい'
  end
  
  def ranking
    @users = User.level_upper(9)
  end
end
