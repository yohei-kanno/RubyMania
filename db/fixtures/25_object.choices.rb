require("./db/fixtures/choices/object")
Choice.seed(:id,
            # o_question1(3)
            { id: 4001, content: $o_choice1, answer: false, question_id: 4001 },
            { id: 4002, content: $o_choice2, answer: false, question_id: 4001 },
            { id: 4003, content: $o_choice3, answer: true, question_id: 4001 },
            { id: 4004, content: $o_choice4, answer: false, question_id: 4001 },
            # o_question2(3)
            { id: 4005, content: $o_choice5, answer: false, question_id: 4002 },
            { id: 4006, content: $o_choice6, answer: false, question_id: 4002 },
            { id: 4007, content: $o_choice7, answer: true, question_id: 4002 },
            { id: 4008, content: $o_choice8, answer: false, question_id: 4002 },
            # o_question3(4)
            { id: 4009, content: $o_choice9, answer: false, question_id: 4003 },
            { id: 4010, content: $o_choice10, answer: false, question_id: 4003 },
            { id: 4011, content: $o_choice11, answer: false, question_id: 4003 },
            { id: 4012, content: $o_choice12, answer: true, question_id: 4003 },
            # o_question4(1)
            { id: 4013, content: $o_choice13, answer: true, question_id: 4004 },
            { id: 4014, content: $o_choice14, answer: false, question_id: 4004 },
            { id: 4015, content: $o_choice15, answer: false, question_id: 4004 },
            { id: 4016, content: $o_choice16, answer: false, question_id: 4004 },
            # o_question5(4)
            { id: 4017, content: $o_choice17, answer: false, question_id: 4005 },
            { id: 4018, content: $o_choice18, answer: false, question_id: 4005 },
            { id: 4019, content: $o_choice19, answer: false, question_id: 4005 },
            { id: 4020, content: $o_choice20, answer: true, question_id: 4005 },
            # o_question6(1)
            { id: 4021, content: $o_choice21, answer: true, question_id: 4006 },
            { id: 4022, content: $o_choice22, answer: false, question_id: 4006 },
            { id: 4023, content: $o_choice23, answer: false, question_id: 4006 },
            { id: 4024, content: $o_choice24, answer: false, question_id: 4006 },
            # o_question7(4)
            { id: 4025, content: $o_choice25, answer: false, question_id: 4007 },
            { id: 4026, content: $o_choice26, answer: false, question_id: 4007 },
            { id: 4027, content: $o_choice27, answer: false, question_id: 4007 },
            { id: 4028, content: $o_choice28, answer: true, question_id: 4007 },
            # o_question8(1)
            { id: 4029, content: $o_choice29, answer: true, question_id: 4008 },
            { id: 4030, content: $o_choice30, answer: false, question_id: 4008 },
            { id: 4031, content: $o_choice31, answer: false, question_id: 4008 },
            { id: 4032, content: $o_choice32, answer: false, question_id: 4008 },
            # o_question9(4)
            { id: 4033, content: $o_choice33, answer: false, question_id: 4009 },
            { id: 4034, content: $o_choice34, answer: false, question_id: 4009 },
            { id: 4035, content: $o_choice35, answer: false, question_id: 4009 },
            { id: 4036, content: $o_choice36, answer: true, question_id: 4009 },
            # o_question10(2)
            { id: 4037, content: $o_choice37, answer: false, question_id: 4010 },
            { id: 4038, content: $o_choice38, answer: false, question_id: 4010 },
            { id: 4039, content: $o_choice39, answer: true, question_id: 4010 },
            { id: 4040, content: $o_choice40, answer: false, question_id: 4010 },
            # o_question11(1)
            { id: 4041, content: $o_choice41, answer: true, question_id: 4011 },
            { id: 4042, content: $o_choice42, answer: false, question_id: 4011 },
            { id: 4043, content: $o_choice43, answer: false, question_id: 4011 },
            { id: 4044, content: $o_choice44, answer: false, question_id: 4011 },
            # o_question12(3)
            { id: 4045, content: $o_choice45, answer: false, question_id: 4012 },
            { id: 4046, content: $o_choice46, answer: false, question_id: 4012 },
            { id: 4047, content: $o_choice47, answer: true, question_id: 4012 },
            { id: 4048, content: $o_choice48, answer: false, question_id: 4012 },
            # o_question13(3)
            { id: 4049, content: $o_choice49, answer: false, question_id: 4013 },
            { id: 4050, content: $o_choice50, answer: false, question_id: 4013 },
            { id: 4051, content: $o_choice51, answer: true, question_id: 4013 },
            { id: 4052, content: $o_choice52, answer: false, question_id: 4013 },
            # o_question14(2)
            { id: 4053, content: $o_choice53, answer: false, question_id: 4014 },
            { id: 4054, content: $o_choice54, answer: true, question_id: 4014 },
            { id: 4055, content: $o_choice55, answer: false, question_id: 4014 },
            { id: 4056, content: $o_choice56, answer: false, question_id: 4014 },
            # o_question15(3)
            { id: 4057, content: $o_choice57, answer: false, question_id: 4015 },
            { id: 4058, content: $o_choice58, answer: false, question_id: 4015 },
            { id: 4059, content: $o_choice59, answer: true, question_id: 4015 },
            { id: 4060, content: $o_choice60, answer: false, question_id: 4015 },
            # o_question16(4)
            { id: 4061, content: $o_choice61, answer: false, question_id: 4016 },
            { id: 4062, content: $o_choice62, answer: false, question_id: 4016 },
            { id: 4063, content: $o_choice63, answer: false, question_id: 4016 },
            { id: 4064, content: $o_choice64, answer: true, question_id: 4016 },
            # o_question17(4)
            { id: 4065, content: $o_choice65, answer: false, question_id: 4017 },
            { id: 4066, content: $o_choice66, answer: false, question_id: 4017 },
            { id: 4067, content: $o_choice67, answer: false, question_id: 4017 },
            { id: 4068, content: $o_choice68, answer: true, question_id: 4017 },
            # o_question18(3)
            { id: 4069, content: $o_choice69, answer: false, question_id: 4018 },
            { id: 4070, content: $o_choice70, answer: false, question_id: 4018 },
            { id: 4071, content: $o_choice71, answer: true, question_id: 4018 },
            { id: 4072, content: $o_choice72, answer: false, question_id: 4018 },
            # o_question19(1)
            { id: 4073, content: $o_choice73, answer: true, question_id: 4019 },
            { id: 4074, content: $o_choice74, answer: false, question_id: 4019 },
            { id: 4075, content: $o_choice75, answer: false, question_id: 4019 },
            { id: 4076, content: $o_choice76, answer: false, question_id: 4019 },
            # o_question20(2)
            { id: 4077, content: $o_choice77, answer: false, question_id: 4020 },
            { id: 4078, content: $o_choice78, answer: true, question_id: 4020 },
            { id: 4079, content: $o_choice79, answer: false, question_id: 4020 },
            { id: 4080, content: $o_choice80, answer: false, question_id: 4020 },
            # o_question21(1)
            { id: 4081, content: $o_choice81, answer: true, question_id: 4021 },
            { id: 4082, content: $o_choice82, answer: false, question_id: 4021 },
            { id: 4083, content: $o_choice83, answer: false, question_id: 4021 },
            { id: 4084, content: $o_choice84, answer: false, question_id: 4021 },
            # o_question22(3)
            { id: 4085, content: $o_choice85, answer: false, question_id: 4022 },
            { id: 4086, content: $o_choice86, answer: false, question_id: 4022 },
            { id: 4087, content: $o_choice87, answer: true, question_id: 4022 },
            { id: 4088, content: $o_choice88, answer: false, question_id: 4022 },
            # o_question23(2)
            { id: 4089, content: $o_choice89, answer: false, question_id: 4023 },
            { id: 4090, content: $o_choice90, answer: true, question_id: 4023 },
            { id: 4091, content: $o_choice91, answer: false, question_id: 4023 },
            { id: 4092, content: $o_choice92, answer: false, question_id: 4023 },
            # o_question24(4)
            { id: 4093, content: $o_choice93, answer: false, question_id: 4024 },
            { id: 4094, content: $o_choice94, answer: false, question_id: 4024 },
            { id: 4095, content: $o_choice95, answer: false, question_id: 4024 },
            { id: 4096, content: $o_choice96, answer: true, question_id: 4024 },
            # o_question25(1)
            { id: 4097, content: $o_choice97, answer: true, question_id: 4025 },
            { id: 4098, content: $o_choice98, answer: false, question_id: 4025 },
            { id: 4099, content: $o_choice99, answer: false, question_id: 4025 },
            { id: 4100, content: $o_choice100, answer: false, question_id: 4025 },
            # o_question26(3)
            { id: 4101, content: $o_choice101, answer: false, question_id: 4026 },
            { id: 4102, content: $o_choice102, answer: false, question_id: 4026 },
            { id: 4103, content: $o_choice103, answer: true, question_id: 4026 },
            { id: 4104, content: $o_choice104, answer: false, question_id: 4026 },
            # o_question27(3)
            { id: 4105, content: $o_choice105, answer: false, question_id: 4027 },
            { id: 4106, content: $o_choice106, answer: false, question_id: 4027 },
            { id: 4107, content: $o_choice107, answer: true, question_id: 4027 },
            { id: 4108, content: $o_choice108, answer: false, question_id: 4027 },
            # o_question28(2)
            { id: 4109, content: $o_choice109, answer: false, question_id: 4028 },
            { id: 4110, content: $o_choice110, answer: true, question_id: 4028 },
            { id: 4111, content: $o_choice111, answer: false, question_id: 4028 },
            { id: 4112, content: $o_choice112, answer: false, question_id: 4028 },
            # o_question29(3)
            { id: 4113, content: $o_choice113, answer: false, question_id: 4029 },
            { id: 4114, content: $o_choice114, answer: false, question_id: 4029 },
            { id: 4115, content: $o_choice115, answer: true, question_id: 4029 },
            { id: 4116, content: $o_choice116, answer: false, question_id: 4029 },
            # o_question30(4)
            { id: 4117, content: $o_choice117, answer: false, question_id: 4030 },
            { id: 4118, content: $o_choice118, answer: false, question_id: 4030 },
            { id: 4119, content: $o_choice119, answer: false, question_id: 4030 },
            { id: 4120, content: $o_choice120, answer: true, question_id: 4030 },
            # o_question31(1)
            { id: 4121, content: $o_choice121, answer: true, question_id: 4031 },
            { id: 4122, content: $o_choice122, answer: false, question_id: 4031 },
            { id: 4123, content: $o_choice123, answer: false, question_id: 4031 },
            { id: 4124, content: $o_choice124, answer: false, question_id: 4031 },
            # o_question32(2)
            { id: 4125, content: $o_choice125, answer: false, question_id: 4032 },
            { id: 4126, content: $o_choice126, answer: true, question_id: 4032 },
            { id: 4127, content: $o_choice127, answer: false, question_id: 4032 },
            { id: 4128, content: $o_choice128, answer: false, question_id: 4032 },
            # o_question33(1)
            { id: 4129, content: $o_choice129, answer: true, question_id: 4033 },
            { id: 4130, content: $o_choice130, answer: false, question_id: 4033 },
            { id: 4131, content: $o_choice131, answer: false, question_id: 4033 },
            { id: 4132, content: $o_choice132, answer: false, question_id: 4033 },
            # o_question34(4)
            { id: 4133, content: $o_choice133, answer: false, question_id: 4034 },
            { id: 4134, content: $o_choice134, answer: false, question_id: 4034 },
            { id: 4135, content: $o_choice135, answer: false, question_id: 4034 },
            { id: 4136, content: $o_choice136, answer: true, question_id: 4034 },
            # o_question35(1)
            { id: 4137, content: $o_choice137, answer: true, question_id: 4035 },
            { id: 4138, content: $o_choice138, answer: false, question_id: 4035 },
            { id: 4139, content: $o_choice139, answer: false, question_id: 4035 },
            { id: 4140, content: $o_choice140, answer: false, question_id: 4035 },
            # o_question36(1)
            { id: 4141, content: $o_choice141, answer: true, question_id: 4036 },
            { id: 4142, content: $o_choice142, answer: false, question_id: 4036 },
            { id: 4143, content: $o_choice143, answer: false, question_id: 4036 },
            { id: 4144, content: $o_choice144, answer: false, question_id: 4036 },
            # o_question37(1)
            { id: 4145, content: $o_choice145, answer: true, question_id: 4037 },
            { id: 4146, content: $o_choice146, answer: false, question_id: 4037 },
            { id: 4147, content: $o_choice147, answer: false, question_id: 4037 },
            { id: 4148, content: $o_choice148, answer: false, question_id: 4037 },
            # o_question38(3)
            { id: 4149, content: $o_choice149, answer: false, question_id: 4038 },
            { id: 4150, content: $o_choice150, answer: false, question_id: 4038 },
            { id: 4151, content: $o_choice151, answer: true, question_id: 4038 },
            { id: 4152, content: $o_choice152, answer: false, question_id: 4038 },
            # o_question39(1)
            { id: 4153, content: $o_choice153, answer: true, question_id: 4039 },
            { id: 4154, content: $o_choice154, answer: false, question_id: 4039 },
            { id: 4155, content: $o_choice155, answer: false, question_id: 4039 },
            { id: 4156, content: $o_choice156, answer: false, question_id: 4039 },
            # o_question40(1)
            { id: 4157, content: $o_choice157, answer: true, question_id: 4040 },
            { id: 4158, content: $o_choice158, answer: false, question_id: 4040 },
            { id: 4159, content: $o_choice159, answer: false, question_id: 4040 },
            { id: 4160, content: $o_choice160, answer: false, question_id: 4040 },
            # o_question41(4)
            { id: 4161, content: $o_choice161, answer: false, question_id: 4041 },
            { id: 4162, content: $o_choice162, answer: false, question_id: 4041 },
            { id: 4163, content: $o_choice163, answer: false, question_id: 4041 },
            { id: 4164, content: $o_choice164, answer: true, question_id: 4041 },
            # o_question42(1)
            { id: 4165, content: $o_choice165, answer: true, question_id: 4042 },
            { id: 4166, content: $o_choice166, answer: false, question_id: 4042 },
            { id: 4167, content: $o_choice167, answer: false, question_id: 4042 },
            { id: 4168, content: $o_choice168, answer: false, question_id: 4042 },
            # o_question43(4)
            { id: 4169, content: $o_choice169, answer: false, question_id: 4043 },
            { id: 4170, content: $o_choice170, answer: false, question_id: 4043 },
            { id: 4171, content: $o_choice171, answer: false, question_id: 4043 },
            { id: 4172, content: $o_choice172, answer: true, question_id: 4043 },
            # o_question44(4)
            { id: 4173, content: $o_choice173, answer: false, question_id: 4044 },
            { id: 4174, content: $o_choice174, answer: false, question_id: 4044 },
            { id: 4175, content: $o_choice175, answer: false, question_id: 4044 },
            { id: 4176, content: $o_choice176, answer: true, question_id: 4044 },
            # o_question45(3)
            { id: 4177, content: $o_choice177, answer: false, question_id: 4045 },
            { id: 4178, content: $o_choice178, answer: false, question_id: 4045 },
            { id: 4179, content: $o_choice179, answer: true, question_id: 4045 },
            { id: 4180, content: $o_choice180, answer: false, question_id: 4045 },
            # o_question46(3)
            { id: 4181, content: $o_choice181, answer: false, question_id: 4046 },
            { id: 4182, content: $o_choice182, answer: false, question_id: 4046 },
            { id: 4183, content: $o_choice183, answer: true, question_id: 4046 },
            { id: 4184, content: $o_choice184, answer: false, question_id: 4046 },
            # o_question47(4)
            { id: 4185, content: $o_choice185, answer: false, question_id: 4047 },
            { id: 4186, content: $o_choice186, answer: false, question_id: 4047 },
            { id: 4187, content: $o_choice187, answer: false, question_id: 4047 },
            { id: 4188, content: $o_choice188, answer: true, question_id: 4047 },
            # o_question48(3)
            { id: 4189, content: $o_choice189, answer: false, question_id: 4048 },
            { id: 4190, content: $o_choice190, answer: false, question_id: 4048 },
            { id: 4191, content: $o_choice191, answer: true, question_id: 4048 },
            { id: 4192, content: $o_choice192, answer: false, question_id: 4048 },
            # o_question49(1)
            { id: 4193, content: $o_choice193, answer: true, question_id: 4049 },
            { id: 4194, content: $o_choice194, answer: false, question_id: 4049 },
            { id: 4195, content: $o_choice195, answer: false, question_id: 4049 },
            { id: 4196, content: $o_choice196, answer: false, question_id: 4049 },
            # o_question50(2)
            { id: 4197, content: $o_choice197, answer: false, question_id: 4050 },
            { id: 4198, content: $o_choice198, answer: true, question_id: 4050 },
            { id: 4199, content: $o_choice199, answer: false, question_id: 4050 },
            { id: 4200, content: $o_choice200, answer: false, question_id: 4050 },
            # o_question51(4)
            { id: 4201, content: $o_choice201, answer: false, question_id: 4051 },
            { id: 4202, content: $o_choice202, answer: false, question_id: 4051 },
            { id: 4203, content: $o_choice203, answer: false, question_id: 4051 },
            { id: 4204, content: $o_choice204, answer: true, question_id: 4051 },
            # o_question52(1)
            { id: 4205, content: $o_choice205, answer: true, question_id: 4052 },
            { id: 4206, content: $o_choice206, answer: false, question_id: 4052 },
            { id: 4207, content: $o_choice207, answer: false, question_id: 4052 },
            { id: 4208, content: $o_choice208, answer: false, question_id: 4052 },
            # o_question53(4)
            { id: 4209, content: $o_choice209, answer: false, question_id: 4053  },
            { id: 4210, content: $o_choice210, answer: false, question_id: 4053  },
            { id: 4211, content: $o_choice211, answer: false, question_id: 4053  },
            { id: 4212, content: $o_choice212, answer: true, question_id: 4053  },
            # o_question54(2)
            { id: 4213, content: $o_choice213, answer: false, question_id: 4054 },
            { id: 4214, content: $o_choice214, answer: true, question_id: 4054 },
            { id: 4215, content: $o_choice215, answer: false, question_id: 4054 },
            { id: 4216, content: $o_choice216, answer: false, question_id: 4054 },
            # o_question55(2)
            { id: 4217, content: $o_choice217, answer: false, question_id: 4055 },
            { id: 4218, content: $o_choice218, answer: true, question_id: 4055 },
            { id: 4219, content: $o_choice219, answer: false, question_id: 4055 },
            { id: 4220, content: $o_choice220, answer: false, question_id: 4055 },
            # o_question56(4)
            { id: 4221, content: $o_choice221, answer: false, question_id: 4056 },
            { id: 4222, content: $o_choice222, answer: false, question_id: 4056 },
            { id: 4223, content: $o_choice223, answer: false, question_id: 4056 },
            { id: 4224, content: $o_choice224, answer: true, question_id: 4056 },
            # o_question57(4)
            { id: 4225, content: $o_choice225, answer: false, question_id: 4057 },
            { id: 4226, content: $o_choice226, answer: false, question_id: 4057 },
            { id: 4227, content: $o_choice227, answer: false, question_id: 4057 },
            { id: 4228, content: $o_choice228, answer: true, question_id: 4057 },
            # o_question58(2)
            { id: 4229, content: $o_choice229, answer: false, question_id: 4058 },
            { id: 4230, content: $o_choice230, answer: true, question_id: 4058 },
            { id: 4231, content: $o_choice231, answer: false, question_id: 4058 },
            { id: 4232, content: $o_choice232, answer: false, question_id: 4058 },
            # o_question59(1)
            { id: 4233, content: $o_choice233, answer: true, question_id: 4059 },
            { id: 4234, content: $o_choice234, answer: false, question_id: 4059 },
            { id: 4235, content: $o_choice235, answer: false, question_id: 4059 },
            { id: 4236, content: $o_choice236, answer: false, question_id: 4059 },
            # o_question60(4)
            { id: 4237, content: $o_choice237, answer: false, question_id: 4060 },
            { id: 4238, content: $o_choice238, answer: false, question_id: 4060 },
            { id: 4239, content: $o_choice239, answer: false, question_id: 4060 },
            { id: 4240, content: $o_choice240, answer: true, question_id: 4060 })
