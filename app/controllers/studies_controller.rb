class StudiesController < ApplicationController
  skip_before_action :require_login

  def show
    @categories = Category.all
    @categories.each do |category|
      if params[:name] == category.name
        @category_name = category.name
        @questions = category.questions.page(params[:page])
      end
    end
  end
end
