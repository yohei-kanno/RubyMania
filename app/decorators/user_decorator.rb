class UserDecorator < Draper::Decorator
  delegate_all
  
  def average_score(i)
    return if  object.study_records.where(category_id:i).pluck(:score).count.zero?
    arr = object.study_records.where(category_id:i).pluck(:score)
    arr.sum / arr.length
  end
    
  def dev(arr_x1, i)
    avg = arr_x1.sum / arr_x1.length
    arr1 = arr_x1.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x1.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
    
  def dev(arr_x2, i)
    avg = arr_x2.sum / arr_x2.length
    arr1 = arr_x2.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x2.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
    
  def dev(arr_x3, i)
    avg = arr_x3.sum / arr_x3.length
    arr1 = arr_x3.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x3.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
    
  def dev(arr_x4, i)
    avg = arr_x4.sum / arr_x4.length
    arr1 = arr_x4.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x4.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
    
  def dev(arr_x5, i)
    avg = arr_x5.sum / arr_x5.length
    arr1 = arr_x5.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x5.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
    
  def dev(arr_x6, i)
    avg = arr_x6.sum / arr_x6.length
    arr1 = arr_x6.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x6.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
    
  def dev(arr_x7, i)
    avg = arr_x7.sum / arr_x7.length
    arr1 = arr_x7.map{|x| (x - avg) ** 2}
    std = Math.sqrt(arr1.sum / arr_x7.length)
    begin
      return (( average_score(i) - avg) * 10 / std + 50).round(2)
    rescue => e
      return 0
    end
  end
  
  
end