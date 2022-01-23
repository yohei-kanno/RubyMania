module AverageScore
  def all_user_average_score(i)
    arr = []
    arr.push StudyRecord.all.where(category_id: i).pluck(:score)
    return if arr.flatten.empty?

    arr.to_a.flatten.sum / arr.to_a.flatten.length
  end
end
