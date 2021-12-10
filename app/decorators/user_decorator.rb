class UserDecorator < Draper::Decorator
  delegate_all

  def average_score(i)
    arr = object.study_records.where(category_id: i).pluck(:score)
    begin
      arr.sum / arr.length
    rescue ZeroDivisionError => e
      0
    end
  end
      

  def dev(i)
    avg = arr_x(i).sum / arr_x(i).length
    arr1 = arr_x(i).map { |x| (x - avg)**2 }
    std = Math.sqrt(arr1.sum / arr_x(i).length)
    begin
      ((average_score(i) - avg) * 10 / std + 50).round(2)
    rescue StandardError => e
      0
    end
  end

  private

  def arr_x(i)
    arr = []
    StudyRecord.all.where(category_id: i).pluck(:score)
    arr.to_a.flatten
  end
end
