$i_question1 =
  'obj = - -10
p obj'

$i_question2 =
  'obj = 10 ** 3
p obj'

$i_question3 =
  'obj = 10
obj += 10
p obj'

$i_question4 =
  'p 10 | 3'

$i_question5 =
  'p 10 + 5.00'

$i_question6 =
  'p 10 + 5.00.to_s.to_i'

$i_question7 =
  'obj = 10.next
p obj'

$i_question8 =
  'obj = 10.next!
p obj'

$i_question9 =
  'obj = 10.pred
p obj'

$i_question10 =
  'obj = 10.succ
p obj'

$i_question11 =
  'obj = 10.succ.next
p obj'

$i_question12 =
  'obj = 10
5.times do |i|
  obj += i
end

p obj'

$i_question13 =
  'obj = 10
10.times do |i|
  obj << i
end

p obj'

$i_question14 =
  'obj = 10
5.downto(2) do |i|
  obj += i
end

p obj'

$i_question15 =
  '5.downto(1) do |i|
  p "*" * i
end'

$i_question16 =
  '1.upto(5) do |i|
  p "*" * i
end'

$i_question17 =
  'obj = 10
1.upto(5) do |i|
  obj += i
end

p obj'

$i_question18 =
  '1.upto(5) do |i|
  p i * "*"
end'

$i_question19 =
  'p 10.modulo(3.0)'

$i_question20 =
  'p (1 - 10).abs'

$i_question21 =
  'obj1 = 30
obj2 = -30
p (obj1 * obj2).abs'

$i_question22 =
  'obj1 = 30
obj2 = -30
p (obj1 * obj2).abs.class'

$i_question23 =
  'obj1 = 1.6
p obj1.ceil'

$i_question24 =
  'obj1 = 1.6
p obj1.floor'

$i_question25 =
  'obj1 = 1.6
p obj1.round'

$i_question26 =
  'obj1 = 1.6
p obj1.truncate'

$i_question27 =
  'obj1 = -1.6
p obj1.ceil'

$i_question28 =
  'obj1 = -1.6
p obj1.floor'

$i_question29 =
  'obj1 = -1.6
p obj1.round'

$i_question30 =
  'obj1 = -1.6
p obj1.truncate'

$i_question31 =
  'obj1 = 1.1
obj2 = 2
p (obj1 * obj2).class'

$i_question32 =
  'obj1 =  100
p obj1.to_f'

$i_question33 =
  'p Rational(1,2)'

$i_question34 =
  'p Rational(-1,2).abs'

$i_question35 =
  'p Rational(5)'

$i_question36 =
  'p Rational(5).denominator'

$i_question37 =
  'p Rational(5,4).floor'

$i_question38 =
  'p Rational(5,4).ceil'

$i_question39 =
  'obj = 10.-(11)
p obj.positive?'

$i_question40 =
  'obj = 10.+(11)
p obj.positive?'

$i_question41 =
  'obj1 = "1"
obj2 = 1
p obj1 <=> obj2'

$i_question42 =
  'obj1 = 1.1
obj2 = 1
p (obj1 <=> obj2).class'

$i_question43 =
  'obj1 = 1.1
obj2 = 1
p (obj1 <=> obj2)'

$i_question44 =
  'obj1 = 1
obj2 = 1.0
p obj1.equal?(obj2)'

$i_question45 =
  'obj1 = 1
obj2 = 1.0
p obj1.eql?(obj2)'

$i_question46 =
  'obj1 = 1
obj2 = 1.0
p obj1.==(obj2)'

$i_question47 =
  'obj1 = 1
obj2 = 3
p (obj1 + obj2).finite?'

$i_question48 =
  'obj1 = 1
obj2 = 3
p (obj1 / obj2).infinite?'

$i_question49 =
  'obj1 = 1
obj2 = -3
p (obj1 - obj2).negative?'

$i_question50 =
  'obj1 = 1
obj2 = -3
p (obj1 - obj2).negative!'

$i_question51 =
  'p 4.numerator'

$i_question52 =
  'p 4.i.class'

$i_question53 =
  'obj1 = 1
obj2 = 3
p (obj1 + obj2).imag'

$i_question54 =
  'obj1 = 1
obj2 = 3
p 2.between?(obj1, obj2)'

$i_question55 =
  'obj1 = 1
obj2 = 3
p 5.between?(obj1, obj2)'

$i_question56 =
  'obj = 1
3.times do |i|
  obj += i
end

p obj'

$i_question57 =
  'obj = 1
3.times do |i|
  obj -= i
end

p obj'

$i_question58 =
  '10.times do |i|
  i * 4
end
p i'

$i_question59 =
  'i = 0
10.times do |i|
  i * 4
end
p i'

$i_question60 =
  'obj1 = 100
obj2 = 100.0
p obj1 + obj2'

$i_question61 =
  'obj1 =  100
obj2 = obj1
p obj1 <=> obj2'

$i_question62 =
  'obj1 =  100
obj2 = obj1
p obj1.equal?(obj2)'

$i_question63 =
  'obj1 =  100
obj2 = obj1 + 0.1
p obj1 >= (obj2)'

$i_question64 =
  'obj1 = 100
p obj1.divmod(obj1)'

$i_question65 =
  'p 65.chr'

$i_question66 =
  'p 55 + 100 + 10.0'

$i_question67 =
  'obj = 0.0/0.0
p obj'

$i_question68 =
  'obj = 0.0/0.0
p obj.class'

$i_question69 =
  'obj1 = 99
p obj1.to_r.class'

$i_question70 =
  'obj1 = 99
p obj1.to_f.class'