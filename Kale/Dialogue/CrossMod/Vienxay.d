// Vienxay 1
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossVienKale","GLOBAL",0)~ THEN X3VienB KaVieBanter1
@0 // ~Stop ogling me. I see your eyes on me, *again*. 
DO ~SetGlobal("CrossVienKale","GLOBAL",1)~
== X3KaleB @1 // ~What's wrong with getting a nice look at you?~
== X3VienB @2 // ~I don't like commoners overly staring. And your kind are known for swiping.~
== X3KaleB @3 // ~Oh boy. If you lived in Gullykin with that attitude who wouldn't want to swipe from you?~
== X3VienB @4 // ~Those who wouldn't want a taste of elven supremacy.~
== X3KaleB @5 // ~I like you elf. You're one of a kind.~
== X3VienB @6 // ~I don't like you, and we'll never be friends.~
== X3KaleB @7 // ~I can hear my heart breaking. How will I ever live with myself?~
== X3VienB @8 // ~Ugh. Halflings!~
EXIT 
// Vienxay 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossVienKale","GLOBAL",1)~ THEN X3KaleB KaVieBanter2
@9 // ~I got a question that's entered my mind to ask, Vienxay.~ 
DO ~SetGlobal("CrossVienKale","GLOBAL",2)~
== X3VienB @10 // ~You may remain wondering.~
== X3KaleB @11 // ~See, that's my question! Do you ever get any lovers being so cold hearted?~
== X3VienB @12 // ~I only  treat lessers like this. Back in Evermeet, I've had dozens of lovers. Sometimes two at the same time.~
== X3KaleB @13 // ~W...w-what?! You're bluffing.~
== X3VienB @14 // ~Lovers were useful for climbing up the chain of influence in Evermeet. When they were't useful anymore, you move on to the next.~
== X3KaleB @15 // ~Right right, but...two at once? You?~
== X3VienB @16 // ~That was just for the thrill of risk. And the pleasure.~
== X3KaleB @17 // ~I've ceased to be curious any more.~
== X3VienB @18 // ~Good.~
EXIT

// Vienxay 3: Pointlessness of Revenge 
CHAIN IF ~InParty("X3Vien")
See("X3Vien")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Dead("X3VMAS")
Global("CrossVienKale","GLOBAL",2)~ THEN X3KaleB KaVieBanter2
@19 // ~She's dead now, eh? Didn't really see the point of chasing her myself.~
DO ~SetGlobal("CrossVienKale","GLOBAL",3)~
== X3VienB @20 // ~She ruined my life, the entire point was justice.~
== X3KaleB @21 // ~I don't know, lass, if you ask me...~
== X3VienB @22 // ~I didn't ask you.~
== X3KaleB @23 // ~Eh! Well, I'm just trying to say it doesn't really make a difference, with her being dead.~
== X3VienB @24 // ~Are you stupid? The difference is my personal feelings are better.~
== X3KaleB @25 // ~Could have pretend she didn't exist. Far as I saw it, she wasn't crossing your path again.~
== X3KaleB @26 // ~And you're not returning home after this. What'd we really accomplish?~ 
== X3VienB @27 // ~When you lose someone precious to you, judge me then.~
EXIT 

// Vienxay 4: Alora. 
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
InParty("Alora")
Global("X3KaleAlora","GLOBAL",4) 
Global("CrossVienKale","GLOBAL",3)~ THEN X3VienB KaVieBanter2
@28 // ~I see you've gotten attached to the lesser thief in the party.~
DO ~SetGlobal("CrossVienKale","GLOBAL",4)~
== X3KaleB @29 // ~Lesser? Gal's the best. 'Sides, didn't you consider yourself more of a mage, Vienxay?~
== X3VienB @30 // ~My talents lie in both realms, halfling. 
== X3KaleB @31 // ~Why are you commenting about my courting pursuits anyway? Jealous?~
== X3VienB @32 // ~Are you serious? Why would I be jealous of inferior creatures. 
== X3VienB @33 // ~Besides, she's a pest, and you could do better.~
== X3KaleB @34 // ~Sorry lass, but Ill have to turn down your proposition to get into my pantaloons.~
== X3VienB @35 // ~You are infuriating. A magic missile is about to have your name on it.~
EXIT
