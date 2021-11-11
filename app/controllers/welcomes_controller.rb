class WelcomesController < ApplicationController
  skip_before_action :require_login

  def new
    @categories = Category.all.order(:id)
    @categories2 = Category.where.not(name: "基礎編総合問題")
  end
end
