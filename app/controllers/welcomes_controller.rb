class WelcomesController < ApplicationController
  skip_before_action :require_login

  def new
    @users = User.level_upper(9)
    @categories = Category.all
  end
end
