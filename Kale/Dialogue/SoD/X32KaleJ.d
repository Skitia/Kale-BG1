BEGIN X32KaleJ

// Talk 1 

IF ~Global("X32KaleTalk","GLOBAL",2)~ Talk1 
SAY @0
++ @1 + T1.A
++ @2 + T1.B
++ @3 + T1.C
END 

IF ~~ T1.A 
SAY @4
+~!Global("X32KaleWasInBG1","GLOBAL",1)~+ @5 + T1.D1 
+~Global("X32KaleWasInBG1","GLOBAL",1)~+ @5 + T1.D2 
++ @6 + T1.E 
++ @7 + T1.C
END 

IF ~~ T1.D1 
SAY @8
++ @9 + T1.F 
++ @10 + T1.G
++ @11 + T1.C 
END 

IF ~~ T1.D2  
SAY @12
++ @13 + T1.F 
++ @10 + T1.H
++ @11 + T1.C 
END 

IF ~~ T1.E 
SAY @14
++ @9 + T1.F 
++ @10 + T1.G
++ @11 + T1.C 
END 

IF ~~ T1.F 
SAY @15
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.G 
SAY @16
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.H 
SAY @17 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.B 
SAY @18 
IF ~~ + T1.A 
END 

IF ~~ T1.C 
SAY @19 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 2 

IF ~Global("X32KaleTalk","GLOBAL",4)~ Talk2 
SAY @20 
++ @21 + T2.A 
+~Race(Player1,HALFLING)~+ @22 +  T2.B 
+~!Race(Player1,HALFLING)~+ @22 +  T2.B2
++ @23 +  T2.C 
++ @24 + T2.D 
END 

IF ~~ T2.A
SAY @25
IF ~CheckStatGT(Player1,10,CHR)~ + T2.E1 
IF ~CheckStatLT(Player1,11,CHR)~ + T2.E2 
END 

IF ~~ T2.B 
SAY @26 
IF ~CheckStatGT(Player1,10,CHR)~ + T2.E1 
IF ~CheckStatLT(Player1,11,CHR)~ + T2.E2 
END 

IF ~~ T2.B2
SAY @27 
IF ~CheckStatGT(Player1,10,CHR)~ + T2.E1 
IF ~CheckStatLT(Player1,11,CHR)~ + T2.E2 
END 

IF ~~ T2.C 
SAY @28 
++ @21 + T2.A 
+~Race(Player1,HALFLING)~+ @22 +  T2.B // This is a romance trigger. 
+~!Race(Player1,HALFLING)~+ @22 +  T2.B2
++ @29 + T2.D 
END 


IF ~~ T2.D 
SAY @30 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T2.E1 
SAY @31
++ @32 + T2.F 
+~Race(Player1,HALFLING)~+ @33 + T2.G // Romance flag 
+~!Race(Player1,HALFLING)~+ @33 + T2.G2
++ @34 + T2.Thanks 
++ @35 + T2.Alora 
END 

IF ~~ T2.E2 
SAY @36 
++ @37 + T2.H
++ @38 + T2.Thanks 
+~Race(Player1,HALFLING)~+ @33 + T2.G // Romance flag. 
+~!Race(Player1,HALFLING)~+ @33 + T2.G2
END 

IF ~~ T2.F 
SAY @39
IF ~~ + T2.Thanks 
END  

IF ~~ T2.G 
SAY @40 
IF ~~ + T2.Thanks 
END 

IF ~~ T2.G2 
SAY @41 
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Alora 
SAY @42
++ @43 + T2.Alora2 
+~BeenInParty("Alora")Global("X32KaleWasInBG1","GLOBAL",1)~+ @44 + T2.AloraBG1 // This will actually end the romance.
++ @45 + T2.Alora2 
++ @46 + T2.Alora3 
END 

IF ~~ T2.H 
SAY @47
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Alora2 
SAY @48
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Alora3 
SAY @49
IF ~~ + T2.Thanks 
END 

IF ~~ T2.AloraBG1 
SAY @50 
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Thanks 
SAY @51
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 3 

IF ~Global("X32KaleTalk","GLOBAL",6)~ Talk3 
SAY @52
++ @53 + T3.A 
++ @54 + T3.A 
++ @55 + T3.A 
++ @56 + T3.B 
END 

IF ~~ T3.A 
SAY @57 
++ @58 + T3.C 
++ @59 + T3.D 
++ @60 + T3.E  
++ @61 + T3.F 
END 

