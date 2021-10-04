class UserDecorator < Draper::Decorator
  delegate_all
  
  def average_score(i)
    return if  object.study_records.where(category_id:i).pluck(:score).count.zero?
    arr = object.study_records.where(category_id:i).pluck(:score)
    arr.sum / arr.length
  end
  
  def dev(i)
    avg = arr_x(i).sum / arr_x(i).length
    arr1 = arr_x(i).map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x(i).length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
  
  private
  def arr_x(i)
    arr = []
    users = User.all
    users.each do |user|
      arr << user.study_records.where(category_id:i).pluck(:score)
    end
    arr.to_a.flatten
  end
end
  