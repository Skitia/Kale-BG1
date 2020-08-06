BEGIN X3KaleB

// Khalid 1

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("Jaheira")
InParty("X3Kale")
See("X3Kale")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKhalid1","GLOBAL",0)~ THEN X3KaleB X3KaleKhalid1
@0 // ~Mate. How did you get with your wife being as much as a scaredy cat as you are?~
DO ~SetGlobal("X3KaleKhalid1","GLOBAL",1)~
== %KHALID_BANTER% @1 // ~W..w-what?~
== X3KaleB @2 // ~"Better part of valor, better part of valor!", isn't exactly charming. What's your secret?~
== %KHALID_BANTER% @3 // ~My s-secret?~
== X3KaleB @4 // ~Oh, I see. The stuttering must be an allure. Good trick, that. Why didn't I think of that?~
== %KHALID_BANTER% @5 // ~I'm not sure how to feel about this...~
EXIT

// Ajantis 1
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAjantis1","GLOBAL",0)~ THEN X3KaleB X3KaleAjantis1
@7 // ~Hey, paladin fellow?~
DO ~SetGlobal("X3KaleAjantis1","GLOBAL",1)~
== BAJANT @8 // ~Yes? What is your question?~
== X3KaleB @9 // ~You ever have a good romp?~
== BAJANT @10 // ~A...I don't understand your meaning.~
== X3KaleB @11 // ~Come on, you're a bloody knight. Gals kill for that stuff.~
== X3KaleB @12 // ~And I mean that literally. Hey. Why are you walking off ahead now? I got to know!~
EXIT 

// Alora 1
CHAIN IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora1","GLOBAL",0)~ THEN X3KaleB X3KaleAlora1
@13 // ~Anyone ever compare you to Yondalla, Alora?~
DO ~SetGlobal("X3KaleAlora1","GLOBAL",1)~
== %ALORA_BANTER% @14 // ~Yondalla? I'm not that saintly.~
== X3KaleB @15 // ~Well, you sure look like her. An angel of the Green Fields themselves.~
== %ALORA_BANTER% @16 // ~You're so silly, Kale!~
== X3KaleB @17 // ~Just trying to bring a smile to that gorgeous face, eh?~
== %ALORA_BANTER% @18 // ~I'm always happy. But you... your smiles feel forced sometimes.~
== X3KaleB @19 // ~Me? Sad? No, no, no. Every thing's bright and sunshine here! Real joy!~
== %ALORA_BANTER% @20 // ~Okay...
EXIT

// BRANWEN
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleBranwen1","GLOBAL",0)~ THEN %BRANWEN_BANTER% X3KaleBranwen1
@21 // ~Never would I have expected for such a fine warrior to be a small man.~
DO ~SetGlobal("X3KaleBranwen1","GLOBAL",1)~
== X3KaleB @22 // ~Being underestimated gives me an edge against a lot of others, you know.~
== %BRANWEN_BANTER% @23 // ~I've a newfound respect. Tempus would bless you.~
== X3KaleB @24 // ~I prefer the scamp, but tell Tempus thank you for me, eh?~
EXIT 

// Coran 
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleCoran1","GLOBAL",0)~ THEN %CORAN_BANTER% X3KaleCoran1
@25 // ~I heard you boasting about being able to take on a Wyvern with your bare hands, Kale.~
DO ~SetGlobal("X3KaleCoran1","GLOBAL",1)~
== X3KALEB @26 // ~Aye, it's true. Wrestled one to the ground, once. Good slam to the skull took it out!~
== %CORAN_BANTER% @27 // ~I've not heard of Wyverns around the particular village you hail from.~
== X3KALEB @28 // ~Of course we have them, mate. Bigger than anywhere else, too. Could ride on them too if you got the courage and skill.~
== %CORAN_BANTER% @29 // ~You tell taller tales than a bard, my friend. But luck is always on the side of the romantic.~
EXIT