IF ~~ T3.B 
SAY @62
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T3.C 
SAY @63 
++ @64 + T3.G 
++ @65 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T3.H 
++ @61 + T3.F 
END 

IF ~~ T3.D 
SAY @66
++ @64 + T3.G
++ @65 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T3.H
++ @61 + T3.F 
END 

IF ~~ T3.E 
SAY @67 
++ @64 + T3.G 
++ @68 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T3.H  
++ @61 + T3.F 
END 


IF ~~ T3.F 
SAY @69
IF ~~ + T3.Exit 
END 

IF ~~ T3.G 
SAY @70 
IF ~~ + T3.Exit 
END 

IF ~~ T3.H 
SAY @71
IF ~~ + T3.Exit 
END 

IF ~~ T3.Exit 
SAY @72
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 4
IF ~Global("X32KaleTalk","GLOBAL",8)~ Talk4 
SAY @73
+~!Race(Player1,HALFLING)~+ @74 + T4.A 
++ @75 + T4.B 
+~InParty("X3Helga")~+ @76 + T4.C 
+~!InParty("X3Helga")~+ @76 + T4.DD 
END 

IF ~~ T4.A 
SAY @77
IF ~~ + T4.B
END 

IF ~~ T4.B
SAY @78
= @79
++ @80 + T4.D 
++ @81 + T4.E 
++ @82 + T4.F 
++ @83 + T4.G 
END 

IF ~~ T4.C 
SAY @84
IF ~~ + T4.B 
END 

IF ~~ T4.DD 
SAY @85
IF ~~ + T4.B 
END 

IF ~~ T4.D 
SAY @86
IF ~~ + T4.H 
END 

IF ~~ T4.E 
SAY @87
IF ~~ + T4.H 
END 

IF ~~ T4.F 
SAY @88
IF ~~ + T4.H 
END 

IF ~~ T4.G 
SAY @89
IF ~~ + T4.H 
END 

IF ~~ T4.H 
SAY @90
++ @91 + T4.I 
++ @92 + T4.X 
++ @93 + T4.K 
END 

IF ~~ T4.I 
SAY @94
IF ~~ + T4.X 
END 

IF ~~ T4.X
SAY @95 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END

IF ~~ T4.K 
SAY @96
IF ~~ + T4.X 
END 

IF ~Global("X32KaleTalk","GLOBAL",10)~ Talk5 // Only occurs if Romance Variable is still at 1.
SAY @97
++ @98 + T5.A 
++ @99 + T5.B 
++ @100 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.X // There will be no other opportunity to raise it, so flag it off.
END 

IF ~~ T5.A 
SAY @101
= @102 
++ @103 + T5.C  
++ @104 + T5.D
++ @105 + T5.E 
END 

IF ~~ T5.B 
SAY @106
IF ~~ + T5.B
END 

IF ~~ T5.C 
SAY @107
++ @108 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.F1 
+~Global("X32KaleRomanceActive","GLOBAL",1)~+ @109 + T5.G
++ @110 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~+ T5.H  
END 

IF ~~ T5.D 
SAY @111  
++ @112 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.F1 
+~Global("X32KaleRomanceActive","GLOBAL",1)~+ @113 + T5.G 
++ @114 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.H1 
++ @115 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.X 
END 

IF ~~ T5.E 
SAY @116
++ @112 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.F1
+~Global("X32KaleRomanceActive","GLOBAL",1)~+ @113 + T5.G 
++ @114 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.H1 
++ @115 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.X 
END 

IF ~~ T5.F1 
SAY @117
IF ~~ + T5.F 
END 

IF ~~ T5.F 
SAY @118
= @119
++ @120 + T5.I 
++ @121 + T5.J 
++ @122 + T5.I 
END 

IF ~~ T5.G 
SAY @123
= @124
++ @125 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",2)~ + T5.K 
++ @126 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",2)~ + T5.L 
++ @127 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.M
END 

IF ~~ T5.H1 
SAY @128
IF ~~ +  T5.F 
END 

IF ~~ T5.H 
SAY @129
IF ~~ + T5.F 
END 

IF ~~ T5.I 
SAY @130
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.J 
SAY @131
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.K 
SAY @132
= @133
++ @134 + T5.N 
++ @135 + T5.O 
END 

IF ~~ T5.L 
SAY @136
IF ~~  + T5.K 
END 

IF ~~ T5.M 
SAY @137 
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.N 
SAY @138
IF ~~ + T5.O
END 

IF ~~ T5.O 
SAY @139
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.X
SAY @140
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 6

