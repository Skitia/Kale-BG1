
// Helga 1
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Kale")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",0)~ THEN X3HelgaB KaHelgaBanter1
@0 // ~Ye carry yerself well in battle, halfling.~
DO ~SetGlobal("CrossHelgaKale","LOCALS",1)~
== X3KaleB @1 // ~They don't call me the Hero of Gullykin for nothin.~
== X3HelgaB @2 // ~Sturdy, strong. Surprising for one of the wee folk.~
== X3KaleB @3 // ~That's just how I like it. Impresses the guys and gals quite a bit.~
== X3HelgaB @4 // ~But yer as much a braggart as the tallest telling storyteller.~
== X3KaleB @5 // ~Eh, well, you got me there too.~
EXIT

// Helga 2 
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",1)~ THEN X3KaleB KaHelgaBanter2
@6 // ~Sooo. Got anyone special in  your life?~
DO ~SetGlobal("CrossHelgaKale","LOCALS",2)~ 
== X3HelgaB @7 // ~I've got my three kids, and my weapons.~
== X3KaleB @8 // ~Whoa, you've children, mate?~
== X3HelgaB @9 // ~Aye. Had to settle down away from all the adventuring and priestly duties for a time.~
== X3HelgaB @10 // ~I resented it sometimes, but after seeing what they came to be, couldn't be prouder.~
== X3KaleB @11 // ~I hope I never feel stuck in a situation like that.~
== X3HelgaB @12 // ~Ye say that now, but ye'll be wanting it someday. Trust me.~
EXIT  

// Helga 3 
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",2)~ THEN X3KaleB KaHelgaBanter3
@13 // ~Sooo. Where is your husband?~
DO ~SetGlobal("CrossHelgaKale","LOCALS",3)~ 
== X3HelgaB @14 // ~One with the stone.~
== X3KaleB @15 // ~So, he's mining rock while you're out here?~
== X3HelgaB @16 // ~Means he's dead, halfling.~
== X3KaleB @17 // ~Oh. Well eh, this got kinda awkward fast.~
== X3HelgaB @18 // ~You want to ask another personal question, halfling?~
== X3KaleB @19 // ~Nope. Nope nope nope.~
EXIT  

// Helga asks about Kale's lack of caring about Sam. 

CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Kale")
GlobalGT("X3KaleQuestAccept","GLOBAL",0)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",3)~ THEN X3HelgaB KaHelgaBanter4
@20 // ~Ye not care much for yer family, Kale?~
DO ~SetGlobal("CrossHelgaKale","LOCALS",4)~
== X3KaleB @21 // ~What? Well, Ma is getting older, but honestly Sam should be pitching in more to take care of her.~
== X3HelgaB @22 // ~Ye don't seem to care much about this brother of yers, either.~
== X3KaleB @23 // ~He's made mistakes that cost of us. Not ever really made up for it either.~
== X3HelgaB @24 // ~Doesn't matter, lad. Ye help and stick by family.~
== X3KaleB @25 // ~Says the woman who isn't even living with her kids.~
== X3HelgaB @26 // ~My kids have grown, ye bloody daft halfling. Watch yer mouth before ye say something ye'll regret.~
== X3KaleB @27 // ~Sensitive spot, eh? I'll let it go, honest. I don't want to lose teeth from one of your strikes.~
EXIT 