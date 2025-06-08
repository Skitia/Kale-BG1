BEGIN X3KDEAL

CHAIN IF ~Global("X3KDealQuest","GLOBAL",0)Global("X3KaleQuestAccept","GLOBAL",0)~ THEN X3KDEAL b1 
@0 // ~Why are you bothering me?~
EXIT 

CHAIN IF ~Global("X3KDealQuest","GLOBAL",0)Global("X3KaleQuestAccept","GLOBAL",1)~ THEN X3KDeal b1.1
@0 // ~Why are you bothering me?~
END 
+~Global("X3KaleQuestAccept","GLOBAL",1)~+ @26 EXTERN X3KDEAL b1.2 // ~We're here to talk about Samuel's debt.~
++ @25 EXIT // ~Nevermind.~
 
CHAIN X3KDEAL b1.2 
@1 // ~Easy pickings. Fool got cocky. Was amusing to watch the smirk get wiped off his face.~
== X3KDEAL @2 // ~I'll tell you the same thing I told him: I want my thousand coins, there's no weaseling out of this.~
END 
++ @3 DO ~SetGlobal("X3KaleAppChange","GLOBAL",5)~ EXTERN X3KDEAL b1.gold // ~How about we pay it off for you?  Here's a thousand.~ 
++ @4 EXTERN X3KDEAL b1.offer// ~Surely we can come to an agreement to help this poor halfling out.~
++ @5 DO ~SetGlobal("X3KaleAppChange","GLOBAL",7)~ EXTERN X3KDEAL b1.attack // ~There's no debt if you're not alive to collect it.~
++ @6 EXTERN X3KDEAL b1.ask // ~That's too much to ask.~

CHAIN X3KDEAL b1.gold 
@7 // ~Consider the debt paid in full. You can tell the halfling we've got no further business.~ 
== X3KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN @8 // ~Damn Lucky Sam. You really didn't have to go out of your way for him. Well, let's tell the bloke the good news.~
DO ~SetGlobal("X3KDealQuest","GLOBAL",2)AddJournalEntry(@10017,QUEST)~
EXIT 

CHAIN X3KDEAL b1.offer
@9 // ~Suppose there is. There's some other bloke who is trying to weasel out of his debt, a dwarf named Kirk. Nearly killed one of our collectors too. Tends to hover in Jopalin's rowdy tavern.~
= @10 // ~You get the gold from him, and we'll be considered even.~
END 
++ @11 DO ~SetGlobal("X3KaleAppChange","GLOBAL",5)~ EXTERN X3KDEAL b1.gold // ~I'd rather just pay off the gold now. Here's a thousand.~
++ @12 EXTERN X3KDEAL b1.offer1 // ~You have a deal.~
++ @5 DO ~SetGlobal("X3KaleAppChange","GLOBAL",7)~ EXTERN X3KDEAL b1.attack // ~There's no debt if you're not alive to collect it.~
++ @6 EXTERN X3KDEAL b1.ask // ~That's too much to ask.~

CHAIN X3KDEAL b1.offer1 
@13 // ~Get to it, then.~
DO ~SetGlobal("X3KDealQuest","GLOBAL",1)AddJournalEntry(@10021,QUEST)~
EXIT 

CHAIN X3KDEAL b1.attack 
@14 // ~You're messing with the wrong man.~
DO ~Enemy()ActionOverride("X3KThug",Enemy())~
EXIT 

CHAIN X3KDEAL b1.ask 
@15 // ~Then pike off.~ 
EXIT 

CHAIN IF ~Global("X3KDealQuest","GLOBAL",1)Global("X3KaleQuestAccept","GLOBAL",1)~ THEN X3KDeal b2
@16 // ~You back?~
END 
+~Dead("X3KIRK")~+ @17 EXTERN X3KDEAL b2.dwarf // ~The dwarf attacked us! He didn't have the gold on him either.~
++ @11 DO ~SetGlobal("X3KaleAppChange","GLOBAL",5)~ EXTERN X3KDEAL b1.gold // ~I'd rather just pay off the gold now. Here's a thousand.~
++ @18 DO ~SetGlobal("X3KaleAppChange","GLOBAL",7)~ EXTERN X3KDEAL b1.attack // ~I am, decided it would be easier to just take you out.~
+~!Dead("X3KIRK")~+ @19 EXTERN X3KDEAL b2.again // ~What do I need to do again?~
++ @20 EXIT // ~I'll be going.~

CHAIN X3KDEAL b2.again 
@21 // ~There's some other bloke who is trying to weasel out of his debt, a dwarf named Kirk. Nearly killed one of our collectors too. Tends to hover in Jopalin's rowdy tavern.~
= @10 // ~You get the gold from him, and we'll be considered even.~
END 
++ @11 EXTERN X3KDEAL b1.gold // ~I'd rather just pay off the gold now. Here's a thousand.~
++ @20 EXIT // ~I'll be going.~
++ @5 EXTERN X3KDEAL b1.attack // ~There's no debt if you're not alive to collect it.~

CHAIN X3KDEAL b2.dwarf 
@22 // ~Bloody dwarves. Well, that weasel has been a thorn for us for some time. I'll consider his death as payment.~
= @23 // ~You can tell the halfling we've no further business with him.~
== X3KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN @8 // ~Damn Lucky Sam. You really didn't have to go out of your way for him. Well, let's tell the bloke the good news.~
DO ~SetGlobal("X3KaleAppChange","GLOBAL",7)SetGlobal("X3KDealQuest","GLOBAL",2)AddJournalEntry(@10017,QUEST)~
EXIT

CHAIN IF ~Global("X3KDealQuest","GLOBAL",2)~ THEN X3KDeal b3 
@24 // ~I already told you, deal is clear. We've got no further business.~
EXIT 

