$other_title1 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question1=
  'p <<FLUITES
apple
orange
banana
FLUITES'

$other_title2 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question2 =
  'p <<FLUITES
apple
orange
banana
  FLUITES'

$other_title3 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question3 =
  'p <<-FLUITES
apple
orange
banana
  FLUITES'
 
$other_title4 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question4 =
  'a = "apple"

p <<"FLUITES"
#{a}
orange
banana
FLUITES'

$other_title5 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question5 =
  'a = "apple"

p <<"FLUITES"
#{a}
orange
banana
"FLUITES"'

$other_title6 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question6 =
  'begin
  1/0
rescue ZeroDivisionError
  p "0では割れません"
end'

$other_title7 = '以下のコードの実行結果として適切なものを選びなさい'
$other_question7 =
  'begin
  raise
rescue ZeroDivisionError
  p "0では割れません"
rescue exception
  p "例外です"
end'
  