// Dynaheir
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleDynaheir1","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% X3KaleDynaheir1
@30 // ~Thou'rt much like Minsc, little Kale.~
DO ~SetGlobal("X3KaleDynaheir1","GLOBAL",1)~
== X3KaleB @31 // ~He's a fine fellow. Bit empty in the head, but mighty in the arms!~
== %DYNAHEIR_BANTER% @32 // ~He's served me well so far, but his rodent is...~
== X3KaleB @33 // ~That hamster? I think if he fattened it up a bit it'd be a great warrior pet!~
== %DYNAHEIR_BANTER% @34 // ~Thou has more in common than just strength alike, it seems.~
EXIT 

// Edwin
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleEdwin1","GLOBAL",0)~ THEN %EDWIN_BANTER% X3KaleEdwin1
@35 // ~(The little monkey is approaching me.) What is it you want, chimp?~
DO ~SetGlobal("X3KaleEdwin1","GLOBAL",1)~
== X3KaleB @36 // ~What was that you were muttering to yourself earlier?~
== %EDWIN_BANTER% @37 // ~You are mistaken, little monkey, go bother someone else. (As if I would explain it to him.)~
== X3KaleB @38 // ~There you go again, mate. Something wrong with you?~
== %EDWIN_BANTER% @39 // ~I said stop bothering me, before you become crushed beneath my toes.~
== X3KaleB @40 // ~*Snicker* You're fun, mate!~
EXIT

//Eldoth 
CHAIN IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleEldoth1","GLOBAL",0)~ THEN X3KaleB X3KaleEldoth1
@41 // ~You have any tunes about the glorious hero Kale, eh, Eldoth?~
DO ~SetGlobal("X3KaleEldoth1","GLOBAL",1)~
== %ELDOTH_BANTER% @42 // ~Listen here, Kale. You're just not up to my level of charm and wit to earn the gift of my music, yet.
== %ELDOTH_BANTER% @440 // ~Your game is in need of work, to put it nicely.~
== X3KaleB @441 // ~Yeah? You got suggestions, mate?~
== %ELDOTH_BANTER% @442 // ~Drop the hero act. It's out-dated. Just be a man that conquerors as he pleases.~
== X3KaleB @43 // ~Eh, not my style mate, but thanks.~
EXIT

CHAIN IF ~InParty("Faldorn")
See("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleFaldorn","GLOBAL",0)~ THEN X3KaleB X3KaleFaldorn
@44 // ~Soo. You sure don't like men stomping in the playground of nature.~
DO ~SetGlobal("X3KaleFaldorn","GLOBAL",1)~ 
== %FALDORN_BANTER% @45 // ~They destroy it, and nature in turn shall destroy them.~
== X3KaleB @46 // ~That so? What about the little men, eh?~
== %FALDORN_BANTER% @47 // ~I know few of your people, why would they be different?~
== X3KaleB @48 // ~Well, Yondalla reminds us nature is our provider, can't be ungrateful, you know.~
== %FALDORN_BANTER% @49 // ~You've my respect halfling... if that is true.~
EXIT

// Garrick 
CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleGarrick1","GLOBAL",0)~ THEN X3KaleB X3KaleGarrick1
@50 // ~So, you work on the Song of Kale yet, Garrick?~
DO ~SetGlobal("X3KaleGarrick1","GLOBAL",1)~
== %GARRICK_BANTER% @51 // ~Your might for one so small would be song-inspiring, but the words have not come to me.~
== X3KaleB @52 // ~Words, eh? I like stupendous, phenomenal, amazing, jaw-dropping!~
== %GARRICK_BANTER% @53 // ~They lack musical ring, Kale.~
== X3KaleB @54 // ~That so? Hm. Well, this is your song business, you figure it out, mate!~
EXIT 

// Imoen 1
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleImoen1","GLOBAL",0)~ THEN %IMOEN_BANTER% X3KaleImoen1
@55 // ~Kale. Remind in, in that story, how did you breach that Baron's window to take down his triple-headed dog?~
DO ~SetGlobal("X3KaleImoen1","GLOBAL",1)~
== X3KaleB @455 // ~The Baron of Beregost? Clawed my way up with my own two hands like a lion!~
== %IMOEN_BANTER% @56 // ~Didn't you say it was the Baron of Nashkel?~
== X3KaleB @57 // ~Did I? You know, that might have been it.~
== %IMOEN_BANTER% @58 // ~You're a bit quacky, you know that?~
== X3KaleB @59 // ~So it might have been a small lie.~
== X3KaleB @60 // ~All right...and the dog only had a single head.~
== X3KaleB @61 // ~You know what? Let me tell you a new, true story!~
== %IMOEN_BANTER% @62 // ~And I'll have fun finding your bluff in it, bufflehead.~
== X3KaleB @63 // ~You can try, mate!~
EXIT

