module ChoiceHelper
  def selected_choice?(num, choice)
    choice == Choice.find(params[:question].except("name").values[num])
  end
end