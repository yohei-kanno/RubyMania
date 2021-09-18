class WelcomesController < ApplicationController
  skip_before_action :require_login

  def new
    @categories = Category.all
    @categories2 = Category.where.not(name: "基礎編総合問題")
    @next_level = LevelStatus.next_level(current_user)
  end
end
