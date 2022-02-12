$other_question1=
  'p <<FLUITES
apple
orange
banana
FLUITES'

$other_question2 =
  'p <<FLUITES
apple
orange
banana
  FLUITES'

$other_question3 =
  'p <<-FLUITES
apple
orange
banana
  FLUITES'
  
$other_question4 =
  'a = "apple"

p <<"FLUITES"
#{a}
orange
banana
FLUITES'
  
$other_question5 =
  'a = "apple"

p <<"FLUITES"
#{a}
orange
banana
"FLUITES"'

  