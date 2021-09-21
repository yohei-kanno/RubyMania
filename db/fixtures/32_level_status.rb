999.times do |num|
  LevelStatus.seed(:id,
                      {id: num + 1, level:num + 2, required_experience_points: (num+1)*100})
end
