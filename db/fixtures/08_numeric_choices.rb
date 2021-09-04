require("./db/fixtures/choices/numeric")
Choice.seed(:id,
            # i_question1(1)
            { id:1001 , content: $n_choice1, answer: true, question_id: 1001 },
            { id:1002 , content: $n_choice2, answer: false, question_id: 1001 },
            { id:1003 , content: $n_choice3, answer: false, question_id: 1001 },
            { id:1004 , content: $n_choice4, answer: false, question_id: 1001 },
            # i_question2(4)
            { id:1005 , content: $n_choice5, answer: false, question_id: 1002 },
            { id:1006 , content: $n_choice6, answer: false, question_id: 1002 },
            { id:1007 , content: $n_choice7, answer: false, question_id: 1002 },
            { id:1008 , content: $n_choice8, answer: true, question_id: 1002 },
            # i_question3(3)
            { id:1009 , content: $n_choice9, answer: false, question_id: 1003 },
            { id:1010 , content: $n_choice10, answer: false, question_id: 1003 },
            { id:1011 , content: $n_choice11, answer: true, question_id: 1003 },
            { id:1012 , content: $n_choice12, answer: false, question_id: 1003 },
            # i_question4(2)
            { id:1013 , content: $n_choice13, answer: false, question_id: 1004 },
            { id:1014 , content: $n_choice14, answer: true, question_id: 1004 },
            { id:1015 , content: $n_choice15, answer: false, question_id: 1004 },
            { id:1016 , content: $n_choice16, answer: false, question_id: 1004 },
            # i_question5(2)
            { id:1017 , content: $n_choice17, answer: false, question_id: 1005 },
            { id:1018 , content: $n_choice18, answer: true, question_id: 1005 },
            { id:1019 , content: $n_choice19, answer: false, question_id: 1005 },
            { id:1020 , content: $n_choice20, answer: false, question_id: 1005 },
            # i_question6(1)
            { id:1021 , content: $n_choice21, answer: true, question_id: 1006 },
            { id:1022 , content: $n_choice22, answer: false, question_id: 1006 },
            { id:1023 , content: $n_choice23, answer: false, question_id: 1006 },
            { id:1024 , content: $n_choice24, answer: false, question_id: 1006 },
            # i_question7(3)
            { id:1025 , content: $n_choice25, answer: false, question_id: 1007 },
            { id:1026 , content: $n_choice26, answer: false, question_id: 1007 },
            { id:1027 , content: $n_choice27, answer: true, question_id: 1007 },
            { id:1028 , content: $n_choice28, answer: false, question_id: 1007 },
            # i_question8(4)
            { id:1029 , content: $n_choice29, answer: false, question_id: 1008 },
            { id:1030 , content: $n_choice30, answer: false, question_id: 1008 },
            { id:1031 , content: $n_choice31, answer: false, question_id: 1008 },
            { id:1032 , content: $n_choice32, answer: true, question_id: 1008 },
            # i_question9(1)
            { id:1033 , content: $n_choice33, answer: true, question_id: 1009 },
            { id:1034 , content: $n_choice34, answer: false, question_id: 1009 },
            { id:1035 , content: $n_choice35, answer: false, question_id: 1009 },
            { id:1036 , content: $n_choice36, answer: false, question_id: 1009 },
            # i_question10(3)
            { id:1037 , content: $n_choice37, answer: false, question_id: 1010 },
            { id:1038 , content: $n_choice38, answer: false, question_id: 1010 },
            { id:1039 , content: $n_choice39, answer: true, question_id: 1010 },
            { id:1040 , content: $n_choice40, answer: false, question_id: 1010 },
            # i_question11(4)
            { id:1041 , content: $n_choice41, answer: false, question_id: 1011 },
            { id:1042 , content: $n_choice42, answer: false, question_id: 1011 },
            { id:1043 , content: $n_choice43, answer: false, question_id: 1011 },
            { id:1044 , content: $n_choice44, answer: true, question_id: 1011 },
            # i_question12(4)
            { id:1045 , content: $n_choice45, answer: false, question_id: 1012 },
            { id:1046 , content: $n_choice46, answer: false, question_id: 1012 },
            { id:1047 , content: $n_choice47, answer: false, question_id: 1012 },
            { id:1048 , content: $n_choice48, answer: true, question_id: 1012 },
            # i_question13(2)
            { id:1049 , content: $n_choice49, answer: false, question_id: 1013 },
            { id:1050 , content: $n_choice50, answer: true, question_id: 1013 },
            { id:1051 , content: $n_choice51, answer: false, question_id: 1013 },
            { id:1052 , content: $n_choice52, answer: false, question_id: 1013 },
            # i_question14(1)
            { id:1053 , content: $n_choice53, answer: true, question_id: 1014 },
            { id:1054 , content: $n_choice54, answer: false, question_id: 1014 },
            { id:1055 , content: $n_choice55, answer: false, question_id: 1014 },
            { id:1056 , content: $n_choice56, answer: false, question_id: 1014 },
            # i_question15(3)
            { id:1057 , content: $n_choice57, answer: false, question_id: 1015 },
            { id:1058 , content: $n_choice58, answer: false, question_id: 1015 },
            { id:1059 , content: $n_choice59, answer: true, question_id: 1015 },
            { id:1060 , content: $n_choice60, answer: false, question_id: 1015 },
            # i_question16(3)
            { id:1061 , content: $n_choice61, answer: false, question_id: 1016 },
            { id:1062 , content: $n_choice62, answer: false, question_id: 1016 },
            { id:1063 , content: $n_choice63, answer: true, question_id: 1016 },
            { id:1064 , content: $n_choice64, answer: false, question_id: 1016 },
            # i_question17(4)
            { id:1065 , content: $n_choice65, answer: false, question_id: 1017 },
            { id:1066 , content: $n_choice66, answer: false, question_id: 1017 },
            { id:1067 , content: $n_choice67, answer: false, question_id: 1017 },
            { id:1068 , content: $n_choice68, answer: true, question_id: 1017 },
            # i_question18(4)
            { id:1069 , content: $n_choice69, answer: false, question_id: 1018 },
            { id:1070 , content: $n_choice70, answer: false, question_id: 1018 },
            { id:1071 , content: $n_choice71, answer: false, question_id: 1018 },
            { id:1072 , content: $n_choice72, answer: true, question_id: 1018 },
            # i_question19(2)
            { id:1073 , content: $n_choice73, answer: false, question_id: 1019 },
            { id:1074 , content: $n_choice74, answer: true, question_id: 1019 },
            { id:1075 , content: $n_choice75, answer: false, question_id: 1019 },
            { id:1076 , content: $n_choice76, answer: false, question_id: 1019 },
            # i_question20(1)
            { id:1077 , content: $n_choice77, answer: true, question_id: 1020 },
            { id:1078 , content: $n_choice78, answer: false, question_id: 1020 },
            { id:1079 , content: $n_choice79, answer: false, question_id: 1020 },
            { id:1080 , content: $n_choice80, answer: false, question_id: 1020 },
            # i_question21(3)
            { id:1081 , content: $n_choice81, answer: false, question_id: 1021 },
            { id:1082 , content: $n_choice82, answer: false, question_id: 1021 },
            { id:1083 , content: $n_choice83, answer: true, question_id: 1021 },
            { id:1084 , content: $n_choice84, answer: false, question_id: 1021 },
            # i_question22(2)
            { id:1085 , content: $n_choice85, answer: false, question_id: 1022 },
            { id:1086 , content: $n_choice86, answer: true, question_id: 1022 },
            { id:1087 , content: $n_choice87, answer: false, question_id: 1022 },
            { id:1088 , content: $n_choice88, answer: false, question_id: 1022 },
            # i_question23(3)
            { id:1089 , content: $n_choice89, answer: false, question_id: 1023 },
            { id:1090 , content: $n_choice90, answer: false, question_id: 1023 },
            { id:1091 , content: $n_choice91, answer: true, question_id: 1023 },
            { id:1092 , content: $n_choice92, answer: false, question_id: 1023 },
            # i_question24(2)
            { id:1093 , content: $n_choice93, answer: false, question_id: 1024 },
            { id:1094 , content: $n_choice94, answer: true, question_id: 1024 },
            { id:1095 , content: $n_choice95, answer: false, question_id: 1024 },
            { id:1096 , content: $n_choice96, answer: false, question_id: 1024 },
            # i_question25(3)
            { id:1097 , content: $n_choice97, answer: false, question_id: 1025 },
            { id:1098 , content: $n_choice98, answer: false, question_id: 1025 },
            { id:1099 , content: $n_choice99, answer: true, question_id: 1025 },
            { id:1100 , content: $n_choice100, answer: false, question_id: 1025 },
            # i_question26(2)
            { id:1101 , content: $n_choice101, answer: false, question_id: 1026 },
            { id:1102 , content: $n_choice102, answer: true, question_id: 1026 },
            { id:1103 , content: $n_choice103, answer: false, question_id: 1026 },
            { id:1104 , content: $n_choice104, answer: false, question_id: 1026 },
            # i_question27(2)
            { id:1105 , content: $n_choice105, answer: false, question_id: 1027 },
            { id:1106 , content: $n_choice106, answer: true, question_id: 1027 },
            { id:1107 , content: $n_choice107, answer: false, question_id: 1027 },
            { id:1108 , content: $n_choice108, answer: false, question_id: 1027 },
            # i_question28(3)
            { id:1109 , content: $n_choice109, answer: false, question_id: 1028 },
            { id:1110 , content: $n_choice110, answer: false, question_id: 1028 },
            { id:1111 , content: $n_choice111, answer: true, question_id: 1028 },
            { id:1112 , content: $n_choice112, answer: false, question_id: 1028 },
            # i_question29(3)
            { id:1113 , content: $n_choice113, answer: false, question_id: 1029 },
            { id:1114 , content: $n_choice114, answer: false, question_id: 1029 },
            { id:1115 , content: $n_choice115, answer: true, question_id: 1029 },
            { id:1116 , content: $n_choice116, answer: false, question_id: 1029 },
            # i_question30(2)
            { id:1117 , content: $n_choice117, answer: false, question_id: 1030 },
            { id:1118 , content: $n_choice118, answer: true, question_id: 1030 },
            { id:1119 , content: $n_choice119, answer: false, question_id: 1030 },
            { id:1120 , content: $n_choice120, answer: false, question_id: 1030 },
            # i_question31(4)
            { id:1121 , content: $n_choice121, answer: false, question_id: 1031 },
            { id:1122 , content: $n_choice122, answer: false, question_id: 1031 },
            { id:1123 , content: $n_choice123, answer: false, question_id: 1031 },
            { id:1124 , content: $n_choice124, answer: true, question_id: 1031 },
            # i_question32(2)
            { id:1125 , content: $n_choice125, answer: false, question_id: 1032 },
            { id:1126 , content: $n_choice126, answer: true, question_id: 1032 },
            { id:1127 , content: $n_choice127, answer: false, question_id: 1032 },
            { id:1128 , content: $n_choice128, answer: false, question_id: 1032 },
            # i_question33(3)
            { id:1129 , content: $n_choice129, answer: false, question_id: 1033 },
            { id:1130 , content: $n_choice130, answer: false, question_id: 1033 },
            { id:1131 , content: $n_choice131, answer: true, question_id: 1033 },
            { id:1132 , content: $n_choice132, answer: false, question_id: 1033 },
            # i_question34(1)
            { id:1133 , content: $n_choice133, answer: true, question_id: 1034 },
            { id:1134 , content: $n_choice134, answer: false, question_id: 1034 },
            { id:1135 , content: $n_choice135, answer: false, question_id: 1034 },
            { id:1136 , content: $n_choice136, answer: false, question_id: 1034 },
            # i_question35(2)
            { id:1137 , content: $n_choice137, answer: false, question_id: 1035 },
            { id:1138 , content: $n_choice138, answer: true, question_id: 1035 },
            { id:1139 , content: $n_choice139, answer: false, question_id: 1035 },
            { id:1140 , content: $n_choice140, answer: false, question_id: 1035 },
            # i_question36(1)
            { id:1141 , content: $n_choice141, answer: true, question_id: 1036 },
            { id:1142 , content: $n_choice142, answer: false, question_id: 1036 },
            { id:1143 , content: $n_choice143, answer: false, question_id: 1036 },
            { id:1144 , content: $n_choice144, answer: false, question_id: 1036 },
            # i_question37(3)
            { id:1145 , content: $n_choice145, answer: false, question_id: 1037 },
            { id:1146 , content: $n_choice146, answer: false, question_id: 1037 },
            { id:1147 , content: $n_choice147, answer: true, question_id: 1037 },
            { id:1148 , content: $n_choice148, answer: false, question_id: 1037 },
            # i_question38(4)
            { id:1149 , content: $n_choice149, answer: false, question_id: 1038 },
            { id:1150 , content: $n_choice150, answer: false, question_id: 1038 },
            { id:1151 , content: $n_choice151, answer: false, question_id: 1038 },
            { id:1152 , content: $n_choice152, answer: true, question_id: 1038 },
            # i_question39(4)
            { id:1153 , content: $n_choice153, answer: false, question_id: 1039 },
            { id:1154 , content: $n_choice154, answer: false, question_id: 1039 },
            { id:1155 , content: $n_choice155, answer: false, question_id: 1039 },
            { id:1156 , content: $n_choice156, answer: true, question_id: 1039 },
            # i_question40(4)
            { id:1157 , content: $n_choice157, answer: false, question_id: 1040 },
            { id:1158 , content: $n_choice158, answer: false, question_id: 1040 },
            { id:1159 , content: $n_choice159, answer: true, question_id: 1040 },
            { id:1160 , content: $n_choice160, answer: false, question_id: 1040 },
            # i_question41(3)
            { id:1161 , content: $n_choice161, answer: false, question_id: 1041 },
            { id:1162 , content: $n_choice162, answer: false, question_id: 1041 },
            { id:1163 , content: $n_choice163, answer: true, question_id: 1041 },
            { id:1164 , content: $n_choice164, answer: false, question_id: 1041 },
            # i_question42(1)
            { id:1165 , content: $n_choice165, answer: true, question_id: 1042 },
            { id:1166 , content: $n_choice166, answer: false, question_id: 1042 },
            { id:1167 , content: $n_choice167, answer: false, question_id: 1042 },
            { id:1168 , content: $n_choice168, answer: false, question_id: 1042 },
            # i_question43(1)
            { id:1169 , content: $n_choice169, answer: true, question_id: 1043 },
            { id:1170 , content: $n_choice170, answer: false, question_id: 1043 },
            { id:1171 , content: $n_choice171, answer: false, question_id: 1043 },
            { id:1172 , content: $n_choice172, answer: false, question_id: 1043 },
            # i_question44(2)
            { id:1173 , content: $n_choice173, answer: false, question_id: 1044 },
            { id:1174 , content: $n_choice174, answer: true, question_id: 1044 },
            { id:1175 , content: $n_choice175, answer: false, question_id: 1044 },
            { id:1176 , content: $n_choice176, answer: false, question_id: 1044 },
            # i_question45(2)
            { id:1177 , content: $n_choice177, answer: false, question_id: 1045 },
            { id:1178 , content: $n_choice178, answer: true, question_id: 1045 },
            { id:1179 , content: $n_choice179, answer: false, question_id: 1045 },
            { id:1180 , content: $n_choice180, answer: false, question_id: 1045 },
            # i_question46(1)
            { id:1181 , content: $n_choice181, answer: true, question_id: 1046 },
            { id:1182 , content: $n_choice182, answer: false, question_id: 1046 },
            { id:1183 , content: $n_choice183, answer: false, question_id: 1046 },
            { id:1184 , content: $n_choice184, answer: false, question_id: 1046 },
            # i_question47(1)
            { id:1185 , content: $n_choice185, answer: true, question_id: 1047 },
            { id:1186 , content: $n_choice186, answer: false, question_id: 1047 },
            { id:1187 , content: $n_choice187, answer: false, question_id: 1047 },
            { id:1188 , content: $n_choice188, answer: false, question_id: 1047 },
            # i_question48(3)
            { id:1189 , content: $n_choice189, answer: false, question_id: 1048 },
            { id:1190 , content: $n_choice190, answer: false, question_id: 1048 },
            { id:1191 , content: $n_choice191, answer: true, question_id: 1048 },
            { id:1192 , content: $n_choice192, answer: false, question_id: 1048 },
            # i_question49(2)
            { id:1193 , content: $n_choice193, answer: false, question_id: 1049 },
            { id:1194 , content: $n_choice194, answer: true, question_id: 1049 },
            { id:1195 , content: $n_choice195, answer: false, question_id: 1049 },
            { id:1196 , content: $n_choice196, answer: false, question_id: 1049 },
            # i_question50(4)
            { id:1197 , content: $n_choice197, answer: false, question_id: 1050 },
            { id:1198 , content: $n_choice198, answer: false, question_id: 1050 },
            { id:1199 , content: $n_choice199, answer: false, question_id: 1050 },
            { id:1200 , content: $n_choice200, answer: true, question_id: 1050 },
            # i_question51(1)
            { id:1201 , content: $n_choice201, answer: true, question_id: 1051 },
            { id:1202 , content: $n_choice202, answer: false, question_id: 1051 },
            { id:1203 , content: $n_choice203, answer: false, question_id: 1051 },
            { id:1204 , content: $n_choice204, answer: false, question_id: 1051 },
            # i_question52(4)
            { id:1205 , content: $n_choice205, answer: false, question_id: 1052 },
            { id:1206 , content: $n_choice206, answer: false, question_id: 1052 },
            { id:1207 , content: $n_choice207, answer: false, question_id: 1052 },
            { id:1208 , content: $n_choice208, answer: true, question_id: 1052 },
            # i_question53(4)
            { id:1209 , content: $n_choice209, answer: false, question_id: 1053 },
            { id:1210 , content: $n_choice210, answer: false, question_id: 1053 },
            { id:1211 , content: $n_choice211, answer: false, question_id: 1053 },
            { id:1212 , content: $n_choice212, answer: true, question_id: 1053 },
            # i_question54(1)
            { id:1213 , content: $n_choice213, answer: true, question_id: 1054 },
            { id:1214 , content: $n_choice214, answer: false, question_id: 1054 },
            { id:1215 , content: $n_choice215, answer: false, question_id: 1054 },
            { id:1216 , content: $n_choice216, answer: false, question_id: 1054 },
            # i_question55(2)
            { id:1217 , content: $n_choice217, answer: false, question_id: 1055 },
            { id:1218 , content: $n_choice218, answer: true, question_id: 1055 },
            { id:1219 , content: $n_choice219, answer: false, question_id: 1055 },
            { id:1220 , content: $n_choice220, answer: false, question_id: 1055 },
            # i_question56(4)
            { id:1221 , content: $n_choice221, answer: false, question_id: 1056 },
            { id:1222 , content: $n_choice222, answer: false, question_id: 1056 },
            { id:1223 , content: $n_choice223, answer: false, question_id: 1056 },
            { id:1224 , content: $n_choice224, answer: true, question_id: 1056 },
            # i_question57(1)
            { id:1225 , content: $n_choice225, answer: true, question_id: 1057 },
            { id:1226 , content: $n_choice226, answer: false, question_id: 1057 },
            { id:1227 , content: $n_choice227, answer: false, question_id: 1057 },
            { id:1228 , content: $n_choice228, answer: false, question_id: 1057 },
            # i_question58(4)
            { id:1229 , content: $n_choice229, answer: false, question_id: 1058 },
            { id:1230 , content: $n_choice230, answer: false, question_id: 1058 },
            { id:1231 , content: $n_choice231, answer: false, question_id: 1058 },
            { id:1232 , content: $n_choice232, answer: true, question_id: 1058 },
            # i_question59(1)
            { id:1233 , content: $n_choice233, answer: true, question_id: 1059 },
            { id:1234 , content: $n_choice234, answer: false, question_id: 1059 },
            { id:1235 , content: $n_choice235, answer: false, question_id: 1059 },
            { id:1236 , content: $n_choice236, answer: false, question_id: 1059 },
            # i_question60(2)
            { id:1237 , content: $n_choice237, answer: false, question_id: 1060 },
            { id:1238 , content: $n_choice238, answer: true, question_id: 1060 },
            { id:1239 , content: $n_choice239, answer: false, question_id: 1060 },
            { id:1240 , content: $n_choice240, answer: false, question_id: 1060 },
            # i_question61(2)
            { id:1241 , content: $n_choice241, answer: false, question_id: 1061 },
            { id:1242 , content: $n_choice242, answer: true, question_id: 1061 },
            { id:1243 , content: $n_choice243, answer: false, question_id: 1061 },
            { id:1244 , content: $n_choice244, answer: false, question_id: 1061 },
            # i_question62(1)
            { id:1245 , content: $n_choice245, answer: true, question_id: 1062 },
            { id:1246 , content: $n_choice246, answer: false, question_id: 1062 },
            { id:1247 , content: $n_choice247, answer: false, question_id: 1062 },
            { id:1248 , content: $n_choice248, answer: false, question_id: 1062 },
            # i_question63(2)
            { id:1249 , content: $n_choice249, answer: false, question_id: 1063 },
            { id:1250 , content: $n_choice250, answer: true, question_id: 1063 },
            { id:1251 , content: $n_choice251, answer: false, question_id: 1063 },
            { id:1252 , content: $n_choice252, answer: false, question_id: 1063 },
            # i_question64(3)
            { id:1253 , content: $n_choice253, answer: false, question_id: 1064 },
            { id:1254 , content: $n_choice254, answer: false, question_id: 1064 },
            { id:1255 , content: $n_choice255, answer: true, question_id: 1064 },
            { id:1256 , content: $n_choice256, answer: false, question_id: 1064 },
            # i_question65(4)
            { id:1257 , content: $n_choice257, answer: false, question_id: 1065 },
            { id:1258 , content: $n_choice258, answer: false, question_id: 1065 },
            { id:1259 , content: $n_choice259, answer: false, question_id: 1065 },
            { id:1260 , content: $n_choice260, answer: true, question_id: 1065 },
            # i_question66(2)
            { id:1261 , content: $n_choice261, answer: false, question_id: 1066 },
            { id:1262 , content: $n_choice262, answer: true, question_id: 1066 },
            { id:1263 , content: $n_choice263, answer: false, question_id: 1066 },
            { id:1264 , content: $n_choice264, answer: false, question_id: 1066 },
            # i_question67(4)
            { id:1265 , content: $n_choice265, answer: false, question_id: 1067 },
            { id:1266 , content: $n_choice266, answer: false, question_id: 1067 },
            { id:1267 , content: $n_choice267, answer: false, question_id: 1067 },
            { id:1268 , content: $n_choice268, answer: true, question_id: 1067 },
            # i_question68(2)
            { id:1269 , content: $n_choice269, answer: false, question_id: 1068 },
            { id:1270 , content: $n_choice270, answer: true, question_id: 1068 },
            { id:1271 , content: $n_choice271, answer: false, question_id: 1068 },
            { id:1272 , content: $n_choice272, answer: false, question_id: 1068 },
            # i_question69(4)
            { id:1273 , content: $n_choice273, answer: false, question_id: 1069 },
            { id:1274 , content: $n_choice274, answer: false, question_id: 1069 },
            { id:1275 , content: $n_choice275, answer: false, question_id: 1069 },
            { id:1276 , content: $n_choice276, answer: true, question_id: 1069 },
            # i_question70(2)
            { id:1277 , content: $n_choice277, answer: false, question_id: 1070 },
            { id:1278 , content: $n_choice278, answer: true, question_id: 1070 },
            { id:1279 , content: $n_choice279, answer: false, question_id: 1070 },
            { id:1280 , content: $n_choice280, answer: false, question_id: 1070 }
            )