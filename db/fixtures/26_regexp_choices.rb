require("./db/fixtures/choices/regexp")
Choice.seed(:id,
            # r_question1(3)
            { id: 5001, content: $r_choice1, answer: true, question_id: 5001 },
            { id: 5002, content: $r_choice2, answer: false, question_id: 5001 },
            { id: 5003, content: $r_choice3, answer: false, question_id: 5001 },
            { id: 5004, content: $r_choice4, answer: false, question_id: 5001 })