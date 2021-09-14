module ApplicationHelper
  def ranks
    %w[j1 j2 j3 j4 j5 j6 j7 j8 j9]
  end

  def user_rank(users)
    ranks.zip(users)
  end

  def objects
    %w[obj1 obj2 obj3 obj4 obj5 obj6]
  end
  
  def book_objects
    %w[book1 book2 book3 book4]
  end

  def object_index(category)
    objects.zip(category)
  end
  
  def book_index(category)
    book_objects.zip(category)
  end
    
end
