class ChoiceDecorator < Draper::Decorator
  delegate_all
  class << self
    def true_choice?(num, params_question)
      choice = Choice.find(params_question.except("name").values[num]).answer?
    end

    def selected_choice?(num, choice, params_question)
      choice == Choice.find(params_question.except("name").values[num])
    end
  end
end
