crumb :root do
  link "Top", root_path
end

#プロフィール
crumb :record do
  link "your record" , record_path
  parent :root
end

crumb :edit_record do
  link "name edit" , edit_record_path
  parent :record
end

#Rundom10問題作成周り
crumb :question do |category|
  link "#{category}編", questions_path(name: category)
  parent :root
end

crumb :answer do |category|
  link "#{category}解答", answer_questions_path(name: category)
  parent :question, category
end

#Rundom10問題作成周り
crumb :question do |category|
  link "#{category}編", questions_path(name: category)
  parent :root
end

crumb :answer do |category|
  link "#{category}解答", answer_questions_path(name: category)
  parent :question, category
end

crumb :three_questions do |category|
  link "#{category}編", three_questions_path(name: category)
  parent :root
end

crumb :three_answers do |category|
  link "#{category}解答", answer_questions_path(name: category)
  parent :three_questions, category
end

crumb :one_question do |category|
  link "#{category}編", one_questions_path(name: category)
  parent :root
end

crumb :one_answer do |category|
  link "#{category}解答", answer_questions_path(name: category)
  parent :one_question, category
end

#お問合せ
crumb :contact do
  link "Contact", new_contact_path
  parent :root
end

crumb :contact_confirm do
  link "Confirm", confirm_contacts_path
  parent :contact
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).