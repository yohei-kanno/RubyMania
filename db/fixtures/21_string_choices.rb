require("./db/fixtures/choices/string")
Choice.seed(:id,
            # s_question1(3)
            { id: 1, content: $s_choice1, answer: false, question_id: 1 },
            { id: 2, content: $s_choice2, answer: false, question_id: 1 },
            { id: 3, content: $s_choice3, answer: true, question_id: 1 },
            { id: 4, content: $s_choice4, answer: false, question_id: 1 },
            # s_question2(2)
            { id: 5, content: $s_choice5, answer: false, question_id: 2 },
            { id: 6, content: $s_choice6, answer: true, question_id: 2 },
            { id: 7, content: $s_choice7, answer: false, question_id: 2 },
            { id: 8, content: $s_choice8, answer: false, question_id: 2 },
            # s_question3(1)
            { id: 9, content: $s_choice9, answer: true, question_id: 3 },
            { id: 10, content: $s_choice10, answer: false, question_id: 3 },
            { id: 11, content: $s_choice11, answer: false, question_id: 3 },
            { id: 12, content: $s_choice12, answer: false, question_id: 3 },
            # s_question4(1)
            { id: 13, content: $s_choice13, answer: true, question_id: 4 },
            { id: 14, content: $s_choice14, answer: false, question_id: 4 },
            { id: 15, content: $s_choice15, answer: false, question_id: 4 },
            { id: 16, content: $s_choice16, answer: false, question_id: 4 },
            # s_question5(2)
            { id: 17, content: $s_choice17, answer: false, question_id: 5 },
            { id: 18, content: $s_choice18, answer: true, question_id: 5 },
            { id: 19, content: $s_choice19, answer: false, question_id: 5 },
            { id: 20, content: $s_choice20, answer: false, question_id: 5 },
            # s_question6(1)
            { id: 21, content: $s_choice21, answer: true, question_id: 6 },
            { id: 22, content: $s_choice22, answer: false, question_id: 6 },
            { id: 23, content: $s_choice23, answer: false, question_id: 6 },
            { id: 24, content: $s_choice24, answer: false, question_id: 6 },
            # s_question7(2)
            { id: 25, content: $s_choice25, answer: false, question_id: 7 },
            { id: 26, content: $s_choice26, answer: false, question_id: 7 },
            { id: 27, content: $s_choice27, answer: true, question_id: 7 },
            { id: 28, content: $s_choice28, answer: false, question_id: 7 },
            # s_question8(4)
            { id: 29, content: $s_choice29, answer: false, question_id: 8 },
            { id: 30, content: $s_choice30, answer: false, question_id: 8 },
            { id: 31, content: $s_choice31, answer: false, question_id: 8 },
            { id: 32, content: $s_choice32, answer: true, question_id: 8 },
            # s_question9(3)
            { id: 33, content: $s_choice33, answer: false, question_id: 9 },
            { id: 34, content: $s_choice34, answer: false, question_id: 9 },
            { id: 35, content: $s_choice35, answer: true, question_id: 9 },
            { id: 36, content: $s_choice36, answer: false, question_id: 9 },
            # s_question10(1)
            { id: 37, content: $s_choice37, answer: true, question_id: 10 },
            { id: 38, content: $s_choice38, answer: false, question_id: 10 },
            { id: 39, content: $s_choice39, answer: false, question_id: 10 },
            { id: 40, content: $s_choice40, answer: false, question_id: 10 },
            # s_question11(2)
            { id: 41, content: $s_choice41, answer: false, question_id: 11 },
            { id: 42, content: $s_choice42, answer: true, question_id: 11 },
            { id: 43, content: $s_choice43, answer: false, question_id: 11 },
            { id: 44, content: $s_choice44, answer: false, question_id: 11 },
            # s_question12(1)
            { id: 45, content: $s_choice45, answer: true, question_id: 12 },
            { id: 46, content: $s_choice46, answer: false, question_id: 12 },
            { id: 47, content: $s_choice47, answer: false, question_id: 12 },
            { id: 48, content: $s_choice48, answer: false, question_id: 12 },
            # s_question13(1)
            { id: 49, content: $s_choice49, answer: true, question_id: 13 },
            { id: 50, content: $s_choice50, answer: false, question_id: 13 },
            { id: 51, content: $s_choice51, answer: false, question_id: 13 },
            { id: 52, content: $s_choice52, answer: false, question_id: 13 },
            # s_question14(1)
            { id: 53, content: $s_choice53, answer: true, question_id: 14 },
            { id: 54, content: $s_choice54, answer: false, question_id: 14 },
            { id: 55, content: $s_choice55, answer: false, question_id: 14 },
            { id: 56, content: $s_choice56, answer: false, question_id: 14 },
            # s_question15(2)
            { id: 57, content: $s_choice57, answer: false, question_id: 15 },
            { id: 58, content: $s_choice58, answer: true, question_id: 15 },
            { id: 59, content: $s_choice59, answer: false, question_id: 15 },
            { id: 60, content: $s_choice60, answer: false, question_id: 15 },
            # s_question16(4)
            { id: 61, content: $s_choice61, answer: false, question_id: 16 },
            { id: 62, content: $s_choice62, answer: false, question_id: 16 },
            { id: 63, content: $s_choice63, answer: false, question_id: 16 },
            { id: 64, content: $s_choice64, answer: true, question_id: 16 },
            # s_question17(3)
            { id: 65, content: $s_choice65, answer: false, question_id: 17 },
            { id: 66, content: $s_choice66, answer: false, question_id: 17 },
            { id: 67, content: $s_choice67, answer: true, question_id: 17 },
            { id: 68, content: $s_choice68, answer: false, question_id: 17 },
            # s_question18(3)
            { id: 69, content: $s_choice69, answer: false, question_id: 18 },
            { id: 70, content: $s_choice70, answer: false, question_id: 18 },
            { id: 71, content: $s_choice71, answer: true, question_id: 18 },
            { id: 72, content: $s_choice72, answer: false, question_id: 18 },
            # s_question19(1)
            { id: 73, content: $s_choice73, answer: true, question_id: 19 },
            { id: 74, content: $s_choice74, answer: false, question_id: 19 },
            { id: 75, content: $s_choice75, answer: false, question_id: 19 },
            { id: 76, content: $s_choice76, answer: false, question_id: 19 },
            # s_question20(2)
            { id: 77, content: $s_choice77, answer: false, question_id: 20 },
            { id: 78, content: $s_choice78, answer: true, question_id: 20 },
            { id: 79, content: $s_choice79, answer: false, question_id: 20 },
            { id: 80, content: $s_choice80, answer: false, question_id: 20 },
            # s_question21(2)
            { id: 81, content: $s_choice81, answer: false, question_id: 21 },
            { id: 82, content: $s_choice82, answer: true, question_id: 21 },
            { id: 83, content: $s_choice83, answer: false, question_id: 21 },
            { id: 84, content: $s_choice84, answer: false, question_id: 21 },
            # s_question22(2)
            { id: 85, content: $s_choice85, answer: false, question_id: 22 },
            { id: 86, content: $s_choice86, answer: true, question_id: 22 },
            { id: 87, content: $s_choice87, answer: false, question_id: 22 },
            { id: 88, content: $s_choice88, answer: false, question_id: 22 },
            # s_question23(3)
            { id: 89, content: $s_choice89, answer: false, question_id: 23 },
            { id: 90, content: $s_choice90, answer: false, question_id: 23 },
            { id: 91, content: $s_choice91, answer: true, question_id: 23 },
            { id: 92, content: $s_choice92, answer: false, question_id: 23 },
            # s_question24(1)
            { id: 93, content: $s_choice93, answer: true, question_id: 24 },
            { id: 94, content: $s_choice94, answer: false, question_id: 24 },
            { id: 95, content: $s_choice95, answer: false, question_id: 24 },
            { id: 96, content: $s_choice96, answer: false, question_id: 24 },
            # s_question25(1)
            { id: 97, content: $s_choice97, answer: true, question_id: 25 },
            { id: 98, content: $s_choice98, answer: false, question_id: 25 },
            { id: 99, content: $s_choice99, answer: false, question_id: 25 },
            { id: 100,  content: $s_choice100, answer: false, question_id: 25 },
            # s_question26(4)
            { id: 101,  content: $s_choice101, answer: false, question_id: 26 },
            { id: 102,  content: $s_choice102, answer: false, question_id: 26 },
            { id: 103,  content: $s_choice103, answer: false, question_id: 26 },
            { id: 104,  content: $s_choice104, answer: true, question_id: 26 },
            # s_question27(2)
            { id: 105,  content: $s_choice105, answer: false, question_id: 27 },
            { id: 106,  content: $s_choice106, answer: true, question_id: 27 },
            { id: 107,  content: $s_choice107, answer: false, question_id: 27 },
            { id: 108,  content: $s_choice108, answer: false, question_id: 27 },
            # s_question28(3)
            { id: 109,  content: $s_choice109, answer: false, question_id: 28 },
            { id: 110,  content: $s_choice110, answer: false, question_id: 28 },
            { id: 111,  content: $s_choice111, answer: true, question_id: 28 },
            { id: 112, content: $s_choice112, answer: false, question_id: 28 },
            # s_question29(4)
            { id: 113, content: $s_choice113, answer: false, question_id: 29 },
            { id: 114, content: $s_choice114, answer: false, question_id: 29 },
            { id: 115, content: $s_choice115, answer: false, question_id: 29 },
            { id: 116, content: $s_choice116, answer: true, question_id: 29 },
            # s_question30(2)
            { id: 117, content: $s_choice117, answer: false, question_id: 30 },
            { id: 118, content: $s_choice118, answer: true, question_id: 30 },
            { id: 119, content: $s_choice119, answer: false, question_id: 30 },
            { id: 120, content: $s_choice120, answer: false, question_id: 30 },
            # s_question31(2)
            { id: 121, content: $s_choice121, answer: false, question_id: 31 },
            { id: 122, content: $s_choice122, answer: true, question_id: 31 },
            { id: 123, content: $s_choice123, answer: false, question_id: 31 },
            { id: 124, content: $s_choice124, answer: false, question_id: 31 },
            # s_question32(3)
            { id: 125, content: $s_choice125, answer: false, question_id: 32 },
            { id: 126, content: $s_choice126, answer: false, question_id: 32 },
            { id: 127, content: $s_choice127, answer: true, question_id: 32 },
            { id: 128, content: $s_choice128, answer: false, question_id: 32 },
            # s_question33(2)
            { id: 129, content: $s_choice129, answer: false, question_id: 33 },
            { id: 130, content: $s_choice130, answer: true, question_id: 33 },
            { id: 131, content: $s_choice131, answer: false, question_id: 33 },
            { id: 132, content: $s_choice132, answer: false, question_id: 33 },
            # s_question34(1)
            { id: 133, content: $s_choice133, answer: true, question_id: 34 },
            { id: 134, content: $s_choice134, answer: false, question_id: 34 },
            { id: 135, content: $s_choice135, answer: false, question_id: 34 },
            { id: 136, content: $s_choice136, answer: false, question_id: 34 },
            # s_question35(3)
            { id: 137, content: $s_choice137, answer: false, question_id: 35 },
            { id: 138, content: $s_choice138, answer: false, question_id: 35 },
            { id: 139, content: $s_choice139, answer: true, question_id: 35 },
            { id: 140, content: $s_choice140, answer: false, question_id: 35 },
            # s_question36(3)
            { id: 141, content: $s_choice141, answer: false, question_id: 36 },
            { id: 142, content: $s_choice142, answer: false, question_id: 36 },
            { id: 143, content: $s_choice143, answer: true, question_id: 36 },
            { id: 144, content: $s_choice144, answer: false, question_id: 36 },
            # s_question37(4)
            { id: 145, content: $s_choice145, answer: false, question_id: 37 },
            { id: 146, content: $s_choice146, answer: false, question_id: 37 },
            { id: 147, content: $s_choice147, answer: false, question_id: 37 },
            { id: 148, content: $s_choice148, answer: true, question_id: 37 },
            # s_question38(1)
            { id: 149, content: $s_choice149, answer: true, question_id: 38 },
            { id: 150, content: $s_choice150, answer: false, question_id: 38 },
            { id: 151, content: $s_choice151, answer: false, question_id: 38 },
            { id: 152, content: $s_choice152, answer: false, question_id: 38 },
            # s_question39(3)
            { id: 153, content: $s_choice153, answer: false, question_id: 39 },
            { id: 154, content: $s_choice154, answer: false, question_id: 39 },
            { id: 155, content: $s_choice155, answer: true, question_id: 39 },
            { id: 156, content: $s_choice156, answer: false, question_id: 39 },
            # s_question40(2)
            { id: 157, content: $s_choice157, answer: false, question_id: 40 },
            { id: 158, content: $s_choice158, answer: true, question_id: 40 },
            { id: 159, content: $s_choice159, answer: false, question_id: 40 },
            { id: 160, content: $s_choice160, answer: false, question_id: 40 },
            # s_question41(4)
            { id: 161, content: $s_choice161, answer: false, question_id: 41 },
            { id: 162, content: $s_choice162, answer: false, question_id: 41 },
            { id: 163, content: $s_choice163, answer: false, question_id: 41 },
            { id: 164, content: $s_choice164, answer: true, question_id: 41 },
            # s_question42(1)
            { id: 165, content: $s_choice165, answer: true, question_id: 42 },
            { id: 166, content: $s_choice166, answer: false, question_id: 42 },
            { id: 167, content: $s_choice167, answer: false, question_id: 42 },
            { id: 168, content: $s_choice168, answer: false, question_id: 42 },
            # s_question43(2)
            { id: 169, content: $s_choice169, answer: false, question_id: 43 },
            { id: 170, content: $s_choice170, answer: true, question_id: 43 },
            { id: 171, content: $s_choice171, answer: false, question_id: 43 },
            { id: 172, content: $s_choice172, answer: false, question_id: 43 },
            # s_question44(1)
            { id: 173, content: $s_choice173, answer: true, question_id: 44 },
            { id: 174, content: $s_choice174, answer: false, question_id: 44 },
            { id: 175, content: $s_choice175, answer: false, question_id: 44 },
            { id: 176, content: $s_choice176, answer: false, question_id: 44 },
            # s_question45(2)
            { id: 177, content: $s_choice177, answer: false, question_id: 45 },
            { id: 178, content: $s_choice178, answer: true, question_id: 45 },
            { id: 179, content: $s_choice179, answer: false, question_id: 45 },
            { id: 180, content: $s_choice180, answer: false, question_id: 45 },
            # s_question46(4)
            { id: 181, content: $s_choice181, answer: false, question_id: 46 },
            { id: 182, content: $s_choice182, answer: false, question_id: 46 },
            { id: 183, content: $s_choice183, answer: false, question_id: 46 },
            { id: 184, content: $s_choice184, answer: true, question_id: 46 },
            # s_question47(4)
            { id: 185, content: $s_choice185, answer: false, question_id: 47 },
            { id: 186, content: $s_choice186, answer: false, question_id: 47 },
            { id: 187, content: $s_choice187, answer: false, question_id: 47 },
            { id: 188, content: $s_choice188, answer: true, question_id: 47 },
            # s_question48(2)
            { id: 189, content: $s_choice189, answer: false, question_id: 48 },
            { id: 190, content: $s_choice190, answer: true, question_id: 48 },
            { id: 191, content: $s_choice191, answer: false, question_id: 48 },
            { id: 192, content: $s_choice192, answer: false, question_id: 48 },
            # s_question49(4)
            { id: 193, content: $s_choice193, answer: false, question_id: 49 },
            { id: 194, content: $s_choice194, answer: false, question_id: 49 },
            { id: 195, content: $s_choice195, answer: false, question_id: 49 },
            { id: 196, content: $s_choice196, answer: true, question_id: 49 },
            # s_question50(3)
            { id: 197, content: $s_choice197, answer: false, question_id: 50 },
            { id: 198, content: $s_choice198, answer: false, question_id: 50 },
            { id: 199, content: $s_choice199, answer: true, question_id: 50 },
            { id: 200, content: $s_choice200, answer: false, question_id: 50 },
            # s_question51(2)
            { id: 201, content: $s_choice201, answer: false, question_id: 51 },
            { id: 202, content: $s_choice202, answer: true, question_id: 51 },
            { id: 203, content: $s_choice203, answer: false, question_id: 51 },
            { id: 204, content: $s_choice204, answer: false, question_id: 51 },
            # s_question52(2)
            { id: 205, content: $s_choice205, answer: false, question_id: 52 },
            { id: 206, content: $s_choice206, answer: true, question_id: 52 },
            { id: 207, content: $s_choice207, answer: false, question_id: 52 },
            { id: 208, content: $s_choice208, answer: false, question_id: 52 },
            # s_question53(1)
            { id: 209, content: $s_choice209, answer: true, question_id: 53 },
            { id: 210, content: $s_choice210, answer: false, question_id: 53 },
            { id: 211, content: $s_choice211, answer: false, question_id: 53 },
            { id: 212, content: $s_choice212, answer: false, question_id: 53 },
            # s_question54(3)
            { id: 213, content: $s_choice213, answer: false, question_id: 54 },
            { id: 214, content: $s_choice214, answer: false, question_id: 54 },
            { id: 215, content: $s_choice215, answer: true, question_id: 54 },
            { id: 216, content: $s_choice216, answer: false, question_id: 54 },
            # s_question55(4)
            { id: 217, content: $s_choice217, answer: false, question_id: 55 },
            { id: 218, content: $s_choice218, answer: false, question_id: 55 },
            { id: 219, content: $s_choice219, answer: false, question_id: 55 },
            { id: 220, content: $s_choice220, answer: true, question_id: 55 },
            # s_question56(4)
            { id: 221, content: $s_choice221, answer: false, question_id: 56 },
            { id: 222, content: $s_choice222, answer: false, question_id: 56 },
            { id: 223, content: $s_choice223, answer: false, question_id: 56 },
            { id: 224, content: $s_choice224, answer: true, question_id: 56 },
            # s_question57(2)
            { id: 225, content: $s_choice225, answer: false, question_id: 57 },
            { id: 226, content: $s_choice226, answer: true, question_id: 57 },
            { id: 227, content: $s_choice227, answer: false, question_id: 57 },
            { id: 228, content: $s_choice228, answer: false, question_id: 57 },
            # s_question58(3)
            { id: 229, content: $s_choice229, answer: false, question_id: 58 },
            { id: 230, content: $s_choice230, answer: false, question_id: 58 },
            { id: 231, content: $s_choice231, answer: true, question_id: 58 },
            { id: 232, content: $s_choice232, answer: false, question_id: 58 },
            # s_question59(1)
            { id: 233, content: $s_choice233, answer: true, question_id: 59 },
            { id: 234, content: $s_choice234, answer: false, question_id: 59 },
            { id: 235, content: $s_choice235, answer: false, question_id: 59 },
            { id: 236, content: $s_choice236, answer: false, question_id: 59 },
            # s_question60(2)
            { id: 237, content: $s_choice237, answer: false, question_id: 60 },
            { id: 238, content: $s_choice238, answer: true, question_id: 60 },
            { id: 239, content: $s_choice239, answer: false, question_id: 60 },
            { id: 240, content: $s_choice240, answer: false, question_id: 60 },
            # s_question61(4)
            { id: 241, content: $s_choice241, answer: false, question_id: 61 },
            { id: 242, content: $s_choice242, answer: false, question_id: 61 },
            { id: 243, content: $s_choice243, answer: false, question_id: 61 },
            { id: 244, content: $s_choice244, answer: true, question_id: 61 },
            # s_question62(3)
            { id: 245, content: $s_choice245, answer: false, question_id: 62 },
            { id: 246, content: $s_choice246, answer: false, question_id: 62 },
            { id: 247, content: $s_choice247, answer: true, question_id: 62 },
            { id: 248, content: $s_choice248, answer: false, question_id: 62 },
            # s_question63(4)
            { id: 249, content: $s_choice249, answer: false, question_id: 63 },
            { id: 250, content: $s_choice250, answer: false, question_id: 63 },
            { id: 251, content: $s_choice251, answer: false, question_id: 63 },
            { id: 252, content: $s_choice252, answer: true, question_id: 63 },
            # s_question64(1)
            { id: 253, content: $s_choice253, answer: true, question_id: 64 },
            { id: 254, content: $s_choice254, answer: false, question_id: 64 },
            { id: 255, content: $s_choice255, answer: false, question_id: 64 },
            { id: 256, content: $s_choice256, answer: false, question_id: 64 },
            # s_question65(1)
            { id: 257, content: $s_choice257, answer: true, question_id: 65 },
            { id: 258, content: $s_choice258, answer: false, question_id: 65 },
            { id: 259, content: $s_choice259, answer: false, question_id: 65 },
            { id: 260, content: $s_choice260, answer: false, question_id: 65 })
