class WelcomesController < ApplicationController
  skip_before_action :require_login
  
  def new
    @users = User.all
    @categories = Category.all
  end
end
