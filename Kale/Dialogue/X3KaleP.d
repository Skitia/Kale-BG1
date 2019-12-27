BEGIN X3KaleP

// Player kicking out Kale.

IF ~Global("X3KaleKickedOut","GLOBAL",0)~ kicked1
SAY @1 /*~Aww, we were having such fun! Are you sure, mate?~*/
++ @2 /*~I'm sorry, my mistake. Stay with me.~ */ DO ~JoinParty()~ EXIT
++ @3 /*Leave for now. If you're in Gullykin, I may come find you there if I need you in the future.*/ DO ~SetGlobal("X3KaleKickedOut","GLOBAL",1) MoveGlobal("AR4000","X3Kale",[2614.476])~ EXIT
++ @9 DO ~SetGlobal("X3KaleKickedOut","GLOBAL",1)LeaveParty()~ EXIT // ~Stay here for now.~ 
END


// Kale previously kicked out, and not in party. 

IF ~Global("X3KaleKickedOut","GLOBAL",1)~ kicked2
SAY @4 //~Lookie who it is! Come back for me?~
++ @5 /*~I have. Join me.~*/ + b3.1
++ @6 /* ~Not at the moment.~*/ + b3.2
END 

IF ~~ b3.1
SAY @7 /* ~More glory and stories await then!~ */
IF ~~ DO ~SetGlobal("X3KaleKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @8 /* ~Pity that. Oh well. See you around.~ */
IF ~~ EXIT
END
