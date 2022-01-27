module ObjectIndex
  def ruby_objects
    %w[obj1 obj2 obj3 obj4 obj5 obj6 obj7]
  end

  def pen_objects
    %w[pen1 pen2 pen3 pen4 pen5 pen6 pen7]
  end
  
  def book_objects
    %w[book1 book2 book3 book4 book5 book6 book7]
  end

  def object_index(category, object)
    eval("#{object}_objects.zip(category)")
  end
end