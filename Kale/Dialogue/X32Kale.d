BEGIN X32Kale
//SoD Battle Over Line
IF WEIGHT #-1 ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY @135
IF ~~ EXIT 
END
//Kale Prejoining, no brother. 


CHAIN IF ~Global("X32KaleMet","GLOBAL",0)!AreaCheck("BD0109")!AreaCheck("BD0120")
!AreaCheck("BD0130")~ THEN X32Kale c1 
@0 
DO ~SetGlobal("X32KaleMet","GLOBAL",1)~ 
END
+~BeenInParty("X3Kale")~+ @1 DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + c2a
+~!BeenInParty("X3Kale")~+ @1 DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + c2a
+~!BeenInParty("X3Kale")~+  @2 + c2b
++ @3 + c2.reject

CHAIN X32Kale c2a 
@4
END
+~BeenInParty("Alora")~+ @5 + c2alora
+~!BeenInParty("Alora")~+ @6 + c2alora
++ @7 + c2.join
++ @8 + c2.reject
++ @9 + c2.reject

CHAIN X32Kale c2b 
@10
END
+~BeenInParty("Alora")~+ @5 + c2alora
+~!BeenInParty("Alora")~+ @6 + c2alora 
++ @7 + c2.join 
++ @8 + c2.reject
++ @9 + c2.reject

CHAIN X32Kale c2alora 
@11
END
++ @7 + c2.join 
++ @8 + c2.reject
++ @12 + c2.reject

CHAIN X32Kale c2.reject 
@13
DO ~SetGlobal("bd_npc_camp","locals",1)~ EXIT 

CHAIN X32Kale c2.join 
@14
DO ~JoinParty()AddJournalEntry(@100001,INFO)~ EXIT 

// Kale Unhappy. 

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)~ THEN X32Kale rep.break
@15
END
++ @16 + rep.break.1
++ @17 + rep.break.2
++ @18 + rep.break.3
++ @19 + rep.break.3

CHAIN X32Kale rep.break.1
@20
EXTERN X32Kale rep.break.4

CHAIN X32Kale rep.break.2
@21
EXTERN X32Kale rep.break.4

CHAIN X32Kale rep.break.3
@22
EXTERN X32Kale rep.break.4

CHAIN X32Kale rep.break.4
@23
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)~ EXIT

// Kale Kicked 


/*My assumption is that bd_joined is set upon joining in their local variable, thus why it is constantly used. Need to research to confirm.
We're using Aura's structure style here for these various kicked out/rejoin post-kickout dialogues.*/
CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN X32Kale o
@24
END
++ @25 + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Kale")~ + @26 + o.2
++ @27 + n.3

CHAIN X32Kale o.1
@28
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Kale o.2
@29
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) // Why is this global set? Need to research. 
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN X32Kale o.3
@30
END
++ @31 + o.4
++ @32 + o.5

CHAIN X32Kale o.4
@33
DO ~JoinParty()~ EXIT

CHAIN X32Kale o.5
@34
EXIT
/* We should figure out what ff_camp is. For now, let's keep to Aura's structure here as well.*/
CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN X32Kale n
@35
END
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Kale")~ + @36 DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1 // Check NPC Camp when we can. 
++ @37 + n.2
++ @38 + n.3

CHAIN X32Kale n.1
@39
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Kale n.2
@40
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Kale n.3
@41
DO ~JoinParty()~ EXIT



//Rejoin post Kicked 

CHAIN IF ~Global("bd_joined","LOCALS",0)~ THEN X32Kale p
@42
END
++ @43 + p.0
++ @44 + p.0
++ @45 + p.1 
++ @46 + p.1

CHAIN X32Kale p.0
@47
DO ~JoinParty()~ EXIT

CHAIN X32Kale p.1
@48
EXIT

// Kale meet with brother.

CHAIN IF WEIGHT #-1 ~Global("X32KaleMet","GLOBAL",0)!GlobalGT("bd_plot","global",585)~ THEN X32Kale b1 
@0 
DO ~SetGlobal("X32KaleMet","GLOBAL",1)~ 
END
/* We're going to initialize Kale's know variable here. BeenInParty will do it no matter what, !BeenInParty will require the PC to pick the recalling choice.*/
+~BeenInParty("X3Kale")~+ @49 DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + b1.BG1A
+~BeenInParty("X3Kale")~+ @50 DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + b1.BG1B
+~!BeenInParty("X3Kale")~+  @49 DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + b1.BG1A
+~!BeenInParty("X3Kale")~+  @2 + b1.NoBG1

