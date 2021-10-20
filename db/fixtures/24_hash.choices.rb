require("./db/fixtures/choices/hash")
Choice.seed(:id,
            # h_question1
            { id: 3001, content: $h_choice1, answer: false, question_id: 3001 },
            { id: 3002, content: $h_choice2, answer: false, question_id: 3001 },
            { id: 3003, content: $h_choice3, answer: true, question_id: 3001 },
            { id: 3004, content: $h_choice4, answer: false, question_id: 3001 },
            # h_question2
            { id: 3005, content: $h_choice5, answer: true, question_id: 3002 },
            { id: 3006, content: $h_choice6, answer: false, question_id: 3002 },
            { id: 3007, content: $h_choice7, answer: false, question_id: 3002 },
            { id: 3008, content: $h_choice8, answer: false, question_id: 3002 },
            # h_question3
            { id: 3009, content: $h_choice9, answer: false, question_id: 3003 },
            { id: 3010, content: $h_choice10, answer: true, question_id: 3003 },
            { id: 3011, content: $h_choice11, answer: false, question_id: 3003 },
            { id: 3012, content: $h_choice12, answer: false, question_id: 3003 },
            # h_question4
            { id: 3013, content: $h_choice13, answer: true, question_id: 3004 },
            { id: 3014, content: $h_choice14, answer: false, question_id: 3004 },
            { id: 3015, content: $h_choice15, answer: false, question_id: 3004 },
            { id: 3016, content: $h_choice16, answer: false, question_id: 3004 },
            # h_question5
            { id: 3017, content: $h_choice17, answer: false, question_id: 3005 },
            { id: 3018, content: $h_choice18, answer: false, question_id: 3005 },
            { id: 3019, content: $h_choice19, answer: true, question_id: 3005 },
            { id: 3020, content: $h_choice20, answer: false, question_id: 3005 },
            # h_question6
            { id: 3021, content: $h_choice21, answer: false, question_id: 3006 },
            { id: 3022, content: $h_choice22, answer: false, question_id: 3006 },
            { id: 3023, content: $h_choice23, answer: true, question_id: 3006 },
            { id: 3024, content: $h_choice24, answer: false, question_id: 3006 },
            # h_question7
            { id: 3025, content: $h_choice25, answer: false, question_id: 3007 },
            { id: 3026, content: $h_choice26, answer: false, question_id: 3007 },
            { id: 3027, content: $h_choice27, answer: false, question_id: 3007 },
            { id: 3028, content: $h_choice28, answer: true, question_id: 3007 },
            # h_question8
            { id: 3029, content: $h_choice29, answer: false, question_id: 3008 },
            { id: 3030, content: $h_choice30, answer: false, question_id: 3008 },
            { id: 3031, content: $h_choice31, answer: false, question_id: 3008 },
            { id: 3032, content: $h_choice32, answer: true, question_id: 3008 },
            # h_question9
            { id: 3033, content: $h_choice33, answer: false, question_id: 3009 },
            { id: 3034, content: $h_choice34, answer: false, question_id: 3009 },
            { id: 3035, content: $h_choice35, answer: true, question_id: 3009 },
            { id: 3036, content: $h_choice36, answer: false, question_id: 3009 },
            # h_question10
            { id: 3037, content: $h_choice37, answer: false, question_id: 3010 },
            { id: 3038, content: $h_choice38, answer: true, question_id: 3010 },
            { id: 3039, content: $h_choice39, answer: false, question_id: 3010 },
            { id: 3040, content: $h_choice40, answer: false, question_id: 3010 },
            # h_question11
            { id: 3041, content: $h_choice41, answer: false, question_id: 3011 },
            { id: 3042, content: $h_choice42, answer: false, question_id: 3011 },
            { id: 3043, content: $h_choice43, answer: true, question_id: 3011 },
            { id: 3044, content: $h_choice44, answer: false, question_id: 3011 },
            # h_question12
            { id: 3045, content: $h_choice45, answer: false, question_id: 3012 },
            { id: 3046, content: $h_choice46, answer: true, question_id: 3012 },
            { id: 3047, content: $h_choice47, answer: false, question_id: 3012 },
            { id: 3048, content: $h_choice48, answer: false, question_id: 3012 },
            # h_question13
            { id: 3049, content: $h_choice49, answer: true, question_id: 3013 },
            { id: 3050, content: $h_choice50, answer: false, question_id: 3013 },
            { id: 3051, content: $h_choice51, answer: false, question_id: 3013 },
            { id: 3052, content: $h_choice52, answer: false, question_id: 3013 },
            # h_question14
            { id: 3053, content: $h_choice53, answer: false, question_id: 3014 },
            { id: 3054, content: $h_choice54, answer: true, question_id: 3014 },
            { id: 3055, content: $h_choice55, answer: false, question_id: 3014 },
            { id: 3056, content: $h_choice56, answer: false, question_id: 3014 },
            # h_question15
            { id: 3057, content: $h_choice57, answer: false, question_id: 3015 },
            { id: 3058, content: $h_choice58, answer: true, question_id: 3015 },
            { id: 3059, content: $h_choice59, answer: false, question_id: 3015 },
            { id: 3060, content: $h_choice60, answer: false, question_id: 3015 },
            # h_question16
            { id: 3061, content: $h_choice61, answer: false, question_id: 3016 },
            { id: 3062, content: $h_choice62, answer: false, question_id: 3016 },
            { id: 3063, content: $h_choice63, answer: false, question_id: 3016 },
            { id: 3064, content: $h_choice64, answer: true, question_id: 3016 },
            # h_question17
            { id: 3065, content: $h_choice65, answer: false, question_id: 3017 },
            { id: 3066, content: $h_choice66, answer: false, question_id: 3017 },
            { id: 3067, content: $h_choice67, answer: false, question_id: 3017 },
            { id: 3068, content: $h_choice68, answer: true, question_id: 3017 },
            # h_question18
            { id: 3069, content: $h_choice69, answer: false, question_id: 3018 },
            { id: 3070, content: $h_choice70, answer: false, question_id: 3018 },
            { id: 3071, content: $h_choice71, answer: true, question_id: 3018 },
            { id: 3072, content: $h_choice72, answer: false, question_id: 3018 },
            # h_question19
            { id: 3073, content: $h_choice73, answer: false, question_id: 3019 },
            { id: 3074, content: $h_choice74, answer: false, question_id: 3019 },
            { id: 3075, content: $h_choice75, answer: true, question_id: 3019 },
            { id: 3076, content: $h_choice76, answer: false, question_id: 3019 },
            # h_question20
            { id: 3077, content: $h_choice77, answer: false, question_id: 3020 },
            { id: 3078, content: $h_choice78, answer: true, question_id: 3020 },
            { id: 3079, content: $h_choice79, answer: false, question_id: 3020 },
            { id: 3080, content: $h_choice80, answer: false, question_id: 3020 },
            # h_question21
            { id: 3081, content: $h_choice81, answer: false, question_id: 3021 },
            { id: 3082, content: $h_choice82, answer: true, question_id: 3021 },
            { id: 3083, content: $h_choice83, answer: false, question_id: 3021 },
            { id: 3084, content: $h_choice84, answer: false, question_id: 3021 },
            # h_question22
            { id: 3085, content: $h_choice85, answer: true, question_id: 3022 },
            { id: 3086, content: $h_choice86, answer: false, question_id: 3022 },
            { id: 3087, content: $h_choice87, answer: false, question_id: 3022 },
            { id: 3088, content: $h_choice88, answer: false, question_id: 3022 },
            # h_question23
            { id: 3089, content: $h_choice89, answer: false, question_id: 3023 },
            { id: 3090, content: $h_choice90, answer: false, question_id: 3023 },
            { id: 3091, content: $h_choice91, answer: true, question_id: 3023 },
            { id: 3092, content: $h_choice92, answer: false, question_id: 3023 },
            # h_question24
            { id: 3093, content: $h_choice93, answer: false, question_id: 3024 },
            { id: 3094, content: $h_choice94, answer: false, question_id: 3024 },
            { id: 3095, content: $h_choice95, answer: true, question_id: 3024 },
            { id: 3096, content: $h_choice96, answer: false, question_id: 3024 },
            # h_question25
            { id: 3097, content: $h_choice97, answer: false, question_id: 3025 },
            { id: 3098, content: $h_choice98, answer: true, question_id: 3025 },
            { id: 3099, content: $h_choice99, answer: false, question_id: 3025 },
            { id: 3100, content: $h_choice100, answer: false, question_id: 3025 },
            # h_question26
            { id: 3101, content: $h_choice101, answer: true, question_id: 3026 },
            { id: 3102, content: $h_choice102, answer: false, question_id: 3026 },
            { id: 3103, content: $h_choice103, answer: false, question_id: 3026 },
            { id: 3104, content: $h_choice104, answer: false, question_id: 3026 },
            # h_question27
            { id: 3105, content: $h_choice105, answer: false, question_id: 3027 },
            { id: 3106, content: $h_choice106, answer: false, question_id: 3027 },
            { id: 3107, content: $h_choice107, answer: false, question_id: 3027 },
            { id: 3108, content: $h_choice108, answer: true, question_id: 3027 },
            # h_question28
            { id: 3109, content: $h_choice109, answer: false, question_id: 3028 },
            { id: 3110, content: $h_choice110, answer: true, question_id: 3028 },
            { id: 3111, content: $h_choice111, answer: false, question_id: 3028 },
            { id: 3112, content: $h_choice112, answer: false, question_id: 3028 },
            # h_question29
            { id: 3113, content: $h_choice113, answer: false, question_id: 3029 },
            { id: 3114, content: $h_choice114, answer: true, question_id: 3029 },
            { id: 3115, content: $h_choice115, answer: false, question_id: 3029 },
            { id: 3116, content: $h_choice116, answer: false, question_id: 3029 },
            # h_question30
            { id: 3117, content: $h_choice117, answer: true, question_id: 3030 },
            { id: 3118, content: $h_choice118, answer: false, question_id: 3030 },
            { id: 3119, content: $h_choice119, answer: false, question_id: 3030 },
            { id: 3120, content: $h_choice120, answer: false, question_id: 3030 },
            # h_question31
            { id: 3121, content: $h_choice121, answer: false, question_id: 3031 },
            { id: 3122, content: $h_choice122, answer: true, question_id: 3031 },
            { id: 3123, content: $h_choice123, answer: false, question_id: 3031 },
            { id: 3124, content: $h_choice124, answer: false, question_id: 3031 },
            # h_question32
            { id: 3125, content: $h_choice125, answer: false, question_id: 3032 },
            { id: 3126, content: $h_choice126, answer: false, question_id: 3032 },
            { id: 3127, content: $h_choice127, answer: true, question_id: 3032 },
            { id: 3128, content: $h_choice128, answer: false, question_id: 3032 },
            # h_question33
            { id: 3129, content: $h_choice129, answer: false, question_id: 3033 },
            { id: 3130, content: $h_choice130, answer: true, question_id: 3033 },
            { id: 3131, content: $h_choice131, answer: false, question_id: 3033 },
            { id: 3132, content: $h_choice132, answer: false, question_id: 3033 },
            # h_question34
            { id: 3133, content: $h_choice133, answer: true, question_id: 3034 },
            { id: 3134, content: $h_choice134, answer: false, question_id: 3034 },
            { id: 3135, content: $h_choice135, answer: false, question_id: 3034 },
            { id: 3136, content: $h_choice136, answer: false, question_id: 3034 },
            # h_question35(2)
            { id: 3137, content: $h_choice137, answer: false, question_id: 3035 },
            { id: 3138, content: $h_choice138, answer: true, question_id: 3035 },
            { id: 3139, content: $h_choice139, answer: false, question_id: 3035 },
            { id: 3140, content: $h_choice140, answer: false, question_id: 3035 },
            # h_question36(2)
            { id: 3141, content: $h_choice141, answer: false, question_id: 3036 },
            { id: 3142, content: $h_choice142, answer: true, question_id: 3036 },
            { id: 3143, content: $h_choice143, answer: false, question_id: 3036 },
            { id: 3144, content: $h_choice144, answer: false, question_id: 3036 },
            # h_question37(1)
            { id: 3145, content: $h_choice145, answer: true, question_id: 3037 },
            { id: 3146, content: $h_choice146, answer: false, question_id: 3037 },
            { id: 3147, content: $h_choice147, answer: false, question_id: 3037 },
            { id: 3148, content: $h_choice148, answer: false, question_id: 3037 },
            # h_question38
            { id: 3149, content: $h_choice149, answer: true, question_id: 3038 },
            { id: 3150, content: $h_choice150, answer: false, question_id: 3038 },
            { id: 3151, content: $h_choice151, answer: false, question_id: 3038 },
            { id: 3152, content: $h_choice152, answer: false, question_id: 3038 },
            # h_question39(4)
            { id: 3153, content: $h_choice153, answer: false, question_id: 3039 },
            { id: 3154, content: $h_choice154, answer: false, question_id: 3039 },
            { id: 3155, content: $h_choice155, answer: false, question_id: 3039 },
            { id: 3156, content: $h_choice156, answer: true, question_id: 3039 },
            # h_question40(4)
            { id: 3157, content: $h_choice157, answer: false, question_id: 3040 },
            { id: 3158, content: $h_choice158, answer: false, question_id: 3040 },
            { id: 3159, content: $h_choice159, answer: false, question_id: 3040 },
            { id: 3160, content: $h_choice160, answer: true, question_id: 3040 })