// Jaheria
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleJaheira","GLOBAL",0)~ THEN X3KaleB X3KaleJaheira1
@64 // ~You're a bit stifling, you know? I don't need watching every second.~
DO ~SetGlobal("X3KaleJaheira","GLOBAL",1)~
== %JAHEIRA_BANTER% @65 // ~You are reckless, Kale. Charging in with fury and anger.~
== X3Kale @66 // ~Last to the fight is last to the glory, lass.~
== %JAHEIRA_BANTER% @67 // ~There will be no glory if you are dead.~
EXIT

// Kagain 1
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3Kale")
See("X3Kale")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKagain1","GLOBAL",0)~ THEN X3KaleB X3KaleKagain1
@600 // ~So Kagain. What are ye going to do with all that gold, eh?~
DO ~SetGlobal("X3KaleKagain1","GLOBAL",1)~
== %KAGAIN_BANTER% @68 // ~Store it. Get more of it.~
== X3KaleB @69 // ~What's the point of a ton of gold if you aren't going to use it?~
== %KAGAIN_BANTER% @70 // ~What's the point of collecting gold if it's all spent?~
== X3KaleB @71 // ~Not saying all of it, mate. Though a splurge for the right thing can be worth it.~
== %KAGAIN_BANTER% @72 // ~No thanks on the gold advice.~
EXIT

// KIVAN 1
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKivan1","GLOBAL",0)~ THEN %KIVAN_BANTER% X3KaleKivan1
@710 // ~Why do you fight, Kale? Most of your kind enjoy the pleasures of home.~
DO ~SetGlobal("X3KaleKivan1","GLOBAL",1)~
== X3KaleB @720 // ~For the excitement. Home's cozy and all, but routine gets a bit dull.~
== %KIVAN_BANTER% @73 // ~Sometimes I wish I maintained such routine, if only to have my love with me still.~
== X3KaleB @74 // ~Knowing how this world works, mate, something else would have taken her.~
== X3KaleB @75 // ~Just got to make the most of what we got. Can't help other people much.~
EXIT 

// MINSC 1
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleMinsc1","GLOBAL",0)~ THEN %MINSC_BANTER% X3KaleMinsc1
@76 // ~Come out, evil, come out from the dens you hide in, Minsc's sword is ready!~
DO ~SetGlobal("X3KaleMinsc1","GLOBAL",1)~
== X3KaleB @77 // ~And if his sword doesn't get you, you'll be tasting halfling death!~
== %MINSC_BANTER% @777 // ~Boo approves of your mighty cry, little Kale. Pride he feels.~
== X3KaleB @78 // ~Aye. Boo and I know that the smallest are the mightiest.~
== %MINSC_BANTER% @79 // ~The three of us will be unstoppable. Evil will quake in their boots!~
== X3KaleB @80 // ~That's right, mate. Bards will be writing a song for the ages about us.~
EXIT

