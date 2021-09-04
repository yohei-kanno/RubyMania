$a_question1 =
  'obj1 = [1, 2, 3]
p obj1.class'
  
$a_question2 =
  'obj = Array.new(3, "ary")
p obj'
  
$a_question3 =
  'obj = Array.new(3)
p obj'
  
$a_question4 =
  'obj = Array.new(3) do |i|
  i * 2
end

p obj'
  
$a_question5 =
  'obj = Array.new(3) do |i|
  i * 2
end

p obj'
  
$a_question6 =
  'obj = [2,4,6]
p Array.new(obj)'
  
$a_question7 =
  'obj = [1, 2, 3]
  obj << 0
  p obj'
  
$a_question8 =
  'obj = [1, 2, 3]
obj >> 0
p obj'
  
$a_question9 =
  'obj1 = [1, 2, 3]
obj2 = [5, 6]
p obj2.concat(obj1)'
  
$a_question10 =
  'obj1 = [1, 2, 3]
obj2 = [5, 6]
p obj1.concat(obj2)'
  
$a_question11 =
  'obj1 = [1, 2, 3]
obj2 = [5, 6]
p obj1.concat(obj2)'
  
$a_question12 =
  'obj = [1, 2, 3]
p obj.insert(3, 4)'
  
$a_question13 =
  'obj = [1, 2, 3]
p obj.insert(4, 4)'
  
$a_question14 =
  'obj1 = [1, 2, 3]
obj2 = obj1.insert(4, 4).compact
p obj1'
  
$a_question15 =
  'obj1 = [1, 2, 3]
obj2 = obj1.insert(4, 4).compact!
p obj1'
  
$a_question16 =
  'obj1 = [1, 2, 3]
obj2 = obj1
p obj1 == obj2'
  
$a_question17 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]
p obj1 + obj2'
  
$a_question18 =
  'obj = [1, 2, 3]
p obj.unshift(4)'
  
$a_question19 =
  'obj = [1, 2, 3]
p obj.unshift(4, 4)'
  
$a_question20 =
  'obj = [1, 3, 5]
obj[3] = 7
p obj'
  
$a_question21 =
  'obj = [1, 3, 5]
obj[0..10] = 7
p obj'
  
$a_question22 =
  'obj = [1, 3, 5]
p obj.fill("a")'
  
$a_question23 =
  'obj = [1, 3, 5].fill!("a")
p obj'
  
$a_question24 =
  'obj = [1, 3, 5].fill("a", 0)
p obj'
  
$a_question25 =
  'obj = [1, 3, 5].replace([5, 6, 7])
p obj'
  
$a_question26 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.at(1)'
  
$a_question27 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.at(10)'
  
$a_question28 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.fetch(10)'
  
$a_question29 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.values_at(2...6)'
  
$a_question30 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.first(2)'
  
$a_question31 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.first(10)'
  
$a_question32 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.last(5)'
  
$a_question33 =
  'obj = [[1, 2], [3, 4], [5, 6], [7, 8]]
p obj.assoc(2)'
  
$a_question34 =
  'obj = [[1, 2], [3, 4], [5, 6], [7, 8]]
p obj.assoc(3)'
  
$a_question35 =
  'obj = [[1, 2], [3, 4], [5, 6], [7, 8]]
p obj.rassoc(3)'
  
$a_question36 =
  'obj = [[1, 2], [3, 4], [5, 6], [7, 8]]
p obj.rassoc(2)'
  
$a_question37 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.delete_at(3)
p obj'
  
$a_question38 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.delete_at(1..3)
p obj'
  
$a_question39 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.clear
p obj'
  
$a_question40 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.delete_if do |i|
  i.even?
end
p obj'
  
$a_question41 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.delete_if do |i|
  i.odd?
end
p obj'
  
$a_question42 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.slice(2,4)
p obj'
  
$a_question43 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.slice!(2,4)
p obj'
  
$a_question44 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.shift()
p obj'
  
$a_question45 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.shift!()
p obj'
  
$a_question46 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
obj.pop(3)
p obj'
  
$a_question47 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]
p obj1 | obj2'
  
$a_question48 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]
p obj1 + obj2'
  
$a_question49 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]
p obj1 - obj2'
  
$a_question50 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]
p obj1 & obj2'
  
$a_question51 =
  'obj = [1, 2, 3]

obj.each do |n|
  p n * 2
end'
  
$a_question52 =
  'obj = [1, 2, 3]

obj.reverse_each do |n|
  p n * 2
end'
  
$a_question53 =
  'obj = [1, 2, 3]

obj.each_index do |n|
  p n * 2
end'
  
$a_question54 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]

p (obj1 | obj2).length'
  
$a_question55 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]

p (obj1 | obj2).clear.empty?'
  
$a_question56 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]

p (obj1 | obj2).join(",")'
  
$a_question57 =
  'obj = [5, 4, 3, 2, 1]
obj.sort! do |a ,b|
  a <=> b
end
p obj'
  
$a_question58 =
  'obj = [5, 4, 3, 2, 1]
obj.sort! do |a ,b|
  b <=> a
end
p obj'
  
$a_question59 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]

p (obj1 + obj2).uniq'
  
$a_question60 =
  'obj = [[1, 2], [3, 4], [5, 6], [7, 8]]
p obj.flatten.reverse'
  
$a_question61 =
  'obj = [[1, 2], [3, 4], [5, 6], [7, 8]]
p obj.flatten(0)'
  
$a_question62 =
  'obj1 = [1, 2, 3]
obj2 = [3, 4, 5]
p obj1.zip(obj2)'
  
$a_question63 =
  'obj1 = [1, 2]
obj2 = [3, 4]
p obj1.product(obj2)'
  
$a_question64 =
  'obj1 = [1, 2]
obj2 = obj1.dup
p obj1.equal?(obj2)'
  
$a_question65 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.count do |i|
  i.even?
end'
  
$a_question66 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.count{ |i| i.even? }'
  
$a_question67 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.drop(4)'
  
$a_question68 =
  'obj = [1, 2, 3, 4, 5, 6, 7]
p obj.select{ |i| i.even? }'
  
$a_question69 =
  'obj = ["a", "b", "c"]
p obj.max'
  