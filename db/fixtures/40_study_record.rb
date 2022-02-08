# s1 = Date.parse("2021/01/2")
# s2 = Date.parse("2021/10/1")
# s = Random.rand(s1 .. s2)

# User.count.times do |u|
#   50.times do |i|
#     StudyRecord.seed(:id,
#                         {id: (i + 1 + u * 50), user_id: u + 1, category_id: rand(1..7),score: rand(1..10)*10, start_time: s})
#   end
# end