IF ~Global("X32KaleTalk","GLOBAL",12)~ Talk6 
SAY @141
+~Global("X32KaleRomanceActive","GLOBAL",2)~+  @142 + T6.A  
++ @143 + T6.B 
++ @144 + T6.C 
++ @145 + T6.D 
END 

IF ~~ T6.A  
SAY @146
IF ~~ + T6.E 
END 

IF ~~ T6.B 
SAY @147
IF ~Global("X32KaleRomanceActive","GLOBAL",2)~ + T6.E 
IF ~!Global("X32KaleRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T6.C
SAY @148
IF ~Global("X32KaleRomanceActive","GLOBAL",2)~ + T1.E 
IF ~!Global("X32KaleRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T6.D 
SAY @149
IF ~Global("X32KaleRomanceActive","GLOBAL",2)~ + T1.E 
IF ~!Global("X32KaleRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT  
END 

IF ~~ T6.E 
SAY @150
++ @151 + T6.F 
++ @152 + T6.G 
++ @153 + T6.G 
END 

IF ~~ T6.F 
SAY @154
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T6.G 
SAY @155
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Mkhiin Conflict 

IF ~Global("X32KalemkhiinConflict","LOCALS",1)~ MkhiinConflict 
SAY @156 
+~CheckStatGT(Player1,15,STR)~+ @157 +  BA.B 
+~RandomNum(3,1)CheckStatLT(Player1,16,STR)~+ @157 +  BA.B 
+~RandomNum(3,2)CheckStatLT(Player1,16,STR)~+ @157 +  BA.A 
+~RandomNum(3,3)CheckStatLT(Player1,16,STR)~+ @157 +  BA.A 
++ @158 + BA.C
+~CheckStatGT(Player1,15,CHR)~+ @159 + BA.B
+~RandomNum(3,1)CheckStatLT(Player1,16,CHR)~+ @159 + BA.B
+~RandomNum(3,2)CheckStatLT(Player1,16,CHR)~+ @159 + BA.A
+~RandomNum(3,3)CheckStatLT(Player1,16,CHR)~+ @159 + BA.A
END 

IF ~~ BA.A 
SAY @160
++ @161 + BA.E
++ @162 + BA.C
END 

IF ~~ BA.B 
SAY @163
IF ~~ DO ~SetGlobal("X32KaleMkhiinConflict","LOCALS",2)~ EXIT
END 

IF ~~ BA.E 
SAY @164 
IF ~~ DO ~SetGlobal("X32KaleMkhiinConflict","LOCALS",-2)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 
END 

// Quest 1 

IF ~Global("X32KaleQuestTalk","GLOBAL",2)~ Quest1 
SAY @165
++ @166 + Q1.A 
++ @167 + Q1.B 
++ @168 + Q1.C 
END  

IF ~~ Q1.A
SAY @169
IF ~~ + Q1.A1 
END 

IF ~~ Q1.A1 
SAY @170
= @171
++ @172 + Q1.D 
++ @173 + Q1.E 
++ @174 + Q1.F 
END 

IF ~~ Q1.B 
SAY @175
++ @166 + Q1.A 
++ @176 + Q1.Exit
++ @177 + Q1.Exit
END 

IF ~~ Q1.C 
SAY @178 
IF ~~ + Q1.A1 
END 

IF ~~ Q1.D 
SAY @179 
IF ~~ + Q1.Exit 
END 

IF ~~ Q1.E 
SAY @180
IF ~~ + Q1.Exit 
END 

IF ~~ Q1.F 
SAY @181
IF ~~ + Q1.Exit 
END 

IF ~~ Q1.Exit
SAY @182
IF ~~ DO ~IncrementGlobal("X32KaleQuestTalk","GLOBAL",1)~ EXIT 
END 

IF ~Global("X32KaleQuestTalk","GLOBAL",4)~ Q2 
SAY @183
= @184
++ @185 + Q2.A
++ @186 + Q2.A 
++ @187 + Q2.I 
END 

IF ~~ Q2.A 
SAY @188
++ @189 + Q2.B 
++ @190 + Q2.C 
++ @191 + Q2.D 
END 

IF ~~ Q2.I 
SAY @192
IF ~~ + Q2.A
END  

IF ~~ Q2.B 
SAY @193
= @194
++ @195 + Q2.E 
++ @196 + Q2.F  
++ @197 + Q2.G 
++ @198 + Q2.G 
END 

IF ~~ Q2.C 
SAY @199
IF ~~ + Q2.B 
END 

IF ~~ Q2.D 
SAY @200
IF ~~ + Q2.B 
END 

IF ~~ Q2.E 
SAY @201
IF ~~ DO ~SetGlobal("X32KaleQuestTalk","GLOBAL",5)SetGlobal("X32KaleQuestLie","GLOBAL",1)~ EXIT 
END 

IF ~~ Q2.F 
SAY @202
IF ~~ DO ~SetGlobal("X32KaleQuestTalk","GLOBAL",5)~ EXIT 
END 

IF ~~ Q2.G 
SAY @203
++ @204 + Q2.H 
++ @196 + Q2.F
++ @205 + Q2.F 
++ @206 + Q2.E 
END 

IF ~~ Q2.H 
SAY @207
++ @196 + Q2.F
++ @205 + Q2.F 
++ @206 + Q2.E 
END 


// THRIX

IF ~Global("X32KaleSacrifice","bd4500",1)~ ThrixTalk0
SAY @208
+ ~!Global("X32_thrix_mark_Kale","global",1)~ + @209 DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Kale","global",1)~ + @209 DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Kale","global",1)~ + @210 DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Kale","global",1)~ + @210 DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Kale","global",1)~ + @211 DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Kale","global",1)~ + @211 DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY @212
IF ~OR(2)
Global("X32KaleRomanceActive","GLOBAL",1)
Global("X32KaleRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32KaleRomanceActive","GLOBAL",1)
!Global("X32KaleRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY @213
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY @214
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY @215
IF ~OR(2)
Global("X32KaleRomanceActive","GLOBAL",1)
Global("X32KaleRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32KaleRomanceActive","GLOBAL",1)
!Global("X32KaleRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY @216
IF ~~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY @217
IF ~~ EXIT
END



// M'Khinn Conflict 

CHAIN X32KaleJ BA.C 
@218
DO ~SetGlobal("X32KaleMkhiinConflict","LOCALS",-1)~
== BDMKHIIJ @219
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 

// Schael Corwin of Kale's location. Had to add a LOT to this one.
/*For this to be perfect, we should add the variable that flags the PC having met Kale, so they don't superfluously mention Kale even after rejecting him.*/


 


I_C_T2 BDSCHAEL 39 X3KaleBDDSChael39
== BDSCHAEL @220
END

I_C_T2 BDSCHAEL 66 X3KaleBDDSChael66
== BDSCHAEL @220
END

I_C_T2 BDSCHAEL 70 X3KaleBDDSChael70
== BDSCHAEL @221
END

I_C_T2 BDSCHAEL 68 X3KaleBDDSChael70
== BDSCHAEL @222
END

EXTEND_TOP BDSCHAEL 115 #4
+~!InParty("X3Kale")~+ @223 EXTERN BDSCHAEL bdschael120
END 

EXTEND_TOP BDSCHAEL 120 #4
+~!InParty("X3Kale")~+ @224 EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 116 #4
+~!InParty("X3Kale")~+ @224 EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 121 #4
+~!InParty("X3Kale")~+ @223 EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 122 #4
+~!InParty("X3Kale")~+ @223 EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 123 #4
+~!InParty("X3Kale")~+ @223 EXTERN BDSCHAEL bdschael120
END

CHAIN BDSCHAEL bdschael120
@225
COPY_TRANS BDSCHAEL 120

I_C_T2 BDSCHAEL 62 X3KaleBDDSChae62
== BDSCHAEL @226
END

EXTEND_TOP BDSCHAEL 60 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael
END

EXTEND_TOP BDSCHAEL 63 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael
END

EXTEND_TOP BDSCHAEL 65 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael
END



EXTEND_TOP BDSCHAEL 64 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael
END

CHAIN BDSCHAEL bdschael
@228
COPY_TRANS BDSCHAEL 62

EXTEND_TOP BDSCHAEL 89 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael91
END

CHAIN BDSCHAEL bdschael91
@228
COPY_TRANS BDSCHAEL 91

EXTEND_TOP BDSCHAEL 91 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael91
END

EXTEND_TOP BDSCHAEL 92 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael91
END

EXTEND_TOP BDSCHAEL 93 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael91
END

EXTEND_TOP BDSCHAEL 94 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael91
END


EXTEND_TOP BDSCHAEL 99 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael107
END

CHAIN BDSCHAEL bdschael107
@228
COPY_TRANS BDSCHAEL 107

EXTEND_TOP BDSCHAEL 107 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael107
END



EXTEND_TOP BDSCHAEL 108 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael107
END



EXTEND_TOP BDSCHAEL 109 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael107
END



EXTEND_TOP BDSCHAEL 110 #4
+~!InParty("X3Kale")~+ @227 EXTERN BDSCHAEL bdschael107
END

I_C_T2 BDSCHAEL 202 X3KaleBDDSChael202
== BDSCHAEL @229
END

EXTEND_TOP BDSCHAEL 204 #4
+~!InParty("X3Kale")!Global("X32KaleMet","GLOBAL",1)~+ @227 EXTERN BDSCHAEL bdschael204
END

CHAIN BDSCHAEL bdschael204
@230
EXIT

EXTEND_TOP BDSCHAEL 204 #1
+~AreaCheck("BD0109")IfValidForPartyDialog("X3Kale")Global("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",0)~+ @231 DO ~SetGlobal("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelKaleMeet
END

CHAIN BDSCHAEL bdschaelKaleMeet
@232 
== X32KaleJ @233
== BDSCHAEL @234
COPY_TRANS BDSCHAEL 195

EXTEND_TOP BDSCHAEL 204 #2
+~AreaCheck("BD0109")IfValidForPartyDialog("X3Kale")Global("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",0)~+ @235 DO ~SetGlobal("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",1)~ EXTERN BDSCHAEL 205 
END

I_C_T BDSCHAEL 127 X32KaleBDSCHAEL127
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @236
END 

I_C_T BDSCHAEL 250 X32KaleBDSCHAEL250
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @237
END 

// Coran 

I_C_T2 BDCORAN 11 X32KaleBDCORAN11
== X32KALEJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~  THEN @238
END

// Garrick
I_C_T BDGARRIC 54 X32KaleBDGARRIC54 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @239
END 

I_C_T BDGARRIC 55 X32KaleBDGARRIC55 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~  THEN @240
END 


// Safana 

I_C_T BDSAFANA 28 X3KaleBDSAFANA28
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @241
== BDSAFANA IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @242
END 


// Dynaheir 

I_C_T BDDYNAHE 27 X32KaleBDDYNAHE27
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @243
END 

I_C_T BDJEGG 18 X32KaleBDJEGG18 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @244
END 

I_C_T BDTAKOS 8 X32KaleBDTAKOS8 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @245
== BDTAKOS @246 
END

I_C_T BDTAKOS 16 X32KaleBDTAKOS16
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @247
END

I_C_T BDTAKOS 18 X32KaleBDTAKOS18
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @247
END

// Caged Dorn Trolls.

I_C_T BDTROLL1 1 X32KaleBDTROLL1
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @248
END

I_C_T BDTROLL2 1 X32KaleBDTROLL2
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @248
END

I_C_T BDKHALID 55 X32KaleBDKHALID55 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @249
END

I_C_T BDGLINT 19 X32KaleBDGLINT19 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @250
END

// Riggs 

I_C_T BDRiggs 15 X32KaleBDRiggs15
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @251
END 

// Rasaad 

I_C_T BDRasaad 40 X32KaleBDRasaad40
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)Global("X32KaleWasInBG1","GLOBAL",1)~ THEN @252
END 

// Tiax 
I_C_T BDTiax 41 X32KaleBDTiax41
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @253
END 

//Korlasz
I_C_T BDKorlas 24 X32KaleBDKorlas
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @254
END 

// Viconia 
I_C_T BDViconi 25 X32KaleViconi25
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @255
END

// Morlis 

EXTEND_TOP BDMORLIS 4 #4 
+ ~IsValidForPartyDialogue("X3Kale")~ + @256 EXTERN X32KaleJ bdMorlis4
END 

CHAIN X32KaleJ bdMorlis4
@257 
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)~

COPY_TRANS BDMORLIS 6

// BDCLOVIS 

EXTEND_TOP BDCLOVIS 3 #3
+ ~IsValidForPartyDialogue("X3Kale")~ + @258 DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN X32KaleJ BDCLOVIS3 
END 

CHAIN X32KaleJ BDCLOVIS3 
@259
EXTERN BDCLOVIS 5

// Murs 

I_C_T BDMURS 14 X32KaleBDMURS14 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @260
END

// Therli 

I_C_T BDTHERLI 7 X32KaleBDTHERLI7
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @261
== BDTHERLI @262 
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
@263
END
++ @264 DO ~SetGlobal("X32KaleSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32KaleRomanceActive","GLOBAL",1) Global("X32KaleRomanceActive","GLOBAL",2)~ + @265 DO ~SetGlobal("X32_Saved_Kale","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32KaleJ ThrixWager2
+ ~!Global("X32KaleRomanceActive","GLOBAL",1) !Global("X32KaleRomanceActive","GLOBAL",2)~ + @266 DO ~SetGlobal("X32_Saved_Kale","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32KaleJ ThrixWager2
++ @267 EXTERN BDTHRIX 113
++ @268 EXTERN BDTHRIX 12

CHAIN X32KaleJ ThrixWager2
@269
== BDTHRIX @270
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
@271
END
++ @272 DO ~SetGlobal("X32_thrix_mark_Kale","global",1)~ EXTERN X32KaleJ ThrixWager5
++ @273 EXTERN BDTHRIX 10

CHAIN X32KaleJ ThrixWager5
@274
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("X3Kale_SoDparty_epilogue","GLOBAL",1)~ + @275 EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("X3Kale_SoDparty_epilogue","GLOBAL",1)~ + @275 EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
@276
EXTERN BDIMOEN 119

APPEND X32KaleJ 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY @277
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) OR(2) AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Kale.PIDCrypt1  
SAY  @421 // ~Woohoo. Can't wait to tell ma about this whole adventure. No exaggerating this time either. [KaleAct6]
IF ~~ EXIT 
END 

/*Some copying here is leaving some Kale things without their 2. This should be okay.*/
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Kale.PID 
 SAY  @278 
 + ~HPPercentGT(Myself,74)RandomNum(5,1)~ + @279 + Kale.PHowAreYou1 // @279
 + ~HPPercentGT(Myself,74)RandomNum(5,2)~ + @279 + Kale.PHowAreYou2 // @279
 + ~HPPercentGT(Myself,74)RandomNum(5,3)~ + @279 + Kale.PHowAreYou3 // @279
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,1)~+ @279 + Kale.PHowAreYouInjured // @279 //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ @279 + Kale.PHowAreYouHurt // @279 //(Under 50%)
 +~HPPercentGT(Myself,74)RandomNum(5,4)~+ @279 + Kale.PHowAreYou4 // @279
 +~HPPercentGT(Myself,74)RandomNum(5,5)~+ @279 + Kale.PHowAreYou5 // @279
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,2)~+ @279 + Kale.PHowAreYouInjured2  // @279
 ++ @280 + Kale.PTalk // @280 
 ++ @281 + FixString
 ++ @282 EXIT // @282 
 END 
 
 IF ~~ Kale.PHowAreYou1
SAY @283 
IF ~~ EXIT  
END 

IF ~~ Kale.PHowAreYou2
SAY @284 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou3
SAY @285 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouInjured
SAY @286 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouHurt
SAY @287 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou4
SAY @288
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou5
SAY @289
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouInjured2
SAY @290
IF ~~ EXIT  
END

IF ~~ Kale.PTalk 
SAY  @291 
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
// Companion Thoughts 
+ ~NumInPartyAliveGT(2)~ + @292  + Kale.PCompanionThoughts // @292 
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,5)Global("X32KaleRomanceActive","GLOBAL",2)~ + @293 + Em.Me3 // @293
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,5)!Global("X32KaleRomanceActive","GLOBAL",2)~ + @293 + Em.Me1 // @293
+ ~NumInPartyAliveLT(3)ReputationLT(Player1,6)~ + @293 + Em.Me2 // @293
// Dialogue From Talk Expansions. These fire once, and there will be 3 only: A talk of things while they were gone (7/8), something friendly, and something flirty. 
+~Global("X32KaleMarriage","GLOBAL",0)~+ @294 DO ~SetGlobal("X32KaleMarriage","GLOBAL",1)~  + X32KaleP.Marriage
+~GlobalGT("X32KaleTalk","GLOBAL",6)Global("X32KalePIDTalk2","GLOBAL",0)~+ @295 DO ~SetGlobal("X32KalePIDTalk2","GLOBAL",0)~ + X32KaleP.PIDTalk2
+~Global("X32KaleRomanceActive","GLOBAL",2)Global("X32KalePIDTalk3","GLOBAL",0)~+ @296 DO ~SetGlobal("X32KalePIDTalk3","GLOBAL",0)~ + X32KaleP.PIDTalk3
++ @297 EXIT 
END 

