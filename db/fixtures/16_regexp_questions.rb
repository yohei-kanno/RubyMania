require("./db/fixtures/questions/regexp")

title = '以下のコードの実行結果として適切なものを選びなさい'
Question.seed(:id,
              { id: 5001, title: title, content: $r_question1 })