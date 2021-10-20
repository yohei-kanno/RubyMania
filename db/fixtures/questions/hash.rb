$h_question1 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj[0]'

$h_question2 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj[:a]'

$h_question3 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.keys'

$h_question4 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.values'

$h_question5 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.values_at(:a,:b)'

$h_question6 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.select{|key, value| value.include?("a")}'

$h_question7 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.select{|key, value| value.include?(":a")}'

$h_question8 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj[:c].update!("grape")'

$h_question9 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj[:c] = "grape"
p obj[:c]'

$h_question10 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.delete(:a)
p obj'

$h_question11 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.delete(:a)'

$h_question12 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.reject{|key, value| value == "foo" }'

$h_question13 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.reject{|key, value| value == "foo" }
p obj'

$h_question14 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.reject!{|key, value| value == "foo" }
p obj'

$h_question15 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.delete_if{|key, value| value == "foo" }
p obj'

$h_question16 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.delete_if!{|key, value| value == "foo" }
p obj'

$h_question17 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.delete{|key, value| value == "foo" }
p obj'

$h_question18 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.replace(a: "bar")
p obj'

$h_question19 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.shift'

$h_question20 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}

obj.shift
p obj'

$h_question21 =
  'obj1 = {a: "foo", b: "bar" }
obj2 = {c: "baz", d: "qux"}

obj1.merge(obj2)
p obj1'

$h_question22 =
  'obj1 = {a: "foo", b: "bar" }
obj2 = {c: "baz", d: "qux"}

obj1.merge!(obj2)
p obj1'

$h_question23 =
  'obj1 = {a: "foo", b: "bar" }
obj2 = {c: "baz", d: "qux"}

obj1.merge!(obj2)
p obj2'

$h_question24 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}

p obj.invert'

$h_question25 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}

p obj.key?("foo")'

$h_question26 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}

p obj.member?(:b)'

$h_question27 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}

p obj.clear.size'

$h_question28 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.empty?'

$h_question29 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.has_value?(:a)'

$h_question30 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.has_value?("qux")'

$h_question31 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.each_key{|k| p k}'

$h_question32 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
obj.each_value{|v| p v}'

$h_question33 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.sort'

$h_question34 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.to_a.eql?(obj.sort)'

$h_question35 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}
p obj.to_a.equal?(obj.sort)'

$h_question36 =
  'obj = {a: "foo", b: nil, c: "baz", d: nil}

obj.compact
p obj'

$h_question37 =
  'obj = {a: "foo", b: nil, c: "baz", d: nil}

obj.compact!
p obj'

$h_question38 =
  'obj = {a: "foo", b: nil, c: "baz", d: nil}

p obj.flatten == obj.to_a.flatten'

$h_question39 =
  'obj = {a: "foo", b: nil, c: "baz", d: nil}

p obj.keys.count'

$h_question40 =
  'obj = {a: "foo", b: "bar", c: "baz", d: "qux"}

p obj.pop'