IF ~~ Kale.PCompanionThoughts 
SAY @298 // @298 
// BG1
+~InParty("Dynaheir")~+ @299 + Em.Dynaheir
+~InParty("Edwin")~+ @300 + Em.Edwin
+~InParty("Jaheira")~+ @301 + Em.Jaheira 
+~InParty("Khalid")~+ @302 + Em.Khalid 
+~InParty("Minsc")~+ @303 + Em.Minsc 
+~InParty("Safana")~+ @304 + Em.Safana 
+~InParty("Viconia")~+ @305 + Em.Viconia     
// EE 
+~InParty("Neera")~+ @306 + Em.Neera 
+~InParty("Rasaad")~+ @307 + Em.Rasaad 
+~InParty("Dorn")~+ @308 + Em.Dorn 
+~InParty("Baeloth")~+ @309 + Em.Baeloth 
// SoD Only 
+~InParty("Glint")~+ @310 + Em.Glint 
+~InParty("Corwin")~+ @311 + Em.Corwin 
+~InParty("mkhiin")~+ @312 + Em.Mkhiin 
+~InParty("Voghlin")~+ @313 + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Helga")~+ @314 + Em.Helga
+~InParty("X3Rec")~+ @315 + Em.Recorder
+~InParty("X3Vien")~+ @316 + Em.Vienxay 
+~InParty("X3Kale")~+ @317 + Em.Emily
+~InParty("c0aura")~+ @318 + Em.Aura 
+~InParty("c0Drake")~+ @319 + Em.Drake 
+~InParty("C0Sirene")~+ @320 + Em.Sirene
+~InParty("L#1DVER")~ + @321 + Em.Verrsza
+~InParty("#Ishy")~ + @322 + Em.Ishy 
// Myself 
+~ReputationGT(Player1,5)!Global("X32KaleRomanceActive","GLOBAL",2)~+ @323 + Em.Me1 
+~ReputationLT(Player1,6)~+ @323 + Em.Me2
+~ReputationGT(Player1,5)Global("X32KaleRomanceActive","GLOBAL",2)~+ @323 + Em.Me3 
++ @324 EXIT  
END 

