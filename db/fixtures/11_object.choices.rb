require("./db/fixtures/choices/object")
Choice.seed(:id,
            # o_question1(3)
            { id: 4001, content: $a_choice1, answer: false, question_id: 4001 },
            { id: 4002, content: $a_choice2, answer: false, question_id: 4001 },
            { id: 4003, content: $a_choice3, answer: true, question_id: 4001 },
            { id: 4004, content: $a_choice4, answer: false, question_id: 4001 },
            # o_question2(3)
            { id: 4005, content: $a_choice5, answer: false, question_id: 4002 },
            { id: 4006, content: $a_choice6, answer: false, question_id: 4002 },
            { id: 4007, content: $a_choice7, answer: true, question_id: 4002 },
            { id: 4008, content: $a_choice8, answer: false, question_id: 4002 },
            # o_question3(4)
            { id: 4009, content: $a_choice9, answer: false, question_id: 4003 },
            { id: 4010, content: $a_choice10, answer: false, question_id: 4003 },
            { id: 4011, content: $a_choice11, answer: false, question_id: 4003 },
            { id: 4012, content: $a_choice12, answer: true, question_id: 4003 },
            # o_question4(1)
            { id: 4013, content: $a_choice13, answer: true, question_id: 4004 },
            { id: 4014, content: $a_choice14, answer: false, question_id: 4004 },
            { id: 4015, content: $a_choice15, answer: false, question_id: 4004 },
            { id: 4016, content: $a_choice16, answer: false, question_id: 4004 },
            # o_question5(4)
            { id: 4017, content: $a_choice17, answer: false, question_id: 4005 },
            { id: 4018, content: $a_choice18, answer: false, question_id: 4005 },
            { id: 4019, content: $a_choice19, answer: false, question_id: 4005 },
            { id: 4020, content: $a_choice20, answer: true, question_id: 4005 },
            # o_question6(1)
            { id: 4021, content: $a_choice21, answer: true, question_id: 4006 },
            { id: 4022, content: $a_choice22, answer: false, question_id: 4006 },
            { id: 4023, content: $a_choice23, answer: false, question_id: 4006 },
            { id: 4024, content: $a_choice24, answer: false, question_id: 4006 },
            # o_question7(4)
            { id: 4025, content: $a_choice25, answer: false, question_id: 4007 },
            { id: 4026, content: $a_choice26, answer: false, question_id: 4007 },
            { id: 4027, content: $a_choice27, answer: false, question_id: 4007 },
            { id: 4028, content: $a_choice28, answer: true, question_id: 4007 },
            # o_question8(1)
            { id: 4029, content: $a_choice29, answer: true, question_id: 4008 },
            { id: 4030, content: $a_choice30, answer: false, question_id: 4008 },
            { id: 4031, content: $a_choice31, answer: false, question_id: 4008 },
            { id: 4032, content: $a_choice32, answer: false, question_id: 4008 },
            # o_question9(4)
            { id: 4033, content: $a_choice33, answer: false, question_id: 4009 },
            { id: 4034, content: $a_choice34, answer: false, question_id: 4009 },
            { id: 4035, content: $a_choice35, answer: false, question_id: 4009 },
            { id: 4036, content: $a_choice36, answer: true, question_id: 4009 },
            # o_question10(2)
            { id: 4037, content: $a_choice37, answer: false, question_id: 4010 },
            { id: 4038, content: $a_choice38, answer: true, question_id: 4010 },
            { id: 4039, content: $a_choice39, answer: false, question_id: 4010 },
            { id: 4040, content: $a_choice40, answer: false, question_id: 4010 },
            # o_question11(1)
            { id: 4041, content: $a_choice41, answer: true, question_id: 4011 },
            { id: 4042, content: $a_choice42, answer: false, question_id: 4011 },
            { id: 4043, content: $a_choice43, answer: false, question_id: 4011 },
            { id: 4044, content: $a_choice44, answer: false, question_id: 4011 },
            # o_question12(3)
            { id: 4045, content: $a_choice45, answer: false, question_id: 4012 },
            { id: 4046, content: $a_choice46, answer: false, question_id: 4012 },
            { id: 4047, content: $a_choice47, answer: true, question_id: 4012 },
            { id: 4048, content: $a_choice48, answer: false, question_id: 4012 },
            # o_question13(3)
            { id: 4049, content: $a_choice49, answer: false, question_id: 4013 },
            { id: 4050, content: $a_choice50, answer: false, question_id: 4013 },
            { id: 4051, content: $a_choice51, answer: true, question_id: 4013 },
            { id: 4052, content: $a_choice52, answer: false, question_id: 4013 },
            # o_question14(2)
            { id: 4053, content: $a_choice53, answer: false, question_id: 4014 },
            { id: 4054, content: $a_choice54, answer: true, question_id: 4014 },
            { id: 4055, content: $a_choice55, answer: false, question_id: 4014 },
            { id: 4056, content: $a_choice56, answer: false, question_id: 4014 },
            # o_question15(3)
            { id: 4057, content: $a_choice57, answer: false, question_id: 4015 },
            { id: 4058, content: $a_choice58, answer: false, question_id: 4015 },
            { id: 4059, content: $a_choice59, answer: true, question_id: 4015 },
            { id: 4060, content: $a_choice60, answer: false, question_id: 4015 },
            # o_question16(4)
            { id: 4061, content: $a_choice61, answer: false, question_id: 4016 },
            { id: 4062, content: $a_choice62, answer: false, question_id: 4016 },
            { id: 4063, content: $a_choice63, answer: false, question_id: 4016 },
            { id: 4064, content: $a_choice64, answer: true, question_id: 4016 },
            # o_question17(4)
            { id: 4065, content: $a_choice65, answer: false, question_id: 4017 },
            { id: 4066, content: $a_choice66, answer: false, question_id: 4017 },
            { id: 4067, content: $a_choice67, answer: false, question_id: 4017 },
            { id: 4068, content: $a_choice68, answer: true, question_id: 4017 },
            # o_question18(3)
            { id: 4069, content: $a_choice69, answer: false, question_id: 4018 },
            { id: 4070, content: $a_choice70, answer: false, question_id: 4018 },
            { id: 4071, content: $a_choice71, answer: true, question_id: 4018 },
            { id: 4072, content: $a_choice72, answer: false, question_id: 4018 },
            # o_question19(1)
            { id: 4073, content: $a_choice73, answer: true, question_id: 4019 },
            { id: 4074, content: $a_choice74, answer: false, question_id: 4019 },
            { id: 4075, content: $a_choice75, answer: false, question_id: 4019 },
            { id: 4076, content: $a_choice76, answer: false, question_id: 4019 },
            # o_question20(2)
            { id: 4077, content: $a_choice77, answer: false, question_id: 4020 },
            { id: 4078, content: $a_choice78, answer: true, question_id: 4020 },
            { id: 4079, content: $a_choice79, answer: false, question_id: 4020 },
            { id: 4080, content: $a_choice80, answer: false, question_id: 4020 },
            # o_question21(1)
            { id: 4081, content: $a_choice81, answer: true, question_id: 4021 },
            { id: 4082, content: $a_choice82, answer: false, question_id: 4021 },
            { id: 4083, content: $a_choice83, answer: false, question_id: 4021 },
            { id: 4084, content: $a_choice84, answer: false, question_id: 4021 },
            # o_question22(3)
            { id: 4085, content: $a_choice85, answer: false, question_id: 4022 },
            { id: 4086, content: $a_choice86, answer: false, question_id: 4022 },
            { id: 4087, content: $a_choice87, answer: true, question_id: 4022 },
            { id: 4088, content: $a_choice88, answer: false, question_id: 4022 },
            # o_question23(2)
            { id: 4089, content: $a_choice89, answer: false, question_id: 4023 },
            { id: 4090, content: $a_choice90, answer: true, question_id: 4023 },
            { id: 4091, content: $a_choice91, answer: false, question_id: 4023 },
            { id: 4092, content: $a_choice92, answer: false, question_id: 4023 },
            # o_question24(4)
            { id: 4093, content: $a_choice93, answer: false, question_id: 4024 },
            { id: 4094, content: $a_choice94, answer: false, question_id: 4024 },
            { id: 4095, content: $a_choice95, answer: false, question_id: 4024 },
            { id: 4096, content: $a_choice96, answer: true, question_id: 4024 },
            # o_question25(1)
            { id: 4097, content: $a_choice97, answer: true, question_id: 4025 },
            { id: 4098, content: $a_choice98, answer: false, question_id: 4025 },
            { id: 4099, content: $a_choice99, answer: false, question_id: 4025 },
            { id: 4100, content: $a_choice100, answer: false, question_id: 4025 },
            # o_question26(3)
            { id: 4101, content: $a_choice101, answer: false, question_id: 4026 },
            { id: 4102, content: $a_choice102, answer: false, question_id: 4026 },
            { id: 4103, content: $a_choice103, answer: true, question_id: 4026 },
            { id: 4104, content: $a_choice104, answer: false, question_id: 4026 },
            # o_question27(3)
            { id: 4105, content: $a_choice105, answer: false, question_id: 4027 },
            { id: 4106, content: $a_choice106, answer: false, question_id: 4027 },
            { id: 4107, content: $a_choice107, answer: true, question_id: 4027 },
            { id: 4108, content: $a_choice108, answer: false, question_id: 4027 },
            # o_question28(2)
            { id: 4109, content: $a_choice109, answer: false, question_id: 4028 },
            { id: 4110, content: $a_choice110, answer: true, question_id: 4028 },
            { id: 4111, content: $a_choice111, answer: false, question_id: 4028 },
            { id: 4112, content: $a_choice112, answer: false, question_id: 4028 },
            # o_question29(3)
            { id: 4113, content: $a_choice113, answer: false, question_id: 4029 },
            { id: 4114, content: $a_choice114, answer: false, question_id: 4029 },
            { id: 4115, content: $a_choice115, answer: true, question_id: 4029 },
            { id: 4116, content: $a_choice116, answer: false, question_id: 4029 },
            # o_question30(4)
            { id: 4117, content: $a_choice117, answer: false, question_id: 4030 },
            { id: 4118, content: $a_choice118, answer: false, question_id: 4030 },
            { id: 4119, content: $a_choice119, answer: false, question_id: 4030 },
            { id: 4120, content: $a_choice120, answer: true, question_id: 4030 },
            # o_question31(1)
            { id: 4121, content: $a_choice121, answer: true, question_id: 4031 },
            { id: 4122, content: $a_choice122, answer: false, question_id: 4031 },
            { id: 4123, content: $a_choice123, answer: false, question_id: 4031 },
            { id: 4124, content: $a_choice124, answer: false, question_id: 4031 },
            # o_question32(2)
            { id: 4125, content: $a_choice125, answer: false, question_id: 4032 },
            { id: 4126, content: $a_choice126, answer: true, question_id: 4032 },
            { id: 4127, content: $a_choice127, answer: false, question_id: 4032 },
            { id: 4128, content: $a_choice128, answer: false, question_id: 4032 },
            # o_question33(1)
            { id: 4129, content: $a_choice129, answer: true, question_id: 4033 },
            { id: 4130, content: $a_choice130, answer: false, question_id: 4033 },
            { id: 4131, content: $a_choice131, answer: false, question_id: 4033 },
            { id: 4132, content: $a_choice132, answer: false, question_id: 4033 },
            # o_question34(4)
            { id: 4133, content: $a_choice133, answer: false, question_id: 4034 },
            { id: 4134, content: $a_choice134, answer: false, question_id: 4034 },
            { id: 4135, content: $a_choice135, answer: false, question_id: 4034 },
            { id: 4136, content: $a_choice136, answer: true, question_id: 4034 },
            # o_question35(1)
            { id: 4137, content: $a_choice137, answer: true, question_id: 4035 },
            { id: 4138, content: $a_choice138, answer: false, question_id: 4035 },
            { id: 4139, content: $a_choice139, answer: false, question_id: 4035 },
            { id: 4140, content: $a_choice140, answer: false, question_id: 4035 },
            # o_question36(1)
            { id: 4141, content: $a_choice141, answer: true, question_id: 4036 },
            { id: 4142, content: $a_choice142, answer: false, question_id: 4036 },
            { id: 4143, content: $a_choice143, answer: false, question_id: 4036 },
            { id: 4144, content: $a_choice144, answer: false, question_id: 4036 },
            # o_question37(1)
            { id: 4145, content: $a_choice145, answer: true, question_id: 4037 },
            { id: 4146, content: $a_choice146, answer: false, question_id: 4037 },
            { id: 4147, content: $a_choice147, answer: false, question_id: 4037 },
            { id: 4148, content: $a_choice148, answer: false, question_id: 4037 },
            # o_question38(3)
            { id: 4149, content: $a_choice149, answer: false, question_id: 4038 },
            { id: 4150, content: $a_choice150, answer: false, question_id: 4038 },
            { id: 4151, content: $a_choice151, answer: true, question_id: 4038 },
            { id: 4152, content: $a_choice152, answer: false, question_id: 4038 },
            # o_question39(1)
            { id: 4153, content: $a_choice153, answer: true, question_id: 4039 },
            { id: 4154, content: $a_choice154, answer: false, question_id: 4039 },
            { id: 4155, content: $a_choice155, answer: false, question_id: 4039 },
            { id: 4156, content: $a_choice156, answer: false, question_id: 4039 },
            # o_question40(1)
            { id: 4157, content: $a_choice157, answer: true, question_id: 4040 },
            { id: 4158, content: $a_choice158, answer: false, question_id: 4040 },
            { id: 4159, content: $a_choice159, answer: false, question_id: 4040 },
            { id: 4160, content: $a_choice160, answer: false, question_id: 4040 },
            # o_question41(4)
            { id: 4161, content: $a_choice161, answer: false, question_id: 4041 },
            { id: 4162, content: $a_choice162, answer: false, question_id: 4041 },
            { id: 4163, content: $a_choice163, answer: false, question_id: 4041 },
            { id: 4164, content: $a_choice164, answer: true, question_id: 4041 },
            # o_question42(1)
            { id: 4165, content: $a_choice165, answer: true, question_id: 4042 },
            { id: 4166, content: $a_choice166, answer: false, question_id: 4042 },
            { id: 4167, content: $a_choice167, answer: false, question_id: 4042 },
            { id: 4168, content: $a_choice168, answer: false, question_id: 4042 },
            # o_question43(4)
            { id: 4169, content: $a_choice169, answer: false, question_id: 4043 },
            { id: 4170, content: $a_choice170, answer: false, question_id: 4043 },
            { id: 4171, content: $a_choice171, answer: false, question_id: 4043 },
            { id: 4172, content: $a_choice172, answer: true, question_id: 4043 },
            # o_question44(4)
            { id: 4173, content: $a_choice173, answer: false, question_id: 4044 },
            { id: 4174, content: $a_choice174, answer: false, question_id: 4044 },
            { id: 4175, content: $a_choice175, answer: false, question_id: 4044 },
            { id: 4176, content: $a_choice176, answer: true, question_id: 4044 },
            # o_question45(3)
            { id: 4177, content: $a_choice177, answer: false, question_id: 4045 },
            { id: 4178, content: $a_choice178, answer: false, question_id: 4045 },
            { id: 4179, content: $a_choice179, answer: true, question_id: 4045 },
            { id: 4180, content: $a_choice180, answer: false, question_id: 4045 },
            # o_question46(3)
            { id: 4181, content: $a_choice181, answer: false, question_id: 4046 },
            { id: 4182, content: $a_choice182, answer: false, question_id: 4046 },
            { id: 4183, content: $a_choice183, answer: true, question_id: 4046 },
            { id: 4184, content: $a_choice184, answer: false, question_id: 4046 },
            # o_question47(4)
            { id: 4185, content: $a_choice185, answer: false, question_id: 4047 },
            { id: 4186, content: $a_choice186, answer: false, question_id: 4047 },
            { id: 4187, content: $a_choice187, answer: false, question_id: 4047 },
            { id: 4188, content: $a_choice188, answer: true, question_id: 4047 },
            # o_question48(3)
            { id: 4189, content: $a_choice189, answer: false, question_id: 4048 },
            { id: 4190, content: $a_choice190, answer: false, question_id: 4048 },
            { id: 4191, content: $a_choice191, answer: true, question_id: 4048 },
            { id: 4192, content: $a_choice192, answer: false, question_id: 4048 },
            # o_question49(1)
            { id: 4193, content: $a_choice193, answer: true, question_id: 4049 },
            { id: 4194, content: $a_choice194, answer: false, question_id: 4049 },
            { id: 4195, content: $a_choice195, answer: false, question_id: 4049 },
            { id: 4196, content: $a_choice196, answer: false, question_id: 4049 },
            # o_question50(2)
            { id: 4197, content: $a_choice197, answer: false, question_id: 4050 },
            { id: 4198, content: $a_choice198, answer: true, question_id: 4050 },
            { id: 4199, content: $a_choice199, answer: false, question_id: 4050 },
            { id: 4200, content: $a_choice200, answer: false, question_id: 4050 },
            # o_question51(4)
            { id: 4201, content: $a_choice201, answer: false, question_id: 4051 },
            { id: 4202, content: $a_choice202, answer: false, question_id: 4051 },
            { id: 4203, content: $a_choice203, answer: false, question_id: 4051 },
            { id: 4204, content: $a_choice204, answer: true, question_id: 4051 }, # o_question52(1)
            { id: 4205, content: $a_choice205, answer: true, question_id: 4052 },
            { id: 4206, content: $a_choice206, answer: false, question_id: 4052 },
            { id: 4207, content: $a_choice207, answer: false, question_id: 4052 },
            { id: 4208, content: $a_choice208, answer: false, question_id: 4052 },
            # o_question53(4)
            { id: 4209, content: $a_choice209, answer: false, question_id: 4053  },
            { id: 4210, content: $a_choice210, answer: false, question_id: 4053  },
            { id: 4211, content: $a_choice211, answer: false, question_id: 4053  },
            { id: 4212, content: $a_choice212, answer: true, question_id: 4053  },
            # o_question54(2)
            { id: 4213, content: $a_choice213, answer: false, question_id: 4054 },
            { id: 4214, content: $a_choice214, answer: true, question_id: 4054 },
            { id: 4215, content: $a_choice215, answer: false, question_id: 4054 },
            { id: 4216, content: $a_choice216, answer: false, question_id: 4054 },
            # o_question55(2)
            { id: 4217, content: $a_choice217, answer: false, question_id: 4055 },
            { id: 4218, content: $a_choice218, answer: true, question_id: 4055 },
            { id: 4219, content: $a_choice219, answer: false, question_id: 4055 },
            { id: 4220, content: $a_choice220, answer: false, question_id: 4055 },
            # o_question56(4)
            { id: 4221, content: $a_choice221, answer: false, question_id: 4056 },
            { id: 4222, content: $a_choice222, answer: false, question_id: 4056 },
            { id: 4223, content: $a_choice223, answer: false, question_id: 4056 },
            { id: 4224, content: $a_choice224, answer: true, question_id: 4056 },
            # o_question57(4)
            { id: 4225, content: $a_choice225, answer: false, question_id: 4057 },
            { id: 4226, content: $a_choice226, answer: false, question_id: 4057 },
            { id: 4227, content: $a_choice227, answer: false, question_id: 4057 },
            { id: 4228, content: $a_choice228, answer: true, question_id: 4057 },
            # o_question58(2)
            { id: 4229, content: $a_choice229, answer: false, question_id: 4058 },
            { id: 4230, content: $a_choice230, answer: true, question_id: 4058 },
            { id: 4231, content: $a_choice231, answer: false, question_id: 4058 },
            { id: 4232, content: $a_choice232, answer: false, question_id: 4058 },
            # o_question59(1)
            { id: 4233, content: $a_choice233, answer: true, question_id: 4059 },
            { id: 4234, content: $a_choice234, answer: false, question_id: 4059 },
            { id: 4235, content: $a_choice235, answer: false, question_id: 4059 },
            { id: 4236, content: $a_choice236, answer: false, question_id: 4059 },
            # o_question60(4)
            { id: 4237, content: $a_choice237, answer: false, question_id: 4060 },
            { id: 4238, content: $a_choice238, answer: false, question_id: 4060 },
            { id: 4239, content: $a_choice239, answer: false, question_id: 4060 },
            { id: 4240, content: $a_choice240, answer: true, question_id: 4060 })