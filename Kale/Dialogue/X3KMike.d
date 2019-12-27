BEGIN X3KMike 

CHAIN IF ~Dead("X3KThug2")Dead("X3KThug3")~ THEN X3KMike Surrender
@15 // ~Wait! Just take the damn supplies  back. This isn't worth dying for!~
DO ~GiveItem("X3KSYBQ",Player1)AddJournalEntry(@10035,QUEST)~ END 
++ @16 EXTERN X3KMike Escape  // ~Thank you. Now get out of here, before I call the guards.~
++ @17 EXTERN X3KMike Escape // ~I'm glad you saw reason. We'll take this back to the shop.~
++ @19 DO ~Enemy()Attack(NearestEnemyOf(Myself))~ EXIT // ~Not so fast. You're not getting away.~

CHAIN X3KMike Escape 
@20 // ~You'll not hear further from me, you got what you want now. Goodbye.~
DO ~EscapeArea()~
EXIT 


CHAIN IF ~IsValidForPartyDialogue("X3Kale")!Dead("X3KKEEP")~ THEN X3KMike t1 
@1 // ~I've got nothing to say to you. Be a smart <PRO_GIRLBOY> and move along.~
END 
++ @2 EXTERN X3KMike t1.1 // ~Is your name Mike?~
++ @3 EXTERN X3KMike t1.2 // ~I'll do as I please.~
++ @4 EXIT // ~Sorry, I'll just move along.~ 

CHAIN X3KMike t1.1 
@5 // ~It might. And what's it to you?~
END 
++ @6 EXTERN X3KMike t1.3 // ~A store worker believed you stole something from a shop.~
++ @7 EXTERN X3KMike t1.3 // ~You took something from a store that wasn't yours. So now it is my business.~
++ @4 EXIT // ~Sorry, I'll just move along.~

CHAIN X3KMike t1.2 
@8 // ~Is that a challenge?~
== X3KaleJ @18 // ~You really should watch yourself mate. A fight isn't good for you.~
END 
++ @2 EXTERN X3KMike t1.1 // ~Is your name Mike?~
++ @9 EXTERN X3KMike t1.fight // ~It is, if you're not a coward.~
++ @4 EXIT // ~Sorry, I'll just move along.~ 

CHAIN X3KMike t1.fight 
@10 // ~You're an idiot. Gut <PRO_HIMHER>, boys.~
DO ~ActionOverride("X3KThug2",Enemy())ActionOverride("X3KThug2",Attack(NearestEnemyOf(Myself)))ActionOverride("X3KThug3",Enemy())ActionOverride("X3KThug3",Attack(NearestEnemyOf(Myself)))~
EXIT 

CHAIN X3KMike t1.3 
@11 // ~And he sent mercenaries. I was hoping he'd come himself. He courted and then broke my brother's heart and I wanted to ruin him in revenge. I know he's been giving people things he shouldn't. I just want to...expedite the process.~
== X3KMike @12 // ~I've no interest in giving what I took back. It's personal. You can go back to him and say it's lost for good, unless you want to leave here bruised.~
END 
++ @13 EXTERN X3KMike t1.fight // ~Let's be reasonable. Hurt feelings is no reason to hurt a man. Let's talk about this.~
++ @14 EXTERN X3KMike t1.fight // ~If you won't give it, I'll take it from you.~
++ @4 EXIT // ~Sorry, I'll just move along.~ 

CHAIN IF ~~ THEN X3KMike Invalid 
@1 // ~I've got nothing to say to you. Be a smart <PRO_GIRLBOY> and move along.~
EXIT 