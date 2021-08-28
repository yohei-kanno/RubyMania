class QuestionsController < ApplicationController
  def show
    @categories = Category.all
    @categories.each do |category|
      if params[:name] == category.name
        @category_name = category.name
        @questions = category.questions.all.sample(10)
      end
    end
  end

  def answer
    @questions = []; @point = 0; @msgs = [nil]

    choices = Choice.find(params[:question].values.drop(1))
    insert_msg(choices, @questions, @msgs, @point)

    choices_ids = params[:question].values.drop(1).join(',')
    @category = Category.find_by(name: params[:question][:name])

    StudyRecord.create_record(current_user, @category, choices_ids, @point)
    current_user.level_up!(@point)
    flash.now[:mysuccess] = t('flash.level_up') if current_user.level_up?
  end

  private

  def insert_msg(choices, questions, msgs, _point)
    choices.each do |choice|
      if choice.answer == true
        @point += 10
        msgs << t('dict.correct')
      else
        msgs << t('dict.uncorrect')
      end
      questions << choice.question
    end
  end
end