CHAIN X32Kale b1.BG1A 
@51
== X32KBRO @52
EXTERN X32Kale b1.2

CHAIN X32Kale b1.BG1B 
@53
== X32KBRO @54
== X32KALE @55
== X32KBRO @56
EXTERN X32Kale b1.2 

CHAIN X32Kale b1.NoBG1 
@57 
== X32Kale @58
== X32KBRO @59
== X32KALE @60 
EXTERN X32Kale b1.2 

CHAIN X32Kale b1.2   
@61
END
++ @62 + b1.join 
+~Global("X32KaleWasInBG1","GLOBAL",1)~+ @63 + b1.fare 
++ @64 + b1.exit 

CHAIN X32Kale b1.fare 
@65
== X32KBRO @66
== X32Kale @67
END 
++ @68 + b1.join 
+~BeenInParty("Alora")~+ @69 + b1.Alora 
++ @70 + b1.exit 

CHAIN X32Kale b1.Alora 
@71
== X32KALE @72
== X32KALE @73
END  
++ @74 + b1.join 
++ @75 + b1.join
++ @76 + b1.Alora2
++ @70 + b1.exit 

CHAIN X32Kale b1.Alora2
@77
== X32KBRO @78
== X32KALE @79
== X32KBRO @80
== X32KALE @81 
DO ~EscapeArea()ActionOverride("X32KBRO",EscapeArea())~ EXIT 

CHAIN X32Kale b1.exit 
@82 
DO ~EscapeArea()ActionOverride("X32KBRO",EscapeArea())~ EXIT 

CHAIN X32Kale b1.join 
@83
== X32KBRO @84
== X32Kale @85
== X32KBRO @86
== x32Kale @87 
DO ~JoinParty()AddJournalEntry(@100001,INFO)ActionOverride("X32KBRO",EscapeArea())~ EXIT

APPEND X32Kale

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("X32KaleRomanceActive","global",2)~ postgame
SAY @88
+ ~Global("bd_player_exiled","global",0)~ + @89 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + @90 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + @91 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + @91 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + @92 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + @92 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad1
SAY @93
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamebad
SAY @94
++ @95 + postgamebad2A
++ @96 + postgamebad2B
++ @97 + postgamebad1
END

IF ~~ postgamebad2A 
SAY @98
IF ~~ + postgamebad2B 
END

IF ~~ postgamebad2B
SAY @99
= @100
+~!BeenInParty("X3Helga")~+ @101 + postgamebadHelga1
+~BeenInParty("X3Helga")~+ @102 + postgamebadHelga2
++ @103 + postgamebad3
++ @104 + postgamebad1 
END 

IF ~~ postgamebadHelga1 
SAY @105
IF ~~ + postgamebadHelga3 
END 

IF ~~ postgamebadHelga2 
SAY @106
IF ~~ + postgamebadHelga3 
END 


IF ~~ postgamebadHelga3 
SAY @107
IF ~~ EXIT 
END 

IF ~~ postgamebad3 
SAY @108
IF ~~ + postgamebadHelga3 
END 


IF ~~ postgamebad.1
SAY @109
= @110
= @111
IF ~~ EXIT
END

IF ~~ postgamegood.x
SAY @112
IF ~~ EXIT
END

IF ~~ postgamegood1
SAY @113
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY @114
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY @115
= @116
++ @117 + postgamegood.1
++ @118 + postgamegood.2
++ @119 + postgamegood.x
END

IF ~~ postgamegood.1
SAY @120
IF ~~ + postgamegood.3
END

IF ~~ postgamegood.2
SAY @121
IF ~~ + postgamegood.3
END

IF ~~ postgamegood.3
SAY @122
= @123
= @124
++ @125 + postgamegood.5
++ @126 + postgamegood.6
++ @127 + postgamegood.4
++ @128 + postgamegood.x
END

IF ~~ postgamegood.5
SAY @129
IF ~~ + postgamegood.x
END

IF ~~ postgamegood.4 
SAY @130
IF ~~ EXIT 
END 

IF ~~ postgamegood.6
SAY @131
= @132
= @133
= @134
IF ~~ EXIT
END

END 