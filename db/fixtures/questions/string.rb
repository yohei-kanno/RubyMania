$s_question1 =
  's = "abcdefg"
p s[1..4]'

$s_question2 =
  's = "string"
s.upcase
p s'

$s_question3 =
  's = "string"
s.upcase!
p s'

$s_question4 =
  's = "string"
a = s.upcase
p a'

$s_question5 =
  's = "STRING"
s.downcase!
p s'

$s_question6 =
  's = "STRING"
s.downcase
p s'

$s_question7 =
  's1 = "str"
s2 = "ing"
s =  s1.concat(s2)
p s'

$s_question8 =
  's1 = "str"
s2 = "ing"
s =  s1.concat!(s2)
p s'

$s_question9 =
  'p "aaa" <=> "bbb"'

$s_question10 =
  'p "bbb" <=> "aaa"'

$s_question11 =
  'obj = String.new
p obj.equal?(String.new)'

$s_question12 =
  'obj = String.new
obj2 = obj
p obj.equal?(obj2)'

$s_question13 =
  'obj = String.new
p obj.eql?(String.new)'

$s_question14 =
  'obj = String.new("String.new")
obj2 = "String.new"
p obj.eql?(obj2)'

$s_question15 =
  'p "123456789"[2..4]'

$s_question16 =
  'p "123456789"[2....4]'

$s_question17 =
  'p "123456789"[2...4]'

$s_question18 =
  'p "string"[6]'

$s_question19 =
  'p "string"[-1]'

$s_question20 =
  'p "String" * 3'

$s_question21 =
  'str = "string"
str[1] = "str"
p str'

$s_question22 =
  'p "123456789".delete("2378")'

$s_question23 =
  'a = "123456789"
a.delete("2378")
p a
'
$s_question24 =
  'p "".empty?'

$s_question25 =
  'p %W[string] == %w[string]'

$s_question26 =
  'p "a" << "b"'

$s_question27 =
  'p "a" < "b"'

$s_question28 =
  'p "a" > "b"'

$s_question29 =
  'p "str".insert(5, "ing")'

$s_question30 =
  'p "str".insert(3, "ing")'

$s_question31 =
  '"string".intern.to_s == "string"'

$s_question32 =
  'p "string".intern.to_s.equal?("string")'

$s_question33 =
  'p "string".intern.to_s.eql?("string")'

$s_question34 =
  'p "string".ljust(5, "?")'

$s_question35 =
  'p "string".rjust(10, "?")'

$s_question36 =
  'p "string    ".lstrip!'

$s_question37 =
  'p "string".partition("s")'

$s_question38 =
  'str =  "hello integer"
str.replace("hello string")
p str'

$s_question39 =
  'str =  "hello integer"
str.replace!("hello string")
p str'

$s_question40 =
  'p "aabbcccccc".squeeze'

$s_question41 =
  'p "string".squeeze!'

$s_question42 =
  'obj = "string"
obj.reverse
p obj'

$s_question43 =
  'obj = "string"
obj.reverse!.reverse
p obj'

$s_question44 =
  'obj = String.new("string")
obj.next
p obj'

$s_question45 =
  'obj = String.new("string")
obj.next!
p obj'

$s_question46 =
  'obj = String.new("    string   ")
obj.strip
p obj'

$s_question47 =
  'obj = "string"
p obj.strip!'

$s_question48 =
  'obj = "string"
p obj + obj'

$s_question49 =
  'obj = "string"
p obj - obj'

$s_question50 =
  'obj = "hello"
obj[1,2] = "string"
p obj'

$s_question51 =
  'obj = "string"
obj["string"] = "hello"
p obj'

$s_question52 =
  'obj = "strings"
obj["s"] = "hello"
p obj'

$s_question53 =
  'obj1 = "foo"
obj2 = obj1
obj1 += "bar"
p obj2'

$s_question54 =
  'obj1 = "hello"
obj1 += " world"
p obj1'

$s_question55 =
  'obj1 = "hello"
obj2 = "HELLO"
p obj1 == obj2'

$s_question56 =
  'obj1 = "hello"
obj2 = "HELLO"
p obj1 < obj2'

$s_question57 =
  'obj1 = "hello"
obj2 = "HELLO"
p obj1 << obj2'

$s_question58 =
  'obj1 = "world world"
p obj1.sub("world", "hello")'

$s_question59 =
  'obj1 = "string"
obj1.slice(3)
p obj1'

$s_question60 =
  'obj1 = "string"
obj1.slice!(3)
p obj1'

$s_question61 =
  'obj1 = "string"
p obj1[3...4]'

$s_question62 =
  'obj1 = "string"
p obj1[3..4]'

$s_question63 =
  'obj1 = "string"
obj1.slice!(2, 4)
p obj1'

$s_question64 =
  'obj1 = "string"
obj1.slice!(2, -4)
p obj1'

$s_question65 =
  'obj1 = "string"
obj1.slice!(2, -4)
p obj1'