IF ~~ Em.Dynaheir 
SAY @325
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @326 
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @327 
END 

IF ~~ Em.Khalid 
SAY @328
IF ~~ EXIT 
END 



IF ~~ Em.Minsc 
SAY @329
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY @330
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @331
IF ~~ EXIT 
END 

IF ~~ Em.Helga
SAY @332
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY @333
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @334
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @335
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @336
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY @337
IF ~~ EXIT 
END 

IF ~~ Em.Mkhiin 
SAY @338
IF ~~ EXIT 
END 

IF ~~ Em.Glint 
SAY @339
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY @340
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @341
IF ~~ EXIT 
END 

IF ~~ Em.Emily   
SAY @342
IF ~~ EXIT 
END 

IF ~~ Em.Recorder 
SAY @343
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @344
IF ~~ EXIT 
END 

IF ~~ Em.Drake 
SAY @345
IF ~~ EXIT 
END 

IF ~~ Em.Sirene
SAY @346 
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza 
SAY @347
IF ~~ EXIT 
END 

IF ~~ Em.Ishy 
SAY @348
IF ~~ EXIT 
END 
 
IF ~~ Em.Me1 
SAY @349 
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @350 
IF ~~ EXIT 
END 

IF ~~ Em.Me3 
SAY @351
IF ~~ EXIT 
END 

