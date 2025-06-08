BEGIN X3Kale

CHAIN IF ~Global("X3KaleMet","GLOBAL",0)~ THEN X3Kale b1 
@0 
DO ~SetGlobal("X3KaleMet","GLOBAL",1)~ 
== X3Kale IF ~Gender(Player1,MALE)~ @1
== X3Kale IF ~Gender(Player1,FEMALE)~ @2
END
++ @3 EXTERN X3Kale b1.1 // ~Sorry, but who are you?~
+~!Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~+ @4 EXTERN X3Kale b1.2 // ~You look a little small for a hero.~
+~Race(Player1,HALFLING)~+ @5 EXTERN X3Kale b1.3  // ~It is a pleasure to meet a hero of our people.~
++ @6 EXTERN X3Kale b1.4 // ~I don't have time to talk to you right now.~

CHAIN X3Kale b1.1
@7 // ~The name's Kale, mate. Strong as an ox, tough as a dwarf, handsome as an angel.~
END
++ @8 EXTERN X3Kale b1.5 // ~I'm <CHARNAME>. If you're as skilled as you say, perhaps you'd want to join with us?~
++ @9 EXTERN X3Kale b1.6 // ~I beg to differ.~
++ @10 EXTERN X3Kale b1.6 // ~Really? And how would you prove any of that?~
++ @11 EXTERN X3Kale b1.4 // ~That's nice to hear, but I've got to get going.~

CHAIN X3Kale b1.2 
@12 // ~You know, that's just what the last big bloke said before I knocked him out with a good zinger.~ 
== X3Kale @13 EXTERN X3Kale b1.1  // ~Of course, if you knew who I was, you wouldn't even be making such a short-sighted statement!~ 


CHAIN X3Kale b1.3
@14 EXTERN X3Kale b1.1   // ~And real pleasure to meet another <PRO_MANWOMAN> of our people.~


CHAIN X3Kale b1.4
@15 // ~Suit yourself, mate.~
EXIT 

CHAIN X3Kale b1.5
@16 // ~You know what, that ain't half a bad idea. Been wanting out of this village for a while, but not had the company to take on the wilds. I'm in if you'll have me.~
END
++ @26 EXTERN X3Kale b1.join // ~I will. Join us.~
+~Kit("X3Kale",BARBARIAN)~+ @27 EXTERN X3Kale b1.skills // ~What sort of skills do you have?~
+~!Kit("X3Kale",BARBARIAN)~+ @27 EXTERN X3Kale b1.skills2 // ~What sort of skills do you have?~
++ @21 EXTERN X3Kale b1.4 // ~Perhaps another time.~

CHAIN X3Kale b1.skills 
@28 // ~I'm skilled with polearms and two handed weapons, mostly. Don't worry, I can lift them without a problem.~ 
== X3Kale @29 // ~Plate armor though, well, not my type of armor. I'd prefer to be able to move fast, strike hard, anyway.~
EXTERN X3Kale b1.sling 

CHAIN X3Kale b1.skills2
@35 // ~I'm skilled with large blades and a shield, mostly. Don't worry, I can lift them without a problem.~ 
== X3Kale @36 // ~I could be put in the heaviest armor you can find and I'd still stand strong!~
EXTERN X3Kale b1.sling 

CHAIN X3Kale b1.sling
@30 // ~Got some skill with the sling too, if you want to use me far away, though that sure ain't my preference.~
END 
++ @31 EXTERN X3Kale b1.join // ~I could use that skill set. Join us.~
++ @32 EXTERN X3Kale b1.action // ~A halfling fighting with big weapons. You can come, I'd like to see you in action.~
++ @34 EXTERN X3Kale b1.4 // ~I don't think you'll be a fit for us.~
++ @21 EXTERN X3Kale b1.4 // ~Perhaps another time.~

CHAIN X3Kale b1.action 
@33 EXTERN X3Kale b1.join // ~Oh, I'll be showing you all right. Just point at the enemy and you'll be satisfied.~


CHAIN X3Kale b1.join
@17 // ~Onwards then, to the glory!~
DO ~AddJournalEntry(@10011,USER)
JoinParty()~
EXIT 

CHAIN X3Kale b1.6
@18  // ~Why don't I show you, bring me along to your travels? Been wanting a good party to get out to the wilds with. I'm quite skilled, I'm not the talk of the town for nothing~
END
++ @19 EXTERN X3Kale b1.join // ~All right. Join us, then.~
++ @27 EXTERN X3Kale b1.skills // ~What sort of skills do you have?~
++ @20 EXTERN X3Kale b1.7 // ~So long as you understand we may face serious foes, you can come along.~
++ @21 EXTERN X3Kale b1.4 // ~Perhaps another time.~

CHAIN X3Kale b1.7
@22 // ~What, you think I've been fighting imaginery foes, or rabbits? You're going to be pleasantly suprised, friend.~
END
IF ~~ EXTERN X3Kale b1.join

APPEND X3Kale

IF ~Global("X3KaleMet","GLOBAL",1)~ b2 
SAY @23 /* ~You came back, eh? Well, my glorious talents are still available, if you want me to join!~ */
++ @24 /* ~I do. Join us.~ */ + b1.join
++ @25 /* ~Not at the moment.~ */ + b1.4
END 

// Remember that APPEND needs its own END //
END



