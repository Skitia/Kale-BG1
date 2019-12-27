BEGIN X3KBRO 

CHAIN IF ~IsValidForPartyDialogue("X3Kale")Global("X3KaleQuestAccept","GLOBAL",0)~ THEN X3KBRO b1 
@1 // ~Kale? What brings you to this place? Ma sent you?~
DO ~TakePartyItem("X3KNote")~
== X3KaleJ @2 // ~She sure did. Got this letter for you. Why the hells have you got her worried?~
== X3KBRO @3 // ~I meant to, I did, but you know how she worries.~
== X3KaleJ @4 // ~What trouble have you gotten yourself into this time?~
== X3KBRO @5 // ~Lost my fortune. Tymora left me, she has. Lost in a game I surely had in the bags, and now I owe money to the guys upstairs.~
== X3KaleJ @6 // ~Idiot.~
END 
++ @7 EXTERN X3KaleJ b1Help // ~Perhaps we can help.~
++ @8 EXTERN X3KaleJ b1Help // ~What is the problem?~
++ @9 EXTERN X3KBRO b1Story // ~We are only here to deliver the letter.~
++ @10 EXTERN X3KBRO b1Story // ~I've heard this tale before.~ 

CHAIN X3KaleJ b1Help 
@11 // ~Oh boy. <CHARNAME>, this is not a good idea. He got himself in this mess, he should get himself out of it.~ 
EXTERN X3KBRO b1Story 

CHAIN X3KBRO b1Story 
@12  // ~Kale, I just need someone to give a bit of gold or persuade the man upstairs to clear my debt. It was an unfair game, they had to have cheat! I had a sure victory.~
== X3KaleJ @13 // ~You should know better than that anyway, Samuel. Don't feel like you need to do anything, <CHARNAME>.~
END 
++ @14 EXTERN X3KaleJ b1Help2 // ~It's not an inconvenience. We'll lend a hand.~
++ @15 EXTERN X3KBRO b3Done // ~As you say, Kale. I'm sorry, Samuel, but you're on your own.~
++ @16 EXTERN X3KaleJ b1Help2 // ~He's your family. We'll help him.
++ @17 EXTERN X3KBRO b3Done // ~We have other things to do, yes.~ 

CHAIN X3KaleJ b1Help2 
@18 // ~I think it's pointless, but your call, mate.~
== X3KBRO @19 // ~Thank you, thank you. I thought I'd never find a way to see this unfair debt cleared. He's upstairs, flanked by his thuggish guard.~
DO ~SetGlobal("X3KaleQuestAccept","GLOBAL",1)~
EXIT 
 
CHAIN X3KBRO b3Done 
@20 // ~I'll figure this out on my own, brother. Thanks for the letter, Kale.~ 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @22 // ~And don't forget to write mother back!~
== X3KBRO @21 // ~I won't, I won't. Will do it soon as I can afford a quill. I'll be going now.~
DO ~EscapeArea()SetGlobal("X3KaleQuestDone","GLOBAL",1)AddJournalEntry(@10014,QUEST_DONE)AddexperienceParty(2750)~
EXIT  



/* This doesn't check if Kale is in the party, so when we use his lines, we should do such a check.*/
CHAIN IF ~Global("X3KaleQuestAccept","GLOBAL",1)~ THEN X3KBRO b2 
@24 // ~Is it done?~ 
END 
+~Global("X3KDealQuest","GLOBAL",2)~+ @25 EXTERN X3KBRO b2Done // ~You don't have to worry about your debt anymore.~
+~GlobalLT("X3KDealQuest","GLOBAL",2)~+ @26 EXTERN X3KBRO b2Yet // ~Not yet.~
+~GlobalLT("X3KDealQuest","GLOBAL",2)~+ @27 EXTERN X3KBRO b3Done // ~I changed my mind. We're not going to have time to help you.~ 

CHAIN X3KBRO b2Yet 
@28 // ~You will clear it, won't you? Soon? I hope you will.~ 
EXIT 

CHAIN X3KBRO b2Done 
@29 // ~Thank you. I'm going to write to ma right away, I'm happy enough to put words to ink!~
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @30 // ~Just don't stress her out anymore, Samuel. Stay out of trouble.~
== X3KBRO @31 // ~Yes, yes, I will. Thank you Kale, and thank you to your friends. Take this, I was saving it in case things got bad, but I won't need it anymore.~
DO ~EscapeArea()SetGlobal("X3KaleQuestDone","GLOBAL",2)AddJournalEntry(@10019,QUEST_DONE)CreateItem("X3KREW",0,0,0)AddexperienceParty(4500)~
EXIT 

APPEND X3KBRO 

IF ~!InParty("X3Kale")~ t1
SAY @0 // ~Let me give you some advice: Never gamble away all your hard-earned gold.~ 
IF ~~ EXIT 
END

END 