IF ~~ X32KaleP.Marriage
SAY @352
/* IF KALE AND ALORA WERE IN PARTY BEFORE */ IF ~BeenInParty("Alora")BeenInParty("X3Kale")~ + X32KaleP.Marriage1
/*Anything else.*/ IF ~OR(2)!BeenInParty("Alora")!BeenInParty("X3Kale")~ + X32KaleP.Marriage2
END 

IF ~~ X32KaleP.Marriage1
SAY @353
IF ~~ + X32KaleP.Marriage3 
END 

IF ~~ X32KaleP.Marriage2 
SAY @354
IF ~~ + X32KaleP.Marriage3 
END 

IF ~~ X32KaleP.Marriage3 
SAY @355
++ @356 + X32KaleP.MarriageC
++ @357 + X32KaleP.MarriageC
++ @358 + X32KaleP.MarriageChance
++ @359 + X32KaleP.MarriageE
END  

IF ~~ X32KaleP.MarriageC 
SAY @360
= @361
++ @362 + X32KaleP.MarriageK 
++ @363 + X32KaleP.MarriageP
++ @364 + X32KaleP.MarriageCoward 
END 

IF ~~ X32KaleP.MarriageChance 
SAY @365
++ @362 + X32KaleP.MarriageK 
++ @363 + X32KaleP.MarriageP
++ @364 + X32KaleP.MarriageCoward 
END 

