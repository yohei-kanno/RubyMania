class WelcomesController < ApplicationController
  skip_before_action :require_login

  def new
    @categories = Category.all
    @categories2 = Category.where(id: [1,2,3,4,7])
  end
end
