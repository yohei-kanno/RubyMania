require("./db/fixtures/choices/regexp")
Choice.seed(:id,
            # r_question1(1)
            { id: 5001, content: $r_choice1, answer: true, question_id: 5001 },
            { id: 5002, content: $r_choice2, answer: false, question_id: 5001 },
            { id: 5003, content: $r_choice3, answer: false, question_id: 5001 },
            { id: 5004, content: $r_choice4, answer: false, question_id: 5001 },
            # r_question2(3)
            { id: 5005, content: $r_choice5, answer: false, question_id: 5002 },
            { id: 5006, content: $r_choice6, answer: false, question_id: 5002 },
            { id: 5007, content: $r_choice7, answer: true, question_id: 5002 },
            { id: 5008, content: $r_choice8, answer: false, question_id: 5002 },
            # r_question3(1)
            { id: 5009, content: $r_choice9, answer: true, question_id: 5003 },
            { id: 5010, content: $r_choice10, answer: false, question_id: 5003 },
            { id: 5011, content: $r_choice11, answer: false, question_id: 5003 },
            { id: 5012, content: $r_choice12, answer: false, question_id: 5003 },
            # r_question4(2)
            { id: 5013, content: $r_choice13, answer: false, question_id: 5004 },
            { id: 5014, content: $r_choice14, answer: true, question_id: 5004 },
            { id: 5015, content: $r_choice15, answer: false, question_id: 5004 },
            { id: 5016, content: $r_choice16, answer: false, question_id: 5004 },
            # r_question5(3)
            { id: 5017, content: $r_choice17, answer: false, question_id: 5005 },
            { id: 5018, content: $r_choice18, answer: false, question_id: 5005 },
            { id: 5019, content: $r_choice19, answer: true, question_id: 5005 },
            { id: 5020, content: $r_choice20, answer: false, question_id: 5005 },
            # r_question6(2)
            { id: 5021, content: $r_choice21, answer: false, question_id: 5006 },
            { id: 5022, content: $r_choice22, answer: true, question_id: 5006 },
            { id: 5023, content: $r_choice23, answer: false, question_id: 5006 },
            { id: 5024, content: $r_choice24, answer: false, question_id: 5006 },
            # r_question7(3)
            { id: 5025, content: $r_choice25, answer: false, question_id: 5007 },
            { id: 5026, content: $r_choice26, answer: false, question_id: 5007 },
            { id: 5027, content: $r_choice27, answer: true, question_id: 5007 },
            { id: 5028, content: $r_choice28, answer: false, question_id: 5007 },
            # r_question8(4)
            { id: 5029, content: $r_choice29, answer: false, question_id: 5008 },
            { id: 5030, content: $r_choice30, answer: false, question_id: 5008 },
            { id: 5031, content: $r_choice31, answer: false, question_id: 5008 },
            { id: 5032, content: $r_choice32, answer: true, question_id: 5008 },
            # r_question9(4)
            { id: 5033, content: $r_choice33, answer: false, question_id: 5009 },
            { id: 5034, content: $r_choice34, answer: false, question_id: 5009 },
            { id: 5035, content: $r_choice35, answer: false, question_id: 5009 },
            { id: 5036, content: $r_choice36, answer: true, question_id: 5009 },
            # r_question10(1)
            { id: 5037, content: $r_choice37, answer: true, question_id: 5010 },
            { id: 5038, content: $r_choice38, answer: false, question_id: 5010 },
            { id: 5039, content: $r_choice39, answer: false, question_id: 5010 },
            { id: 5040, content: $r_choice40, answer: false, question_id: 5010 },
            # r_question11(4)
            { id: 50041, content: $r_choice41, answer: false, question_id: 5011 },
            { id: 50042, content: $r_choice42, answer: false, question_id: 5011 },
            { id: 50043, content: $r_choice43, answer: false, question_id: 5011 },
            { id: 50044, content: $r_choice44, answer: true, question_id: 5011 },
            # r_question12(3)
            { id: 5045, content: $r_choice45, answer: false, question_id: 5012 },
            { id: 5046, content: $r_choice46, answer: false, question_id: 5012 },
            { id: 5047, content: $r_choice47, answer: true, question_id: 5012 },
            { id: 5048, content: $r_choice48, answer: false, question_id: 5012 },
            # r_question13(4)
            { id: 5049, content: $r_choice49, answer: false, question_id: 5013 },
            { id: 5050, content: $r_choice50, answer: false, question_id: 5013 },
            { id: 5051, content: $r_choice51, answer: false, question_id: 5013 },
            { id: 5052, content: $r_choice52, answer: true, question_id: 5013 },
            # r_question14(1)
            { id: 5053, content: $r_choice53, answer: true, question_id: 5014 },
            { id: 5054, content: $r_choice54, answer: false, question_id: 5014 },
            { id: 5055, content: $r_choice55, answer: false, question_id: 5014 },
            { id: 5056, content: $r_choice56, answer: false, question_id: 5014 },
            # r_question15(4)
            { id: 5057, content: $r_choice57, answer: false, question_id: 5015 },
            { id: 5058, content: $r_choice58, answer: false, question_id: 5015 },
            { id: 5059, content: $r_choice59, answer: false, question_id: 5015 },
            { id: 5060, content: $r_choice60, answer: true, question_id: 5015 },
            # r_question16(3)
            { id: 5061, content: $r_choice61, answer: false, question_id: 5016 },
            { id: 5062, content: $r_choice62, answer: false, question_id: 5016 },
            { id: 5063, content: $r_choice63, answer: true, question_id: 5016 },
            { id: 5064, content: $r_choice64, answer: false, question_id: 5016 },
            # r_question17(2)
            { id: 5065, content: $r_choice65, answer: false, question_id: 5017 },
            { id: 5066, content: $r_choice66, answer: true, question_id: 5017 },
            { id: 5067, content: $r_choice67, answer: false, question_id: 5017 },
            { id: 5068, content: $r_choice68, answer: false, question_id: 5017 },
            # r_question18(2)
            { id: 5069, content: $r_choice69, answer: false, question_id: 5018 },
            { id: 5070, content: $r_choice70, answer: true, question_id: 5018 },
            { id: 5071, content: $r_choice71, answer: false, question_id: 5018 },
            { id: 5072, content: $r_choice72, answer: false, question_id: 5018 },
            # r_question19(1)
            { id: 5073, content: $r_choice73, answer: true, question_id: 5019 },
            { id: 5074, content: $r_choice74, answer: false, question_id: 5019 },
            { id: 5075, content: $r_choice75, answer: false, question_id: 5019 },
            { id: 5076, content: $r_choice76, answer: false, question_id: 5019 },
            # r_question20(1)
            { id: 5077, content: $r_choice77, answer: true, question_id: 5020 },
            { id: 5078, content: $r_choice78, answer: false, question_id: 5020 },
            { id: 5079, content: $r_choice79, answer: false, question_id: 5020 },
            { id: 5080, content: $r_choice80, answer: false, question_id: 5020 },
            # r_question21(2)
            { id: 5081, content: $r_choice81, answer: false, question_id: 5021 },
            { id: 5082, content: $r_choice82, answer: true, question_id: 5021 },
            { id: 5083, content: $r_choice83, answer: false, question_id: 5021 },
            { id: 5084, content: $r_choice84, answer: false, question_id: 5021 },
            # r_question22(3)
            { id: 5085, content: $r_choice85, answer: false, question_id: 5022 },
            { id: 5086, content: $r_choice86, answer: false, question_id: 5022 },
            { id: 5087, content: $r_choice87, answer: true, question_id: 5022 },
            { id: 5088, content: $r_choice88, answer: false, question_id: 5022 },
            # r_question23(2)
            { id: 5089, content: $r_choice89, answer: false, question_id: 5023 },
            { id: 5090, content: $r_choice90, answer: true, question_id: 5023 },
            { id: 5091, content: $r_choice91, answer: false, question_id: 5023 },
            { id: 5092, content: $r_choice92, answer: false, question_id: 5023 },
            # r_question24(1)
            { id: 5093, content: $r_choice93, answer: true, question_id: 5024 },
            { id: 5094, content: $r_choice94, answer: false, question_id: 5024 },
            { id: 5095, content: $r_choice95, answer: false, question_id: 5024 },
            { id: 5096, content: $r_choice96, answer: false, question_id: 5024 },
            # r_question25(2)
            { id: 5097, content: $r_choice97, answer: false, question_id: 5025 },
            { id: 5098, content: $r_choice98, answer: true, question_id: 5025 },
            { id: 5099, content: $r_choice99, answer: false, question_id: 5025 },
            { id: 5010, content: $r_choice100, answer: false, question_id: 5025 },
            # r_question26(3)
            { id: 5101, content: $r_choice101, answer: false, question_id: 5026 },
            { id: 5102, content: $r_choice102, answer: false, question_id: 5026 },
            { id: 5103, content: $r_choice103, answer: true, question_id: 5026 },
            { id: 5104, content: $r_choice104, answer: false, question_id: 5026 },
            # r_question27(1)
            { id: 5105, content: $r_choice105, answer: true, question_id: 5027 },
            { id: 5106, content: $r_choice106, answer: false, question_id: 5027 },
            { id: 5107, content: $r_choice107, answer: false, question_id: 5027 },
            { id: 5108, content: $r_choice108, answer: false, question_id: 5027 },
            # r_question28(2)
            { id: 5109, content: $r_choice109, answer: false, question_id: 5028 },
            { id: 5110, content: $r_choice110, answer: true, question_id: 5028 },
            { id: 5111, content: $r_choice111, answer: false, question_id: 5028 },
            { id: 5112, content: $r_choice112, answer: false, question_id: 5028 },
            # r_question29(1)
            { id: 5113, content: $r_choice113, answer: true, question_id: 5029 },
            { id: 5114, content: $r_choice114, answer: false, question_id: 5029 },
            { id: 5115, content: $r_choice115, answer: false, question_id: 5029 },
            { id: 5116, content: $r_choice116, answer: false, question_id: 5029 },
            # r_question30(3)
            { id: 5117, content: $r_choice117, answer: false, question_id: 5030 },
            { id: 5118, content: $r_choice118, answer: false, question_id: 5030 },
            { id: 5119, content: $r_choice119, answer: true, question_id: 5030 },
            { id: 5120, content: $r_choice120, answer: false, question_id: 5030 },
            # r_question31(1)
            { id: 5121, content: $r_choice121, answer: true, question_id: 5031 },
            { id: 5122, content: $r_choice122, answer: false, question_id: 5031 },
            { id: 5123, content: $r_choice123, answer: false, question_id: 5031 },
            { id: 5124, content: $r_choice124, answer: false, question_id: 5031 },
            # r_question32(4)
            { id: 5125, content: $r_choice125, answer: false, question_id: 5032 },
            { id: 5126, content: $r_choice126, answer: false, question_id: 5032 },
            { id: 5127, content: $r_choice127, answer: false, question_id: 5032 },
            { id: 5128, content: $r_choice128, answer: true, question_id: 5032 },
            # r_question33(3)
            { id: 5129, content: $r_choice129, answer: false, question_id: 5033 },
            { id: 5130, content: $r_choice130, answer: false, question_id: 5033 },
            { id: 5131, content: $r_choice131, answer: true, question_id: 5033 },
            { id: 5132, content: $r_choice132, answer: false, question_id: 5033 },
            # r_question34(2)
            { id: 5133, content: $r_choice133, answer: false, question_id: 5034 },
            { id: 5134, content: $r_choice134, answer: true, question_id: 5034 },
            { id: 5135, content: $r_choice135, answer: false, question_id: 5034 },
            { id: 5136, content: $r_choice136, answer: false, question_id: 5034 },
            # r_question35(1)
            { id: 5137, content: $r_choice137, answer: true, question_id: 5035 },
            { id: 5138, content: $r_choice138, answer: false, question_id: 5035 },
            { id: 5139, content: $r_choice139, answer: false, question_id: 5035 },
            { id: 5140, content: $r_choice140, answer: false, question_id: 5035 },
            # r_question36(2)
            { id: 5141, content: $r_choice141, answer: false, question_id: 5036 },
            { id: 5142, content: $r_choice142, answer: true, question_id: 5036 },
            { id: 5143, content: $r_choice143, answer: false, question_id: 5036 },
            { id: 5144, content: $r_choice144, answer: false, question_id: 5036 },
            # r_question37(3)
            { id: 5145, content: $r_choice145, answer: false, question_id: 5037 },
            { id: 5146, content: $r_choice146, answer: false, question_id: 5037 },
            { id: 5147, content: $r_choice147, answer: true, question_id: 5037 },
            { id: 5148, content: $r_choice148, answer: false, question_id: 5037 },
            # r_question38(4)
            { id: 5149, content: $r_choice149, answer: false, question_id: 5038 },
            { id: 5150, content: $r_choice150, answer: false, question_id: 5038 },
            { id: 5151, content: $r_choice151, answer: false, question_id: 5038 },
            { id: 5152, content: $r_choice152, answer: true, question_id: 5038 },
            # r_question39(1)
            { id: 5153, content: $r_choice153, answer: true, question_id: 5039 },
            { id: 5154, content: $r_choice154, answer: false, question_id: 5039 },
            { id: 5155, content: $r_choice155, answer: false, question_id: 5039 },
            { id: 5156, content: $r_choice156, answer: false, question_id: 5039 },
            # r_question40(1)
            { id: 5157, content: $r_choice157, answer: true, question_id: 5040 },
            { id: 5158, content: $r_choice158, answer: false, question_id: 5040 },
            { id: 5159, content: $r_choice159, answer: false, question_id: 5040 },
            { id: 5160, content: $r_choice160, answer: false, question_id: 5040 },
            # r_question41(2)
            { id: 5161, content: $r_choice161, answer: false, question_id: 5041 },
            { id: 5162, content: $r_choice162, answer: true, question_id: 5041 },
            { id: 5163, content: $r_choice163, answer: false, question_id: 5041 },
            { id: 5164, content: $r_choice164, answer: false, question_id: 5041 },
            # r_question42(1)
            { id: 5165, content: $r_choice165, answer: true, question_id: 5042 },
            { id: 5166, content: $r_choice166, answer: false, question_id: 5042 },
            { id: 5167, content: $r_choice167, answer: false, question_id: 5042 },
            { id: 5168, content: $r_choice168, answer: false, question_id: 5042 },
            # r_question43(4)
            { id: 5169, content: $r_choice169, answer: false, question_id: 5043 },
            { id: 5170, content: $r_choice170, answer: false, question_id: 5043 },
            { id: 5171, content: $r_choice171, answer: false, question_id: 5043 },
            { id: 5172, content: $r_choice172, answer: true, question_id: 5043 },
            # r_question44(3)
            { id: 5173, content: $r_choice173, answer: false, question_id: 5044 },
            { id: 5174, content: $r_choice174, answer: false, question_id: 5044 },
            { id: 5175, content: $r_choice175, answer: true, question_id: 5044 },
            { id: 5176, content: $r_choice176, answer: false, question_id: 5044 },
            # r_question45(1)
            { id: 5177, content: $r_choice177, answer: true, question_id: 5045 },
            { id: 5178, content: $r_choice178, answer: false, question_id: 5045 },
            { id: 5179, content: $r_choice179, answer: false, question_id: 5045 },
            { id: 5180, content: $r_choice180, answer: false, question_id: 5045 },
            # r_question46(2)
            { id: 5181, content: $r_choice181, answer: false, question_id: 5046 },
            { id: 5182, content: $r_choice182, answer: true, question_id: 5046 },
            { id: 5183, content: $r_choice183, answer: false, question_id: 5046 },
            { id: 5184, content: $r_choice184, answer: false, question_id: 5046 },
            # r_question47(3)
            { id: 5185, content: $r_choice185, answer: false, question_id: 5047 },
            { id: 5186, content: $r_choice186, answer: false, question_id: 5047 },
            { id: 5187, content: $r_choice187, answer: true, question_id: 5047 },
            { id: 5188, content: $r_choice188, answer: false, question_id: 5047 },
            # r_question48(4)
            { id: 5189, content: $r_choice189, answer: false, question_id: 5048 },
            { id: 5190, content: $r_choice190, answer: false, question_id: 5048 },
            { id: 5191, content: $r_choice191, answer: false, question_id: 5048 },
            { id: 5192, content: $r_choice192, answer: true, question_id: 5048 },
            # r_question49(1)
            { id: 5193, content: $r_choice193, answer: true, question_id: 5049 },
            { id: 5194, content: $r_choice194, answer: false, question_id: 5049 },
            { id: 5195, content: $r_choice195, answer: false, question_id: 5049 },
            { id: 5196, content: $r_choice196, answer: false, question_id: 5049 },
            # r_question50(2)
            { id: 5197, content: $r_choice197, answer: false, question_id: 5050 },
            { id: 5198, content: $r_choice198, answer: true, question_id: 5050 },
            { id: 5199, content: $r_choice199, answer: false, question_id: 5050 },
            { id: 5200, content: $r_choice200, answer: false, question_id: 5050 },
            # r_question51(2)
            { id: 5201, content: $r_choice201, answer: false, question_id: 5051 },
            { id: 5202, content: $r_choice202, answer: true, question_id: 5051 },
            { id: 5203, content: $r_choice203, answer: false, question_id: 5051 },
            { id: 5204, content: $r_choice204, answer: false, question_id: 5051 },
            # r_question52(2)
            { id: 5205, content: $r_choice205, answer: false, question_id: 5052 },
            { id: 5206, content: $r_choice206, answer: false, question_id: 5052 },
            { id: 5207, content: $r_choice207, answer: true, question_id: 5052 },
            { id: 5208, content: $r_choice208, answer: false, question_id: 5052 },
            # r_question53(4)
            { id: 5209, content: $r_choice209, answer: false, question_id: 5053 },
            { id: 5210, content: $r_choice210, answer: false, question_id: 5053 },
            { id: 5211, content: $r_choice211, answer: false, question_id: 5053 },
            { id: 5212, content: $r_choice212, answer: true, question_id: 5053 },
            # r_question54(2)
            { id: 5213, content: $r_choice213, answer: false, question_id: 5054 },
            { id: 5214, content: $r_choice214, answer: false, question_id: 5054 },
            { id: 5215, content: $r_choice215, answer: true, question_id: 5054 },
            { id: 5216, content: $r_choice216, answer: false, question_id: 5054 },
            # r_question55(4)
            { id: 5217, content: $r_choice217, answer: false, question_id: 5055 },
            { id: 5218, content: $r_choice218, answer: false, question_id: 5055 },
            { id: 5219, content: $r_choice219, answer: false, question_id: 5055 },
            { id: 5220, content: $r_choice220, answer: true, question_id: 5055 },
            # r_question56(1)
            { id: 5221, content: $r_choice221, answer: true, question_id: 5056 },
            { id: 5222, content: $r_choice222, answer: false, question_id: 5056 },
            { id: 5223, content: $r_choice223, answer: false, question_id: 5056 },
            { id: 5224, content: $r_choice224, answer: false, question_id: 5056 },
            # r_question57(3)
            { id: 5225, content: $r_choice225, answer: false, question_id: 5057 },
            { id: 5226, content: $r_choice226, answer: false, question_id: 5057 },
            { id: 5227, content: $r_choice227, answer: true, question_id: 5057 },
            { id: 5228, content: $r_choice228, answer: false, question_id: 5057 },
            # r_question58(1)
            { id: 5229, content: $r_choice229, answer: true, question_id: 5058 },
            { id: 5230, content: $r_choice230, answer: false, question_id: 5058 },
            { id: 5231, content: $r_choice231, answer: false, question_id: 5058 },
            { id: 5232, content: $r_choice232, answer: false, question_id: 5058 },
            # r_question59(2)
            { id: 5233, content: $r_choice233, answer: false, question_id: 5059 },
            { id: 5234, content: $r_choice234, answer: true, question_id: 5059 },
            { id: 5235, content: $r_choice235, answer: false, question_id: 5059 },
            { id: 5236, content: $r_choice236, answer: false, question_id: 5059 })