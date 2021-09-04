$h_question1 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj[0]'
  
$h_question2 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj[:a]'
  
$h_question3 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.keys'
  
$h_question4 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.values'
  
$h_question5 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.values_at(:a,:b)'
  
$h_question6 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.select{|key, value| value.include?("a")}'
  
$h_question7 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.select{|key, value| value.include?(":a")}'
  
$h_question8 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj[:c].update!("grape")'
  
$h_question9 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj[:c] = "grape"
p obj[:c]'
  
$h_question10 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.delete(:a)
p obj'
  
$h_question11 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.delete(:a)'
  
$h_question12 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.reject{|key, value| value == "apple" }'
  
$h_question13 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.reject{|key, value| value == "apple" }
p obj'
  
$h_question14 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.reject!{|key, value| value == "apple" }
p obj'
  
$h_question15 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.delete_if{|key, value| value == "apple" }
p obj'
  
$h_question16 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.delete_if{|key, value| value == "apple" }
p obj'
  
$h_question17 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.delete{|key, value| value == "apple" }
p obj'
  
$h_question18 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.replace(a: "orange")
p obj'
  
$h_question19 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.shift'
  
$h_question20 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}

obj.shift
p obj'
  
$h_question21 =
  'obj1 = {a: "apple", b: "orange" }
obj2 = {c: "strawberry", d: "melon"}

obj1.merge(obj2)
p obj1'
  
$h_question22 =
  'obj1 = {a: "apple", b: "orange" }
obj2 = {c: "strawberry", d: "melon"}

obj1.merge!(obj2)
p obj1'
  
$h_question23 =
  'obj1 = {a: "apple", b: "orange" }
obj2 = {c: "strawberry", d: "melon"}

obj1.merge!(obj2)
p obj2'
  
$h_question24 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}

p obj.invert'
  
$h_question25 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}

p obj.key?("apple")'
  
$h_question26 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}

p obj.member?(:b)'
  
$h_question27 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}

p obj.clear.size'
  
$h_question28 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.empty?'
  
$h_question29 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.has_value?(:a)'
  
$h_question30 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.has_value?("melon")'
  
$h_question31 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.each_key{|k| p k}'
  
$h_question32 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
obj.each_value{|v| p v}'
  
$h_question33 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.sort'
  
$h_question34 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.to_a.eql?(obj.sort)'
  
$h_question35 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}
p obj.to_a.equal?(obj.sort)'
  
$h_question36 =
  'obj = {a: "apple", b: nil, c: "strawberry", d: nil}

obj.compact
p obj'
  
$h_question37 =
  'obj = {a: "apple", b: nil, c: "strawberry", d: nil}

obj.compact!
p obj'
  
$h_question38 =
  'obj = {a: "apple", b: nil, c: "strawberry", d: nil}

p obj.flatten == obj.to_a.flatten'
  
$h_question39 =
  'obj = {a: "apple", b: nil, c: "strawberry", d: nil}

p obj.keys.count'
  
$h_question40 =
  'obj = {a: "apple", b: "orange", c: "strawberry", d: "melon"}

p obj.pop'
