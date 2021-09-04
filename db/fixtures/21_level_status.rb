# 99.times do |i|
#   LevelStatus.create(
#     level: i + 2,
#     required_experience_points: 100 * (i + 2)
#   )
# end

99.times do |i|
  LevelStatus.seed(:id,
                   { id: i + 1, level: i + 2, required_experience_points: ((i + 1) * 100 + (i * 50)) })
end