// Montaron 1
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleMontaron1","GLOBAL",0)~ THEN X3KaleB X3KaleMontaron1
@81 // ~All right Monty going to go out and say it.~
DO ~SetGlobal("X3KaleMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% @82 // ~Shut up and don't call me Monty.~
== X3KaleB @83 // ~Sure, sure, Monty.~
== %MONTARON_BANTER% @84 // ~I hope you're a light sleeper.~
== X3KaleB @85 // ~Look, I was just wondering what the heck is wrong with you.~
== X3KaleB @86 // ~Not a proper halfling, but I'm not going to dig a deeper hole.~
== X3KaleB @87 // ~If you end up visiting my bedroll, bring a lass at least, eh?~
== %MONTARON_BANTER% @88 // ~Aye, I'll bring one, shaped like a dagger.~
== X3KaleB @89 // ~Nevermind, mate. Nevermind.~
EXIT
 
// Quayle 
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleQuayle1","GLOBAL",0)~ THEN %QUAYLE_BANTER% X3KaleQuayle1
@90 // ~If you need any help with thinking Kale, I'm here, you know.~
DO ~SetGlobal("X3KaleQuayle1","GLOBAL",1)~
== X3KaleB @91 // ~Mate, thinking for long hours doesn't get  you a nice romp.~
== %QUAYLE_BANTER% @92 // ~Romp? Is that some halfling slang?~
== X3KaleB @93 // ~It means several hours in a nice bed with a nice lass getting some action.~
== X3KaleB @94 // ~Oh wait, you're not smart enough to know that. *Snicker*~
== %QUAYLE_BANTER% @95 // ~My brain is far evolved beyond such things!~
== X3KaleB @96 // ~Aye, aye, whatever you say, mate!~
EXIT

// SAFANA
CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleSafana1","GLOBAL",0)~ THEN X3KaleB X3KaleSafana1
@993 // ~*Whistle*. Real charmer, Safana. I prefer my gals short...respectively, but I could make an exception.~
DO ~SetGlobal("X3KaleSafana1","GLOBAL",1)~
== %SAFANA_BANTER% @994 // ~Keep with the short woman and turn your game into the fish you can actually catch, Kale. 
== X3KaleB @995 // ~Ouch. Think my heart shattered a bit there.~
== %SAFANA_BANTER% @996 // ~You're a strong man, Kale, but I prefer big men.~
== X3KaleB @997 // ~Size ain't everything. Too bad, you're missing out!~
EXIT

// Shar-Teel
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleSharTeel1","GLOBAL",0)~ THEN %SHARTEEL_BANTER% X3KaleSharteel1
@9992 // ~What's wrong, little man? You keep looking away.~
DO ~SetGlobal("X3KaleSharTeel1","GLOBAL",1)~
== X3KaleB @9993 // ~I'd rather not have iron in my manhood from a bad quip.~
== %SHARTEEL_BANTER% @9994 // ~You're funny Kale. Don't worry, I'll gut yours off last.~
== X3KaleB @9995 // ~What a relief. I'll just be waaaay over here.~ 
EXIT 

// Skie
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleSkie1","GLOBAL",0)~ THEN %SKIE_BANTER% X3KaleSkie1
@9996 // ~I wanna go home. My feet hurt.~
DO ~SetGlobal("X3KaleSkie1","GLOBAL",1)~
== X3KaleB @97 // ~Why would you want to do that? Home is the same thing everyday.~
== %SKIE_BANTER% @98 // ~I've my comfortable bed and perfumes, and all my clothes.~
== X3KaleB @99 // ~I don't understand you rich humans. We halflings share everything, working hard all the time.~
== X3KaleB @100 // ~You get to live off of your parents and not have to lift a finger. And you're whining. Bloody hell.~
== %SKIE_BANTER% @101 // ~Why are you being mean?~
== X3KaleB @102 // ~Just being honest, lass.~
EXIT 

// Tiax
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleTiax1","GLOBAL",0)~ THEN %TIAX_BANTER% X3KaleTiax1
@105 // ~Tiax follows for now. But soon all will be following Tiax. 
DO ~SetGlobal("X3KaleTiax1","GLOBAL",1)~
== X3KaleB @106 // ~Mate, the ladies aren't fond of fellows who speak their own name so much.~
== %TIAX_BANTER% @107 // ~Tiax will be served by all, men or women, even you. Cyric will reward Tiax well.~
== X3KaleB @108 // ~Well. What a bloody loon.~
EXIT 

// VICONIA
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleViconia1","GLOBAL",0)~ THEN X3KaleB X3KaleViconia1
@109 // ~I got to admit, for such a cruel creature of the depths you are a lot more comely than the stories say.~
DO ~SetGlobal("X3KaleViconia1","GLOBAL",1)~
== %VICONIA_BANTER% @110 // ~I am flattered... Darthiir. Thank you.~
== X3KaleB @111 // ~That said and all, most of us would kill you. Is it that bad down there that it's worth the risk?~
== %VICONIA_BANTER% @112 // ~You have no idea, little one. If you were in the underdark, you would be fodder for the creatures within.~
== X3KaleB @113 // ~I'd enjoy the challenge! They could bring it.~
EXIT 

// XAN 
CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleXan1","GLOBAL",0)~ THEN X3KaleB X3KaleXan1
@119 // ~You know mate, some might call you a gloomy man, but I get you.~
DO ~SetGlobal("X3KaleXan1","GLOBAL",1)~
== %XAN_BANTER% @120 // ~Yet around you, I almost think we have a chance.~
== %XAN_BANTER% @121 // ~Perhaps it's that halfling go lucky feel.~
== X3KaleB @122 // ~Nah mate, it's just the desire not to be the one bleeding in the ground.~
EXIT 

// Xzar
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleXzar1","GLOBAL",0)~ THEN %XZAR_BANTER% X3KaleXzar1
@123 // ~You are as irritating as Montaron, shoo.~
DO ~SetGlobal("X3KaleXzar1","GLOBAL",1)~
== X3KaleB @124 // ~I'm not some bloody fly, mate.~
== %XZAR_BANTER% @125 // ~Montaron, why do all of your kind always yap back?~
== X3KaleB @126 // ~Nevermind, I'll shoo out of your way. Not listening to this back and forth.~
EXIT 

// Yeslick
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleYeslick1","GLOBAL",0)~ THEN %YESLICK_BANTER% X3KaleYeslick1
@127 // ~Ye remind me of a dwarf in my clan, lad.~
DO ~SetGlobal("X3KaleYeslick1","GLOBAL",1)~
== X3KaleB @129 // ~Do I? Not sure whether to be insulted or flattered.~
== %YESLICK_BANTER% @130 // ~Hardy as rock, brave as a honey badger surrounded by wolves.~
== %YESLICK_BANTER% @131 // ~If only they were here. You would have gotten along.~
== X3KaleB @132 // ~Mighty kind of you, mate. May not be able to bring them back, but I'll try to keep reminding you of them, eh?~
EXIT 

// Khalid 2

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("Jaheira")
InParty("X3Kale")
See("X3Kale")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKhalid1","GLOBAL",1)~ THEN X3KaleB X3KaleKhalid2
@133 // ~Hey mate, just wanted to speak 'bout before.
DO ~SetGlobal("X3KaleKhalid1","GLOBAL",2)~
== %KHALID_BANTER% @134 // ~Y-yes?~
== X3KaleB @135 // ~Might have come across a bit mean to ya. Been watching a while, and I can tell ye really love eachother.~
== %KHALID_BANTER% @136 // ~T-thank you, Kale.~
== X3KaleB @137 // ~I do got one more question for you, though.~
== %KHALID_BANTER% @138 // ~I can try to answer.~
== X3KaleB @139 // ~When are the babies coming? Been a touch quite at night around your bedroll and I was wonde-~
== %KHALID_BANTER% @140 // ~W-w-w-what?~
== X3KaleB @141 // ~The look on your face, mate! Priceless.~
EXIT

// Alora 2
CHAIN IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora1","GLOBAL",1)~ THEN X3KaleB X3KaleAlora2
@142 // ~I wasn't honest earlier, Alora. 
DO ~SetGlobal("X3KaleAlora1","GLOBAL",2)~
== %ALORA_BANTER% @143 // ~Are you going to share what's ailing you now?~
== X3KaleB @144 // ~I like being a hero, I like adventuring, it's a blast, but...~
== X3kaleB @145 // ~At the end of the day, they still plant themselves in trouble, or get murdered when we're away.~
== %ALORA_BANTER% @146 // ~It's not always like that, Kale. Some people get happy endings!~
== X3KaleB @147 // ~Maybe I've just been very unlucky. An unlucky halfling! Unheard of, isn't it?~
== %ALORA_BANTER% @148 // ~Stick around with me, and I'll rub my happy go lucky on you. There's a smile!~
== X3KaleB @149 // ~You make it hard to frown, Alora. You'll be a fine lass for someone.~
== %ALORA_BANTER% @150 // ~Aww!~
EXIT 

/* This dialogue only appears when Kale's talks with Alora are done, so a rarer dialogue tree. */
// Dynaheir 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("Alora")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora","GLOBAL",4)
Global("X3KaleDynaheir1","GLOBAL",1)~ THEN %DYNAHEIR_BANTER% X3KaleDynaheir2
@151 // ~Thy cheerfulness is sweet as sugar.~
DO ~SetGlobal("X3KaleDynaheir1","GLOBAL",2)~
== X3KaleB @152 // ~Yeah? I'm a happy hin with a happy girl. What can I say?~
== %DYNAHEIR_BANTER% @153 // ~It's warming to see from thou.~
== X3KaleB @154 // ~Thanks mate. And sorry as well, knew you always had your own eye on me.~
== %DYNAHEIR_BANTER% @155 // ~Thou'rt really skilled at being pesky.~
== X3KaleB @156 // ~You know you love it, my odd speaking friend!
EXIT 

// Imoen 2 
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleImoen1","GLOBAL",1)~ THEN %IMOEN_BANTER% X3KaleImoen2
@157 // ~Got another tale to share to pass the time, Kale?~
DO ~SetGlobal("X3KaleImoen1","GLOBAL",2)~
== X3KaleB @158 // ~Eh...not any that you won't punch through the fabrication of.~
== %IMOEN_BANTER% @159 // ~Oh pooh, you must have some completely true tale up in that head of yours.~
== X3KaleB @160 // ~The truth is booooring. It's far less interesting to say: Uncle Gabs lost his voice in a dull battle with a single goblin than:
== X3KaleB @161 // ~Uncle's Gab lost his voice when visited by the spooky ghost of the abandoned burrow he had robbed from years ago.~
== %IMOEN_BANTER% @162 // ~Hee, maybe, but I'd like to hear 'bout a battle with a single goblin, too.~
== X3KaleB @163 // ~All right. If that's what you like, lassie!~
EXIT 

/* This dialogue only appears when Kale's talks with Alora are done, so a rarer dialogue tree. */
// Jaheria 2
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("Alora")
Global("X3KaleAlora","GLOBAL",4)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleJaheira","GLOBAL",0)~ THEN %JAHEIRA_BANTER% X3KaleJaheira2
@164 // ~You've been more careful and defensive in battle as of late Kale. Almost tactical.~
DO ~SetGlobal("X3KaleJaheira","GLOBAL",1)~
== X3Kale @165 // ~I've got someone special to think about now.~
== X3Kale @166 // ~And I think I've racked up enough risky, glorious moves now for the bards to catch up song-wise.~
== %JAHEIRA_BANTER% @167 // ~I hope it sticks. This side of you is much more appealing to see.~
EXIT

// Kagain 2
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3Kale")
See("X3Kale")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKagain1","GLOBAL",1)~ THEN X3KaleB X3KaleKagain2
@168 // ~So Kagain. How about you put some gold up for a drinking competition.~
DO ~SetGlobal("X3KaleKagain1","GLOBAL",2)~
== %KAGAIN_BANTER% @169 // ~Against who?~
== X3KaleB @170 // ~Against me! I'll put up half of my share of the gold if you put up half of yours!~
== %KAGAIN_BANTER% @171 // ~Against a dwarf?! You're a moron. I'll take your bet, that's easy gold.~
== X3KaleB @172 // ~We'll see, mate!~
EXIT 

// MINSC 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleMinsc1","GLOBAL",1)~ THEN %MINSC_BANTER% X3KaleMinsc2
@173 // ~Minsc is most proud to continue to travel with the fury of little Kale!~
DO ~SetGlobal("X3KaleMinsc1","GLOBAL",2)~
== X3KaleB @174 // ~Thanks mate. Got to say I feel the same way!~
== %MINSC_BANTER% @175 // ~Forge we many adventurers, tales spread everywhere!~
== X3KaleB @176 // ~Aye. Carved from the same tree we are, mate, ha! May our friendship be long and full of swooning lasses!~
== %MINSC_BANTER% @177 // ~You lost me on the last bit, a bit ducky you are, friend.~
== X3KaleB @178 // ~Eh, I'll teach you later, eh?~
EXIT

// Montaron 2
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleMontaron1","GLOBAL",1)~ THEN X3KaleB X3KaleMontaron2
@179 // ~There's a nice gal back in Gullykin you might get along with, Monty.~
DO ~SetGlobal("X3KaleMontaron1","GLOBAL",2)~
== %MONTARON_BANTER% @180 // ~It's Montaron, you idiot, or do you want to see my dagger up and close.~
== X3KaleB @181 // ~Easy mate, keep it in your pants and all that. Just trying to set you up here.~
== X3KaleB @182 // ~She's a bit of the shy dark gloomy type, but that seems your type of tea.~
== %MONTARON_BANTER% @183 // ~I can show you what is my "cup of tea" precisely.~
== X3KaleB @184 // ~Sheesh. Someone's mother didn't teach them about our culture and manners.~ 
EXIT 

/* This dialogue only appears when Kale's talks with Alora are done, so a rarer dialogue tree. */
// Tiax 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("Alora")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("X3KaleAlora1","GLOBAL",3)
Global("X3KaleTiax1","GLOBAL",1)~ THEN %TIAX_BANTER% X3KaleTiax2
@185 // ~Tiax has noticed you have someone who follows you. Are you trying to take rulership of the world from Tiax?! 
DO ~SetGlobal("X3KaleTiax1","GLOBAL",2)~
== X3KaleB @186 // ~Mate, it's called courting. Alora and I are an item.~
== %TIAX_BANTER% @187 // ~Ah, so the world is still Tiax's. You will make fine guards for Tiax for his throne.~
== X3KaleB @188 // ~Mate, you really need to get some action in the sheets.~
EXIT 

// Yeslick 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleYeslick1","GLOBAL",1)~ THEN X3KaleB X3KaleYeslick2
@189 // ~So why do all dwarves mine so much, Yeslick?~
DO ~SetGlobal("X3KaleYeslick1","GLOBAL",2)~
== %YESLICK_BANTER% @190 // ~Stone is our blood, lad. The love of the mountain, and all its splendor and treasure.~
== X3KaleB @191 // ~Seems more trouble than its worth if you ask me.~
== %YESLICK_BANTER% @192 // ~Hard labor, but it's honest labor. Honorable work.~
== X3KaleB @193 // ~Nothing a bard will sing about though.~
== %YESLICK_BANTER% @194 // ~Many a dwarven ministrel might say otherwise. The glorious pursuits of life are not thee only ones worthy of art.~
== X3KaleB @195 // ~Got a point there, I'll admit, lad.~
EXIT 

// Khalid 3 
CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("X3Kale")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKhalid1","GLOBAL",2)~ THEN X3KaleB X3KaleKhalid3
@196 // ~So, when we're all done with our work for <CHARNAME>, want to work for a new alpha, mate?~
DO ~SetGlobal("X3KaleKhalid1","GLOBAL",3)~
== %KHALID_BANTER% @197 // ~Uh, I d-don't understand what you mean.~
== X3KaleB @198 // <CHARNAME> is nice and all, but look at me. I'm far more interesting to work for, eh?~
== %KHALID_BANTER% @199 // ~I'd r-rather not work for anyone, if htat's all right.~
== X3KaleB @200 // ~Damn. The henchman market is slim pickings.~
EXIT 

//Alora 3
CHAIN IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora1","GLOBAL",2)~ THEN X3KaleB X3KaleAlora3
@201 // ~Soooo.~
DO ~SetGlobal("X3KaleAlora1","GLOBAL",3)~
== %ALORA_BANTER% @202 // ~Soooo?~
== X3KaleB @203 // ~Back home. Where is home for you anyway?~
== %ALORA_BANTER% @204 // Iriaebor.
== X3KaleB @205 // Iriaebor. Day's walk from Gullykin. 
== %ALORA_BANTER% @206 // ~Mhm!
== X3KaleB @207 // ~Sooo. Anyone you're sweet on there?~
== %ALORA_BANTER% @208 // ~Everyone!~
== X3KaleB @209 // ~W-what? Everyone?~
== %ALORA_BANTER% @210 // ~Mhm. Everyone deserves sweetness and kindness.~
== X3KaleB @211 // ~We aren't talking about the same thing, are we sugar cube?~
== %ALORA_BANTER% @212 // ~What are you trying to say?
== X3KaleB @213 // ~Eh! Uh. Maybe later.~
EXIT 

//Minsc 3 
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleMinsc1","GLOBAL",2)~ THEN X3KaleB X3KaleMinsc3
@214 // ~Sooo. Minsc, big pal!~
DO ~SetGlobal("X3KaleMinsc1","GLOBAL",3)~
== %MINSC_BANTER% @215 // ~Yes, mighty little one?~
== X3KaleB @216 // ~You ever thought of setting up Boo? What gender is Boo anyway? He, she?~
== %MINSC_BANTER% @217 // ~Setting up Boo? In Armor? A mighty idea. We should find blacksmith, so he may charge in with steel plate and razor teeth.~
== X3KaleB @218 // ~Never change, big pal, never change.~
EXIT

//Kagain 3 
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3Kale")
See("X3Kale")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleKagain1","GLOBAL",2)~ THEN %KAGAIN_BANTER% X3KaleKagain3
@219 // ~Ha! Best spent money in a long time, halfling. Stout as a dwarf.
DO ~SetGlobal("X3KaleKagain1","GLOBAL",3)~
== X3KaleB @220 // ~You got it, mate. So close to out drinking you too.
== %KAGAIN_BANTER% @221 // ~If you want a second chance, it's on your money this time.~
== X3KaleB @222 // ~Smart of you, pal. I'll take you on that sometime.~
EXIT 

//Alora 4
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora1","GLOBAL",3)~ THEN %ALORA_BANTER% X3KaleAlora3
@222 // ~You seem nervous Kale. Unlike you. Smile, be happy!~
DO ~SetGlobal("X3KaleAlora1","GLOBAL",4)SetGlobal("X3KaleAlora","GLOBAL",4)SetGlobal("KaleAloraMom","GLOBAL",1)~
== X3KaleB @223 // ~Nervous? I'm not nervous.~
== %ALORA_BANTER% @224 // ~You're not?~
== X3KaleB @225 // ~Eh...okay...So, I'm just uh, going to ask this a bit bluntly, Alora.~
== X3KaleB @226 // ~How about when we next rest, we move a bit away, have a spot of tea, watch the sun set...see where it goes? Time's short and all, you know?~
== %ALORA_BANTER% @227 // That's kind to ask, but it's dangerous adventuring times.~
== X3KaleB @228 // ~Everyday's a dangerous adventuring time. Might die tomorrow. Waiting's pointless, that's all I learned from my failures.~
== %ALORA_BANTER% @229 // ~Okay, why not then? You're sweet like candy. Let's see where this goes.~
== X3KaleB @230 // ~Woohoo! Watch out world, the Hero and his girl Alora will take you by storm.~
EXIT 

// Montaron 3 
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleMontaron1","GLOBAL",2)~ THEN X3KaleB X3KaleMontaron3
@231 // ~There's always me, Monty, if nothing else.~
DO ~SetGlobal("X3KaleMontaron1","GLOBAL",3)~
== %MONTARON_BANTER% @232 // ~What are you talking about now?~
== X3KaleB @233 // ~If you aren't interested in the people back home, and... well, the looks you give me every now and then. I figured there was a connection between us you desired.~
== %MONTARON_BANTER% @234 // ~There is no connection! You are almost as bothersome as the necromancer.~
== X3KaleB @235 // ~My heart breaks, mate, it breaks. Damn this is fun!~ 
== %MONTARON_BANTER% @236 // ~Where's my dagger?!~
== X3KaleB @237 // ~Aaaand moving far away now.~
EXIT 

// Alora 5 
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora1","GLOBAL",4)~ THEN %ALORA_BANTER% X3KaleAlora4
@238 // ~So many curious things! We should go out in the world after this adventure, Kale.~
DO ~SetGlobal("X3KaleAlora1","GLOBAL",5)~
== X3KaleB @239 // ~Anything you want. Where in particular?~
== %ALORA_BANTER% @240 // ~Across mountains, seas, cities, everywhere!~
== X3KaleB @241 // ~That's a lot of traveling. You sure you up for all of that?~
== %ALORA_BANTER% @242 // ~Yep.~
== X3KaleB @243 // ~Long as we step in an inn now and then. Lots of fun to be had at night if you know what I mean.~
== %ALORA_BANTER% @244 // ~Borrowing shiny things!~
== X3KaleB @245 // ~Right. Stealing. That was totally where I was going with that.~
EXIT 