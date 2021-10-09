$r_question1 =
  'obj = "123"
p obj.match(/\d/)'

$r_question2 =
  'obj = /123/
p obj.class'

$r_question3 =
  'obj = /123/
p obj.frozen?'

$r_question4 =
  'obj = Regexp.new("123")
p obj.frozen?'

$r_question5 =
  'obj = "123"
p obj.match(/.../)'

$r_question6 =
  'obj = "123"
p obj.match(/\d{1,2}/)'

$r_question7 =
  'obj = "123"
p obj.match(/\d{1,4}/)'

$r_question8 =
  'obj = "123"
p obj.match(/\d{4,4}/)'

$r_question9 =
  'obj = "123"
p obj.match(/\d{4}/)'

$r_question10 =
  'obj = "abcde"
p obj.match(/[^a]/)'

$r_question11 =
  'obj = "abcde"
p obj.match(/[^ab]/)'

$r_question12 =
  'obj = "abcde"
p obj.scan(/[^ab]/).class'

$r_question13 =
  'obj = "abcde"
p obj.scan(/[^a]/)'

$r_question14 =
  'obj = "abcde"
p obj.match?(/abc[ ]?de/)'

$r_question15 =
  'obj = "abcde"
p obj.match?(/abc[]?de/)'

$r_question16 =
  'obj = "abc123 ABC"
p obj.scan(/\w/).count'

$r_question17 =
  'obj = "abc123 ABC"
p obj.scan(/\w{1,3}/).count'

$r_question18 =
  'obj = "abc123 ABC"
p obj.scan(/\w\w/).count'

$r_question19 =
  'obj = "abc123 ABC"
p obj.scan(/\W/).count'

$r_question20 =
  'obj = "abc123 ABC"
p obj.scan(/\s/).count'

$r_question21 =
  'obj = "abc123
 ABC"
p obj.scan(/\s/).count'

$r_question22 =
  'obj = "abc123 ABC"
p obj.scan(/\S/).count'

$r_question23 =
  'obj = "abc123ABC"
p obj.scan(/\D/).count'

$r_question24 =
  '/yy/ =~ "xxyyzz"
p $`'

$r_question25 =
  '/yy/ =~ "xxyyzz"
p $&'

$r_question26 =
  '/yy/ =~ "xxyyzz"
p $''

$r_question27 =
  'p /abcde/i === "AbCDE"'

$r_question28 =
  'p /xxy{2}zz/ === "xxyzz"'

$r_question29 =
  'obj = "a1111"
p obj.scan(/\A\d*/)'

$r_question30 =
  'obj = "aaa1111"
p obj.scan(/\d+\z/)'

$r_question31 =
  'obj = "aaa1111aaa"
p obj.scan(/\d+\z/) '

$r_question32 =
  'obj = "1,11,111,1111,11111"
p obj.scan(/\d{2,5}/)'

$r_question33 =
  'obj = "1,11,111,1111,11111"
p obj.scan(/\d{3,}/)'

$r_question34 =
  'obj = "1,11,111,1111,11111"
p obj.scan(/\d{4}/)'

$r_question35 =
  '%r[(https://(\w*)(\.)(.*)/)] =~ "https://www.rubymania.info/"
p $1'

$r_question36 =
  '%r[(https://(\w*)(\.)(.*)/)] =~ "https://www.rubymania.info/"
p $2'

$r_question37 =
  '%r[(https://(\w*)(\.)(.*)/)] =~ "https://www.rubymania.info/"
  p $3'

$r_question38 =
  '%r[(https://(\w*)(\.)(.*)/)] =~ "https://www.rubymania.info/"
  p $4'

$r_question39 =
  '%r[(https://(\w*)(\.)(.*)/)] =~ "https://www.rubymania.info/"
  p $5'

$r_question40 =
  'obj = "RUbyMania"
p obj.scan(/rubymania/)'

$r_question41 =
  'obj = "RUbyMania"
p obj.scan(/rubymania/i)'

$r_question42 =
  '\t'

$r_question43 =
  '\n'

$r_question44 =
  '\v'

$r_question45 =
  '\w'

$r_question46 =
  '\W'

$r_question47 =
  '\d'

$r_question48 =
  '\D'

$r_question49 =
  '\s'

$r_question50 =
  '\S'

$r_question51 =
  '\A'

$r_question52 =
  '\z'

$r_question53 =
  '\Z'

$r_question54 =
  '*'

$r_question55 =
  '+'

$r_question56 =
  '?'

$r_question57 =
  '{n}'

$r_question58 =
  '{n,}'

$r_question59 =
  '{,n}'