class WelcomesController < ApplicationController
  skip_before_action :require_login

  def new
    @categories = Category.all
  end
end