IF ~~ X32KaleP.MarriageE 
SAY @366
IF ~~ EXIT 
END 

IF ~~ X32KaleP.MarriageK 
SAY @367
= @368
IF ~~ EXIT 
END 

IF ~~ X32KaleP.MarriageP 
SAY @369
= @370
IF ~~ EXIT 
END 

IF ~~ X32KaleP.MarriageCoward 
SAY @371
= @372
IF ~~ EXIT 
END 

IF ~~ X32KaleP.PIDTalk2
SAY @373
= @374 
++ @375 + PID2.A 
++ @376 + PID2.B 
++ @377 + PID2.C 
END 

IF ~~ PID2.A 
SAY @378
++ @379 + PID2.B 
++ @380 + PID2.E 
++ @381 + PID2.F 
END 

IF ~~ PID2.B 
SAY @382
++ @383 + PID2.EXIT  
++ @384 + Kale.PTalk
END 

IF ~~ PID2.C 
SAY @385 
++ @386 + PID2.B
++ @387 + PID2.H 
++ @388 + PID2.I 
END 

IF ~~ PID2.E
SAY @389
++ @383 + PID2.EXIT  
++ @384 + Kale.PTalk
END 

IF ~~ PID2.F 
SAY @390
++ @383 + PID2.EXIT  
++ @384 + Kale.PTalk
END 

