BEGIN X3KMOM 

CHAIN IF ~!InParty("X3Kale")~
THEN X3KMom KMomNoKale
@29 // ~You seem good folk. Remind me of Kale. He's an adventurer, too. Makes his mother proud.~
EXIT 


CHAIN IF ~IsValidForPartyDialog("X3Kale")
Global("X3KaleMomTalk","GLOBAL",0)~ THEN X3KMom KMom1 
@0 // ~Kale, sweety, where have you been? Your last few dinners were cold. Were you off on another adventure of yours?~
DO ~SetGlobal("X3KaleMomTalk","GLOBAL",1)~
== X3KaleJ @1 // ~Sorry ma! It was another adventure. 'Fraid I won't be staying, but wanted to check in on you and let you know I'd be gone.~
== X3KMOM @2 // ~Oh my Kale, grown up and saving the big wide world now. Do you and your company mind doing a favor?~
== X3KaleJ @3 // ~What is it, ma?~
== X3KMOM @4 // ~Your brother hasn't written back in a while. Can you take him this and check on him in Baldur's Gate?~
== X3KaleJ @5 // ~Well. That fine with you, leader?~ 
END 
++ @6 EXTERN X3KMOM ACE // ~I'll be happy to.~
++ @7 EXTERN X3KMOM ACE // ~There  are other priorities, but we can when we have time.~
++ @8 EXTERN X3KMOM REJ // ~There isn't time, I'm sorry.~
++ @9 EXTERN X3KMOM REJ // ~We're not messengers.~

CHAIN IF ~~ THEN X3KMOM ACE 
@10 // ~Thank you. Here, take this letter, and make sure your brother Samuel gets it.~
== X3KaleJ @11 // ~We will, ma. Stay well, and take care of yourself. <CHHARNAME>, he's probably in Baldur's Gate, likes to spend his money in that inn by the city's entrance. We can check there.~ 
DO ~AddJournalEntry(@10013,QUEST)
GiveItemCreate("X3KNOTE","X3Kale",1,0,0)
SetGlobal("X3KaleMomTalk","GLOBAL",2)~
EXIT 

CHAIN IF ~~ THEN X3KMOM REJ 
@12 // ~Ah, that's fine. I don't mean to put you on the spot, you have your own things to do.~
== X3KMOM @13 // ~Won't be able to make my way myself, and we don't have any couriers to help around here for a while...
== X3KMOM @14 // ~So if you and your friends change your mind, Kale, just come back.~
== X3KaleJ @15 // ~Got it, mom.~ 
== X3KaleJ @16 // ~Shame you don't want to help, <CHARNAME>. Maybe you'll re-consider later.~
EXIT 

CHAIN IF ~IsValidForPartyDialog("X3Kale")
Global("X3KaleMomTalk","GLOBAL",1)~ THEN X3KMom KMom2 
@17 // ~You're back. Do you have time to deliver this letter?~ 
END 
++ @6 EXTERN X3KMOM ACE // ~I'll be happy to.~
++ @7 EXTERN X3KMOM ACE // ~There  are other priorities, but we can when we have time.~
++ @8 EXTERN X3KMOM REJ2 // ~There isn't time, I'm sorry.~
++ @9 EXTERN X3KMOM REJ2 // ~We're not messengers.~

CHAIN IF ~~ THEN X3KMOM REJ2 
@18 // ~Oh, don't worry about it, now. Keep my son safe.~
EXIT 

/* This is a special chain that will only appear if Alora and Kale are courting. */
CHAIN IF ~IsValidForPartyDialog("X3Kale")
IsValidForPartyDialog("Alora")
GlobalGT("X3KaleMomTalk","GLOBAL",1)
Global("X3KaleAlora1","GLOBAL",4)
Global("X3KaleAloraMom","GLOBAL",1)~
THEN X3KMOM KMOM5 
@20 // ~It's good to see you again, dear.~
DO ~SetGlobal("X3KaleAloraMom","GLOBAL",2)~
== X3KaleJ @21 // ~Ma, before we go, I'd like to introduce you to someone special.~
== AloraJ @22 // ~Hi Mrs. Kale's mother. I'm Alora.~
== X3KMOM @23 // ~Oh, you are...oh Kale you are growing up so much.~
== X3KMOM @24 // ~So when is the handfasting? Are you going to do it here, in the burrow?~
== X3KaleJ @25 // ~Ma, let's not hurry now!~
== X3KMOM @26 // ~I've even got some rope around the burrow.~
== AloraJ @27 // ~Eh heh heh...~
== X3KaleJ @28 // ~Maybe another time, ma. <CHARNAME>, let's go. Please. Now.~
EXIT  

CHAIN IF ~IsValidForPartyDialog("X3Kale")
GlobalGT("X3KaleMomTalk","GLOBAL",1)
Global("X3KaleAloraMom","GLOBAL",2)~ THEN X3KMOM KMOM3 
@19 // ~Thanks for helping me out. You're good folk.~ 
EXIT 

CHAIN IF ~IsValidForPartyDialog("X3Kale")
GlobalGT("X3KaleMomTalk","GLOBAL",0)
Global("X3KaleAloraMom","GLOBAL",0)~ THEN X3KMOM KMOM4 
@19 // ~Thanks for helping me out. You're good folk.~ 
EXIT 

