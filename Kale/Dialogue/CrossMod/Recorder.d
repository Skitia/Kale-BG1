// Recorder 1
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec")
!Global("X3KaleAlora","GLOBAL",4)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossRecKale","LOCALS",0)~ THEN X3KaleB KaRecBanter1
@0 // ~You're a very beautiful bard, Recorder.~
DO ~SetGlobal("CrossRecKale","LOCALS",1)~
== X3RecB @1 // ~Um, thank you.~
== X3KaleB @2 // ~And I am a very handsome hero.~
== X3RecB @3 // ~Okay.~
== X3KaleB @4 // ~I think we're a match made for the memories. Bet you've felt it too.~
== X3RecB @5 // ~I think you're being a bit delusional.~
== X3KaleB @6 // ~Maybe you make me a bit dizzy, but I clearly see an us here.~
== X3RecB @7 // ~I'm going to tarry a bit away, now.~
== X3KaleB @8 // ~Aww, damn it. Should have gone for a smoother delivery.~
EXIT

// Recorder 2
/* Switch the CrossRecKale Global variable to CrossKaleRec when we check for Alora is in, in case these are missed. */
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec")
!Global("X3KaleAlora","GLOBAL",4) 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossRecKale","LOCALS",1)~ THEN X3KaleB KaRecBanter2
@9 // ~So uh, sorry about before Recorder. Might have gotten a bit carried away with my approach.~
DO ~SetGlobal("CrossRecKale","LOCALS",2)~
== X3RecB @10 // ~Thank you for being mature about it, Kale.~
== X3KaleB @11 // ~So eh, why don't I make it up to you?~
== X3RecB @12 // ~What are you proposing?~
== X3KaleB @13 // ~You and me, next camp, just sit near eachother and talk. See where it goes.~
== X3RecB @14 // ~...~
== X3KaleB @15 // ~Where are you going? You got to stay with the group! Aww, damn it. Thought that was a bit better.~
EXIT

// Recorder 3
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec") 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossKaleRec","LOCALS",0)~ THEN X3KaleB KaRecBanter3
@16 // ~Soooo. I've got an actual question for you, Recorder.~
DO ~SetGlobal("CrossKaleRec","LOCALS",1)~
== X3RecB @17 // ~All right. What did you want to ask?~
== X3KaleB @18 // ~Don't worry, I'm not interrupting your note scribbling for anything annoying.~
== X3RecB @19 // ~Kale, just ask, please.~
== X3KaleB @20 // ~All right, sheesh. You got any siblings?~
== X3RecB @21 // ~What brings this question about?~
== X3KaleB @22 // ~Just want to get to know you a bit.~
== X3RecB @23 // ~I was an only child. Mother wanted a second, but father got so invested into his bookbinding business.~
== X3KaleB @24 // ~Heh, consider yourself lucky. Having a sibling can be its own burden.~
== X3RecB @25 // ~I'd have been very happy if I had another brother or sister.~
== X3KaleB @26 // ~Well you can have Samuel if you want, eh? Then ye can tell me afterwards if it's worthwhile.~
EXIT

// Recorder 4: Recorder asks Kale to treat Alora well. 
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Kale") 
Global("X3KaleAlora","GLOBAL",4) 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossKaleRec","LOCALS",1)~ THEN X3RecB KaRecBanter4
@16 // ~Kale. What's your intention? With Alora?~
DO ~SetGlobal("CrossKaleRec","LOCALS",2)~
==  X3KaleB @17 // ~Not sure if I like the tone that's in that voice there...~
== X3RecB @18 // ~Sir Mark Harmon was at least honorable, and let his intentions of it only being a temporary pursuit to the people he pursued.~
== X3KaleB @19 // ~You sure you ain't just jealous?~
== X3RecB @20 // ~She's my friend Kale. Just tell me what you intend?~
== X3KaleB @21 // ~I'm live in the moment kind of guy. I can't bloody tell you what I have planned if I got nothing.~
== X3RecB @22 // ~What does that mean?~
== X3KaleB @23 // ~It means drop it and get your big gnome nose out of my business. Arvoreen's pants, you had your chance eh?~
== X3RecB @24 // ~I'll stop. But you're so self absorbed sometimes.~
EXIT	
