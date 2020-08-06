// BG Enhanced Edition Characters Banters.

// Baeloth

CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleBaeloth1","GLOBAL",0)~ THEN BBAELOTH X3KaleBaeloth1
@0 // ~I'd have liked to see you fight in my little ring, Kale.~
DO ~SetGlobal("X3KaleBaeloth1","GLOBAL",1)~
== X3KaleB @1 // ~Throw in a pretty lass, gold, and glory, and I'd step into many rings, mate.~
== BBAELOTH @2 // ~Testing you against some of the most fearsome creatures in all the realms. How would you stack against the Sahuagin?~
== X3KaleB @3 // ~If you got to ask that question, you ought to listen to the bards more!~
EXIT

// Dorn
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleDorn1","GLOBAL",0)~ THEN %DORN_BANTER% X3KaleDorn1
@3 // ~You are different than most halflings.~
DO ~SetGlobal("X3KaleDorn1","GLOBAL",1)~
== X3KaleB @4 // ~The brawn, right? I'm no twig like the rest of them. A real hero's figure, here.~
== %DORN_BANTER% @5 // ~The rest of you is as annoying.~
== X3KaleB @6 // ~Well that's where you're wrong, mate. How about an arm-wrestling contest to change your mind?~
== %DORN_BANTER% @7 // ~Why would I indulge in your game?~
== X3KaleB @8 // ~'Fraid to lose? Thought as much!~
EXIT

// Neera
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleNeera1","GLOBAL",0)~ THEN %NEERA_BANTER% X3KaleNeera1
@9 // ~Kale, before you ask again, I still have not had any accidents involving a three course meal.~
DO ~SetGlobal("X3KaleNeera1","GLOBAL",1)~
== X3KaleB @10 // ~Damn it. What's the fun in your magic if you can't accidentally conjure up a feast?~
== %NEERA_BANTER% @11 // ~The "Saving your life part?"~
== X3KaleB @12 // ~I think I got that part covered, myself.~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleRasaad1","GLOBAL",0)~ THEN X3KaleB X3KaleRasaad1
@13 // ~You know, Rasaad, I'm not bad with my fists myself.~
DO ~SetGlobal("X3KaleRasaad1","GLOBAL",1)~
== %RASAAD_BANTER% @14 // ~There is more to it than fighting and violence, young Kale.~
== X3KaleB @15 // ~Well, it's the coolest part though. If I could do those moves I'd have a lot of swooners.~
== %RASAAD_BANTER% @16 // ~Such craft takes years of patience and fortitude. You could learn if you applied yourself.~
== X3KaleB @17 // ~'Fraid I lost interest at the years part, mate.~
EXIT

// Dorn 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleDorn1","GLOBAL",1)~ THEN %DORN_BANTER% X3KaleDorn2
@18 // ~How's your arm?~
DO ~SetGlobal("X3KaleDorn1","GLOBAL",2)~
== X3KaleB @19 // ~Feeling great, mate! Like someone decided to take a long sit on it, just as it should.~
== X3KaleB @20 // ~I'll beat you at the next arm-wresting contest.~
== %DORN_BANTER% @21 // ~That was your only opportunity, halfling.~
== X3KaleB @22 // ~Aw, come on mate. 'Fraid to lose?~
== %DORN_BANTER% @23 // ~You are a fool.~
EXIT 

// Rasaad 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleRasaad1","GLOBAL",1)~ THEN %RASAAD_BANTER% X3KaleRasaad2
@24 // ~I've noted you trying to practice martial arts, Kale.~
DO ~SetGlobal("X3KaleRasaad1","GLOBAL",2)~
== X3KaleB @25 // ~Have you? Thought no one was around when I was getting some practice in.~
== %RASAAD_BANTER% @26 // ~If you would like a hand, I am but a request away.~
== X3KaleB @27 // ~Ah...eh...all right, I suppose.~
== X3KaleB @28 // ~But don't get mad when I eclipse your own skill!~
EXIT 

// Dorn 3
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleDorn1","GLOBAL",1)~ THEN %DORN_BANTER% X3KaleDorn2
@29 // ~I'll give you credit, halfling. Your endurance is remarkable.~
DO ~SetGlobal("X3KaleDorn1","GLOBAL",2)~
== X3KaleB @30 // ~Thanks, pal. Maybe on try number eleven on arm-wrestling I'll win, eh?~
== %DORN_BANTER% @31 // ~Don't count on it so soon. <CHARNAME> will want your arm unbroken.~
== X3KaleB @32 // ~Not that easy to break my arm...but you get it pretty darn close!~
EXIT 

