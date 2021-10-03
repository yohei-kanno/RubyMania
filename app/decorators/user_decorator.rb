class UserDecorator < Draper::Decorator
  delegate_all
  
  def average_score(i)
    return if  object.study_records.where(category_id:i).pluck(:score).count.zero?
    arr = object.study_records.where(category_id:i).pluck(:score)
    arr.sum / arr.length
  end
  
  def dev(arr_x, i)
    avg = arr_x.sum / arr_x.length
    arr1 = arr_x.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x.length)
    return (( average_score(i) - avg) * 10 / std + 50).round(2)
  end
end