IF ~~ PID2.H 
SAY @391
++ @383 + PID2.EXIT  
++ @384 + Kale.PTalk
END 

IF ~~ PID2.I 
SAY @392 
++ @383 + PID2.EXIT  
++ @384 + Kale.PTalk
END 

IF ~~ PID2.EXIT 
SAY @393 
IF ~~ EXIT 
END 

IF ~~ X32KaleP.PIDTalk3
SAY @394
+~Global("X32KaleLT1","LOCALS",0)~+ @395 DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT2","LOCALS",0)~+ @396 DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
+~Global("X32KaleLT3","LOCALS",0)~+ @397 DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ @398 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + PID3.X
END 

IF ~~ PID3.A 
SAY @399
+~Global("X32KaleLT2","LOCALS",0)~+ @396 DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
+~Global("X32KaleLT3","LOCALS",0)~+ @397 DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ @384 + Kale.PTalk
++ @383 + PID2.EXIT  
END

IF ~~ PID3.B 
SAY @400
IF ~Global("X32KaleWasInBG1","GLOBAL",1)~ + PID3.B1 
IF ~!Global("X32KaleWasInBG1","GLOBAL",1)~  + PID3.B2 
END 

IF ~~ PID3.B1 
SAY @401 
+~Global("X32KaleLT1","LOCALS",0)~+ @395 DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT3","LOCALS",0)~+ @397 DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ @384 + Kale.PTalk
++ @383 + PID2.EXIT 
END

IF ~~ PID3.B2 
SAY @402
+~Global("X32KaleLT1","LOCALS",0)~+ @395 DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT3","LOCALS",0)~+ @397 DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ @384 + Kale.PTalk
++ @383 + PID2.EXIT 
END

IF ~~ PID3.C 
SAY @403
++ @404 + PID3.D 
++ @405 + PID3.E 
++ @406 + PID3.F 
++ @384 + Kale.PTalk
++ @383 + PID2.EXIT 
END
 
IF ~~ PID3.D 
SAY @407
++ @408 + PID3.E 
++ @409 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + PID3.X 
++ @410 + PID3.E 
END

IF ~~ PID3.E 
SAY @411
+~Global("X32KaleLT1","LOCALS",0)~+ @395 DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT2","LOCALS",0)~+ @396 DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
++ @384 + Kale.PTalk
++ @383 + PID2.EXIT 
END 

IF ~~ PID3.F 
SAY @412
++ @413 + PID3.G 
++ @414 DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + PID3.X 
++ @415+ PID3.H 
END 

IF ~~ PID3.G 
SAY @416 
+~Global("X32KaleLT1","LOCALS",0)~+ @395 DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT2","LOCALS",0)~+ @396 DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
++ @384 + Kale.PTalk
++ @383 + PID2.EXIT 
END 

IF ~~ PID3.H 
SAY @417
IF ~~ + PID3.G 
END 

IF ~~ PID3.X 
SAY @418
= @419
IF ~~ EXIT 
END 

IF ~~ FixString
SAY @420
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3KReset")~ EXIT 
END 

END