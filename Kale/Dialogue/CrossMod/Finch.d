// Finch-Kale 1
CHAIN IF ~InParty("sufinch")
See("X3Kale")
!StateCheck("sufinch",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossFinchKale","GLOBAL",0)~ THEN BSUFINCH KaleFinchBanter1
@0 // ~Kale, I've not read many books written by the hin folk, but your people are never short on stories.~
DO ~SetGlobal("CrossFinchKale","GLOBAL",1)~
== X3KaleB @1 // ~That's because we follow the oral traditions, Booky. The best stories are passed down from generations.~
== BSUFINCH @2 // ~Oh oral re-tellings, I've read a little about that. But what happens when you forget a passage and need to figure out what it was? You don't have a good source to reference.~
== X3KaleB @3 // ~That's when you start making things up. Heck, even if you know how it goes, you still make things up. Makes the retelling more fun.~
== BSUFINCH @4 // ~But the story isn't consistent! The book never changes, it's the same from beginning to end.~
== X3KaleB @5 // ~Eh, it's the same-ish. You just get to the end in a different sort of way is all, heh.~
EXIT 

// Finch-Kale 2
CHAIN IF ~InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossFinchKale","GLOBAL",1)~ THEN X3KaleB KaleAuraBanter2
@6 // ~So Books. Booky. You follow this Dinner fellow, right?~
DO ~SetGlobal("CrossFinchKale","GLOBAL",2)~
== BSUFINCH @7 // ~Deneir! His temples ensure the education of people about the great progress of mankind.~
== X3KaleB @8 // ~Kind of sounded like an appealing god of meals, but not what I wanted to talk about. This guy's a human god, right?~
== BSUFINCH @9 // ~Deneir appeals to more than just humanity, Kale. Every race has concerns of the record of its literature and knowledge and ensuring their legacies are down to the children of the next generation.~
== X3KaleB @10 // ~Right, written in a book to be told in the same order over and over again. Not my point, though. My point is, the gnomes have their own gods. Aren't you being a bit ungrateful by not worshipping them?~
== BSUFINCH @11 // ~Ungrateful?! I may be a priestess of Deneir, but that does not mean I do not hold a place in my heart for Garl and the others.~
== X3KaleB @12 // ~Eh, just forget it. I'm not sure what I was trying to say, but it's probably coming across insulting.~
== BSUFINCH @13 // ~It was a bit rude, but I can forgive it. Especially if you tell me the history of Gullykin, it should really be recorded for reading and re-reading.~
== X3KaleB @14 // ~Pfft. Fat chance of that happening.~
EXIT 