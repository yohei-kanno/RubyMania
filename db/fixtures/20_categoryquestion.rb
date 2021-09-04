# string編の問題の紐付け
Question.where(id:1..1000).count.times do |n|
  CategoriesQuestion.seed(:id,
                          { id: n + 1, category_id: 1, question_id: n + 1 },
                          { id: n + 4001, category_id: 5, question_id: n + 1 })
end

Question.where(id:1001..2000).count.times do |n|
  CategoriesQuestion.seed(:id,
                          { id: n + 1001, category_id: 2, question_id: n + 1001 },
                          { id: n + 5001, category_id: 5, question_id: n + 1001 })
end

Question.where(id:2001..3000).count.times do |n|
  CategoriesQuestion.seed(:id,
                          { id: n + 2001, category_id: 3, question_id: n + 2001 },
                          { id: n + 6001, category_id: 5, question_id: n + 2001 })
end

Question.where(id:3001..4000).count.times do |n|
  CategoriesQuestion.seed(:id,
                          { id: n + 3001, category_id: 4, question_id: n + 3001 },
                          { id: n + 7001, category_id: 5, question_id: n + 3001 })
end


Question.where(id:4001..5000).count.times do |n|
  CategoriesQuestion.seed(:id,
                          { id: n + 4001, category_id: 6, question_id: n + 4001 })
end