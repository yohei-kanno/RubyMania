class QuestionsController < ApplicationController
  def show 
    @categories = Category.all
    @categories.each do |category|
      if params[:name] == category.name
        @category_name = category.name
        @questions = category.questions.all.sample(9)
      end
    end
  end
  
  def answer
    @questions = []
    @point = 0
    @msgs = [nil]
    
    if params[:question].nil?
      redirect_to root_path
      return
    end
    
    choices = Choice.find(params[:question].values)
    choices_ids = params[:question].values.join(",")
    # StudyRecord.create(
    #   user_id: 1
    #   categories_id: 1
    #   question_record: choices_ids
    # )
    choices.each do |choice|
      if choice.answer == true
        @point += 10
        @msgs << "正解！"
      else
        @msgs << "不正解!"
      end
      @questions << choice.question
    end
    
    current_user.experience_point += @point
    current_user.save!
    next_level_point = LevelStatus.find_by(level: current_user.level + 1).required_experience_points
    
    if current_user.experience_point >= next_level_point
      current_user.level += 1
      current_user.save!
      flash.now[:mysuccess] = "レベルがアップしました！"
    end
  end
end