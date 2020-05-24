// Sirene-Kale 1
CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossSireneKale","LOCALS",0)~ THEN X3KaleB KaleSireneBanter1
@0 // ~Y'know, Sirene, maybe you should try shouting sometimes.~
DO ~SetGlobal("CrossSireneKale","LOCALS",1)~
== BC0Siren @1 // ~I—I beg your pardon?~
== X3KaleB @2 // ~Shouting. Like in battle. Your swings pack twice the punch when you lead with a nice loud shout. Completely true, every hero does it.~
== BC0Siren @3 // ~That is... well, even t'were truly the case, I am fighting to defend my allies, not mutilate my foes.~
== X3KaleB @4 // ~Pfft, come on. I wield a big sword. You wield a bigger sword. We don't have much in common, but we're both good ol' scrappers in the frontlines, wouldn't you agree?~
== BC0Siren @5 // ~Indeed, and in that, perhaps you may understand why I prefer calmness in battle. I would not like to lose myself in battle and have another suffer harm.~
== X3KaleB @6 // ~Ha, you knightly lots are bloody stubborn about the smallest things. Sure I can't tempt you to try: "Have a taste of devilish death!" at least once?~
== BC0Siren @7 // ~No, thank you.~
EXIT 