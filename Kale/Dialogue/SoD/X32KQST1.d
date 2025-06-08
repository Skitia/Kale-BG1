BEGIN X32KQST1 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",0)IsValidForPartyDialogue("X3Kale")~ THEN X32KQST1 Q1 
@0
== X32KaleJ @1
== X32KQST1 @2
== X32KaleJ @3
DO ~SetGlobal("X32KaleQuest","GLOBAL",1)AddJournalEntry(@10100,QUEST)~
END 
++ @4 EXTERN X32KQST1 Q1.A
++ @5 EXTERN X32KaleJ Q1.B
++ @6 EXTERN X32KQST1 Q1.C 
++ @7 EXTERN X32KaleJ Q1.D 

CHAIN X32KQST1 Q1.A
@8
DO ~SetGlobal("X32KaleQuestTalk","GLOBAL",1)~
== X32KaleJ @9
== X32KQST1 @10
== X32KaleJ @11
EXIT   

CHAIN X32KaleJ Q1.B 
@12 
== X32KQST1 @13
== X32KaleJ @14 
END 
++ @4 EXTERN X32KQST1 Q1.A
++ @15 EXTERN X32KaleJ Q1.E
++ @16 EXTERN X32KQST1 Q1.C 
++ @7 EXTERN X32KaleJ Q1.D 

CHAIN X32KQST1 Q1.C 
@17
== X32KaleJ @18
END 
++ @19 EXTERN X32KQST1 Q1.A 
++ @20 EXTERN X32KQST1 Q1.F 
++ @21 EXTERN X32KQST1 Q1.F 

CHAIN X32KaleJ Q1.D 
@22
END 
++ @19 EXTERN X32KQST1 Q1.A 
++ @16 EXTERN X32KQST1 Q1.C 
++ @23 EXTERN X32KQST1 Q1.G 

CHAIN X32KaleJ Q1.E 
@24
END
++ @4 EXTERN X32KQST1 Q1.A
++ @16 EXTERN X32KQST1 Q1.C 
++ @7 EXTERN X32KaleJ Q1.D 

CHAIN X32KQST1 Q1.F 
@25
END
++ @26  + Q1.A 
++ @27 + Q1.G
++ @28 + Q1.G 

CHAIN X32KQST1 Q1.G 
@29
== X32KaleJ @30
== X32KQST1 @31
== X32KaleJ @32
EXIT 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",0)!IsValidForPartyDialogue("X3Kale")~ THEN X32KQST1 Q1.1
@33
DO ~SetGlobal("X32KaleQuest","GLOBAL",1)~
END 
++ @34 + Q1.1A 
++ @35 + Q1.1B 
++ @36 + Q1.1C 

CHAIN X32KQST1 Q1.1A 
@37
DO ~AddJournalEntry(@10100,QUEST)~ 
END 
++ @4 + Q1.1D  
++ @38 + Q1.1E 
++ @39 + Q1.1F 

CHAIN X32KQST1 Q1.1B 
@40 
DO ~AddJournalEntry(@10100,QUEST)~  
END 
++ @4 + Q1.1D  
++ @38 + Q1.1E 
++ @39 + Q1.1F 

CHAIN X32KQST1 Q1.1C 
@41
DO ~AddJournalEntry(@10100,QUEST)~  
END 
++ @4 + Q1.1D  
++ @38 + Q1.1E 
++ @39 + Q1.1F 

CHAIN X32KQST1 Q1.1D 
@8
EXIT 

CHAIN X32KQST1 Q1.1E 
@42
END
++ @26 + Q1.1D 
++ @27 + Q1.1F 
++ @28 + Q1.1F

CHAIN X32KQST1 Q1.1F 
@43 
EXIT 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",1)~ THEN X32KQST1 Q2 
@44 
EXIT 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",2)~ THEN X32KQST1 Q3 
@45
END
IF ~Global("X32KaleQuestLie","GLOBAL",1)IsValidForPartyDialogue("X3Kale")~ EXTERN X32KaleJ Q3.Lie  
IF ~OR(2)!Global("X32KaleQuestLie","GLOBAL",1)!IsValidForPartyDialogue("X3Kale")~ EXTERN X32KQST1 Q4

CHAIN X32KaleJ Q3.Lie 
@46
DO ~SetGlobal("X32KaleQuest","GLOBAL",3)AddJournalEntry(@10102,QUEST_DONE)AddexperienceParty(6000)~
== X32KQST1 @47
== X32KaleJ @48
END 
++ @49 EXTERN X32KQST1 Q3.Lie2 
++ @50 EXTERN X32KQST1 Q3.Sling 
+~IsValidForPartyDialogue("X3Kale")~+ @51 EXTERN X32KQST1 Q3.Lie2

CHAIN X32KQST1 Q3.Lie2 
@52
DO ~EscapeArea()~ 
== X32KaleJ @53
EXIT 

CHAIN X32KQST1 Q3.Sling 
@54
DO ~GiveItem("X32KQSL",Player1)~
EXTERN X32KQST1 Q3.Lie2 

CHAIN X32KQST1 Q4 
@55
END
++ @56 DO ~SetGlobal("X32KaleQuest","GLOBAL",3)AddJournalEntry(@10101,QUEST_DONE)AddexperienceParty(6000)~ +  Q4.A 
++ @57 DO ~SetGlobal("X32KaleQuest","GLOBAL",3)SetGlobal("X32KaleQuestLie","GLOBAL",1)AddJournalEntry(@10102,QUEST_DONE)AddexperienceParty(6000)~ + Q4.B 
++ @58 + Q4.G 

CHAIN X32KQST1 Q4.A 
@59
== X32KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN @60
== X32KQST1 @61
END 
++ @62 + Q4.D 
++ @63 + Q4.C 
++ @64 + Q4.E 
++ @65 + Q4.E 

CHAIN X32KQST1 Q4.B 
@66
== X32KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN @67
== X32KQST1 IF ~IsValidForPartyDialogue("X3Kale")~ THEN @68
== X32KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN @48
END 
++ @49 EXTERN X32KQST1 Q3.Lie3
++ @50 EXTERN X32KQST1 Q3.Sling2 
+~IsValidForPartyDialogue("X3Kale")~+ @51 EXTERN X32KQST1 Q3.Lie3

CHAIN X32KQST1 Q3.Sling2 
@69
DO ~GiveItem("X32KQSL",Player1)~
EXTERN X32KQST1 Q3.Lie3 

CHAIN X32KQST1 Q3.Lie3 
@70
DO ~EscapeArea()~ EXIT 

CHAIN X32KQST1 Q4.D 
@71
END 
++ @63 + Q4.C 
++ @64 + Q4.E 
++ @65 + Q4.E 

CHAIN X32KQST1 Q4.C 
@72
DO ~GiveItem("X32KQSL",Player1)~
EXTERN X32KQST1 Q4.E 

CHAIN X32KQST1 Q4.E 
@73
END 
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X32KaleJ Q4.F 
IF ~!IsValidForPartyDialogue("X3Kale")~ DO ~EscapeArea()~ EXIT

CHAIN X32KaleJ Q4.F 
@74
== X32KQST1 @75
== X32KaleJ @76
== X32KQST1 @77
DO ~EscapeArea()~ EXIT 
 
CHAIN X32KQST1 Q4.G 
@78
EXIT 



