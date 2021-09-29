module ChoiceHelper
  def selected_choice?(num, choice)
    choice == Choice.find(params[:question].values[num])
  end
end