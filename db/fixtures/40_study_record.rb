s1 = Date.parse("2022/2/1")
s2 = Date.parse("2022/2/8")

User.count.times do |u|
  20.times do |i|
    StudyRecord.seed(:id,
                        {id: (i + 1 + u * 50), user_id: 1, category_id: rand(1..7),score: rand(1..10)*10, start_time: rand(s1..s2)})
  end
end
