
// Drake-Kale 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossDrakeKale","LOCALS",0)~ THEN X3KaleB KaleDrakeBanter1
@0 = ~You sure you're a knight, mate? Your armor doesn't seem nearly shiny enough.~
DO ~SetGlobal("CrossDrakeKale","LOCALS",1)~
== BC0Drake @1 // ~Perhaps not. You're welcome to serve as my acting squire and take up the task of polishing it if it bothers you.~
== X3KAleB @2 // ~Hey, I never play second fiddle- wait. You're joking, aren't you?~
== BC0Drake @3 // ~Am I not permitted to make a harmless jest?~
== X3KAleB @4 // ~Pfft, I've never met a knight that could crack a joke at all, let alone take one.~
== BC0Drake @5 // ~A joking knight with tarnished armor... quite a shocking sight, I know.~
== X3KAleB @6 // ~Should I expect you to start swearing up a storm next?~
== BC0Drake @7 // ~You have yet to see me after downing three tankards of Sembian Dragon's Breath, my friend.~
== X3KAleB @8 // ~Heh, now *that* you've got to show me. You ain't bad at all, Drake.~
EXIT 

// Drake-Kale 2
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDrakeKale","LOCALS",1)~ THEN X3KaleB KaleDrakeBanter2
@9 // ~You eyein' me again, church man? Figurin' if I've got any more halfling ale in my bag?
DO ~SetGlobal("CrossDrakeKale","LOCALS",2)~
== BC0Drake @10 // ~I wouldn't be opposed to the idea, but with your appetite, I have no doubt you've emptied your bottles long before now.~
== X3KAleB @11 // ~Aye, you know it. Nothing personal, mate, I just get real thirsty after all those battlecries.~
== BC0Drake @12 // ~Nothing soothes a parched throat, whether from shouting or prayers, quite like the intoxicating scent of a good, strong drink, wouldn't you say?~
== X3KAleB @13 // ~Compared to your fancy brews, a nice mug of good halfling stout ale's like a cleansing warmth from top to bottom. You've got good taste, though. You ever smoke?~
== BC0Drake @14 // ~Not since my adolescent days. My father is fond of your folk's pipeweed, though. Personally, I find the smell rather unappetizing... no offense meant, considering who I'm speaking to.~
== X3KAleB @15 // ~Ah, none taken. Least you're not making any jabs at my height.~
== BC0Drake @16 // ~Perhaps I was about to get to that.~
== X3KAleB @17 // ~Don't even go there, longshank.~
EXIT 
