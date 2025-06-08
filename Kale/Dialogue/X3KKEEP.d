BEGIN X3KKEEP
/* This chain appearing means the assistant will refuse to continue the quest. The only way the character can finish it is by murdering the assistant, thus losing reputation.*/
CHAIN IF ~Global("X3KaleCloakQuestAccept","GLOBAL",3)~ THEN X3KKEEP MAD
@17 // ~I've nothing to say to the likes of you. Speak to the shopkeep or get out!~
EXIT 


CHAIN IF ~OR(2)Global("X3KaleCloakQuestAccept","GLOBAL",2)!IsValidForPartyDialogue("X3Kale")~ THEN X3KKEEP INVALID
@1 // ~Don't bother me. I've got work to do.~
EXIT 

CHAIN IF ~Global("X3KaleCloakQuestAccept","GLOBAL",0)IsValidForPartyDialogue("X3Kale")~ THEN X3KKEEP c1 
@2 // ~Don't bother me. I've got work t- what do you want, halfling?~
== X3KaleJ @3 // ~Come on, mate. Friend. I just came for some quality raw materials to make a cloak with.~
== X3KKEEP @4 // ~We're not friends, I merely admire your work. Besides, my superior will get suspicious if more raw goods go directly to a customer, and not a product.~
== X3KKEEP @5 // ~A thief has hit this place and there's no way I can discreetly sneak out more raw goods. Someone I know personally. I'm not giving out anything anymore.~
END 
++ @6 EXTERN X3KKEEP c2 // ~Perhaps we can help find the thief. Tell us what you know of them.~
++ @7 EXTERN X3KKEEP c3 // ~What if we pay you for the supplies Kale needs?~
++ @8 DO ~SetGlobal("X3KaleAppChange","GLOBAL",3)~ EXTERN X3KaleJ c4 // ~You will if you don't want to get hurt.~
++ @9 DO ~AddJournalEntry(@10033,QUEST)~ EXIT // ~We'll leave you be, then.~

CHAIN X3KKEEP c2 
@10 // ~I suspect it was a chap named Mike. We were friends once, and he came here often purchasing wares.~
== X3KKEEP @11 // ~Then he kept asking for things on loan, promising to pay later. Never did.~
== X3KKEEP @12 // ~Now he's clearly resorting to thievery. Hanging around that low lantern place changed him.~
END 
++ @13 EXTERN X3KKEEP c5 // ~Consider it done. We'll track down the thief.~
++ @14 EXTERN X3KKEEP c3 // ~What if we pay you for the supplies Kale needs?~
++ @15 EXTERN X3KaleJ c4 // ~Never mind. Just give us what you need if you don't want to get hurt.~
++ @16 DO ~AddJournalEntry(@10033,QUEST)~ EXIT // ~I'm not interested in assisting. Good day.~

CHAIN X3KKEEP c3 
@31 // ~Unless you were offering something substantial, it is simply not worth further risk to my job here.~
END 
++ @6 EXTERN X3KKEEP c2 // ~Perhaps we can help find the thief. Tell us what you know of them.~
+~PartyGoldGT(99)~+ @32 EXTERN X3KKEEP p1 // ~A hundred gold to satisfy your concerns?~
+~PartyGoldGT(499)~+ @18 DO ~TakePartyGold(500)~ EXTERN X3KKEEP p2 // ~I can pay you five hundred.~
+~PartyGoldGT(999)~+ @19 DO ~TakePartyGold(1000)~ EXTERN X3KKEEP p2 // ~Surely one thousand should be enough?~
++ @15 EXTERN X3KaleJ c4 // ~Never mind. Just give us what you need if you don't want to get hurt.~
++ @9 DO ~AddJournalEntry(@10033,QUEST)~ EXIT // ~We'll leave you be, then.~

CHAIN X3KaleJ c4 
@20 // ~The hell are you doing, <CHARNAME>?~
== X3KKEEP @21 //~I'll not be threatened. Get out or stop talking to me.~
DO ~SetGlobal("X3KaleCloakQuestAccept","GLOBAL",3)AddJournalEntry(@10033,QUEST)~ 
EXIT 

CHAIN X3KKEEP p1 
@21 // ~That is not going to change things around for me.~
END 
++ @6 EXTERN X3KKEEP c2 // ~Perhaps we can help find the thief. Tell us what you know of them.~
+~PartyGoldGT(499)~+ @18 DO ~TakePartyGold(500)~ EXTERN X3KKEEP p2 // ~I can pay you five hundred.~
+~PartyGoldGT(999)~+ @19 DO ~TakePartyGold(1000)~ EXTERN X3KKEEP p2 // ~Surely one thousand should be enough?~
++ @15 EXTERN X3KaleJ c4 // ~Never mind. Just give us what you need if you don't want to get hurt.~
++ @9 DO ~AddJournalEntry(@10033,QUEST)~ EXIT // ~We'll leave you be, then.~

CHAIN X3KKEEP p2 
@22 // ~I suppose that is enough to ease my worries. Enough to get a job with a better boss if I get the boot for... missing raw materials.~
DO ~SetGlobal("X3KaleAppChange","GLOBAL",8)~
== X3KKEEP @23 // ~Here are the materials you need for your cloak, Kale. Your handiwork is fine, you should consider your own shop.~
== X3KaleJ @24 // ~Thanks mate. Might consider hiring you if I ever do.~
== X3KKEEP @25 // ~I'll never work for you. Now, do stop bothering me, I've got to get back to work before things get suspicious.~
DO ~GiveItem("X3KTBQ","X3Kale")SetGlobal("X3KaleCloakQuestAccept","GLOBAL",2)AddexperienceParty(1500)AddJournalEntry(@10032,QUEST)~
EXIT 

CHAIN X3KKEEP c5
@26 // ~Good. I'd try the Low Lantern, otherwise I've really no idea where he could be.~
DO ~SetGlobal("X3KaleCloakQuestAccept","GLOBAL",1)AddJournalEntry(@10034,QUEST)~ EXIT 

CHAIN IF ~Global("X3KaleCloakQuestAccept","GLOBAL",1)!PartyHasItem("X3KSYBQ")~ THEN X3KKEEP NOITEM
@27 // ~What are you still doing here? Talk to the shopkeep if you want to buy things, our deal isn't on until you get back the supplies.~
EXIT 

/*Normal reward route.*/
CHAIN IF ~Global("X3KaleCloakQuestAccept","GLOBAL",1)PartyHasItem("X3KSYBQ")~ THEN X3KKEEP HASITEM
@28 // ~You've returned and you have it, excellent! I may be still in a job.~
DO ~SetGlobal("X3KaleAppChange","GLOBAL",9)~
== X3KKEEP @29 // ~I suppose there's no harm giving you a few raw materials that will never be noticed in exchange as promised. Let me get everything and...there.~
== X3KKEEP @23 // ~Here are the materials you need for your cloak, Kale. Your handiwork is fine, you should consider your own shop.~
== X3KaleJ @24 // ~Thanks mate. Might consider hiring you if I ever do.~
== X3KKEEP @25 // ~I'll never work for you. Now, do stop bothering me, I've got to get back to work before things get suspicious.~
DO ~TakePartyItem("X3KSYBQ")GiveItem("X3KTBQ","X3Kale")SetGlobal("X3KaleCloakQuestAccept","GLOBAL",2)AddexperienceParty(3000)AddJournalEntry(@10032,QUEST)~
EXIT 
