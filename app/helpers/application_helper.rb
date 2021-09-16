module ApplicationHelper
  def ranks
    %w[j1 j2 j3 j4 j5 j6 j7 j8 j9]
  end

  def user_rank(users)
    ranks.zip(users)
  end
  
  def ruby_objects
    %w[obj1 obj2 obj3 obj4 obj5 obj6 obj7]
  end
  
  def book_objects
    %w[book1 book2 book3 book4 book5]
  end
  
  def pen_objects
    %w[pen1 pen2 pen3 pen4 pen5 pen6 pen7]
  end

  def object_index(category, object)
    eval("#{object}_objects.zip(category)")
  end
end
