module ChoiceHelper
  def selected_choice?(num, choice)
    hash = {name: nil}
    choice == Choice.find(params[:question].except("name").reverse_merge({name:nil}).values[num])
  end
end