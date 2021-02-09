BEGIN X32Kale
//Kale Prejoining, no brother. 

CHAIN IF WEIGHT #-1 ~Global("X32KaleMet","GLOBAL",0)!AreaCheck("BD0109")!AreaCheck("BD0120")
!AreaCheck("BD0130")~ THEN X32Kale c1 
~Well, look who it is! The hero himself!~ 
DO ~SetGlobal("X32KaleMet","GLOBAL",1)~ 
END
+~BeenInParty("X3Kale")~+ ~It's been a while Kale. How did you come to be here?~ DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + c2a
+~!BeenInParty("X3Kale")~+ ~It's been a while Kale. How did you come to be here?~ DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + c2a
+~!BeenInParty("X3Kale")~+  ~How do you know me?~ + c2b
++ ~I've no time for a chat. Good day.~ + c2.reject

CHAIN X32Kale c2a 
~The Flaming fist needed a hand. The best. And the best is me, haha! Family didn't want me going, wanted me to handfast this lass Alora, but that's not the life for me.~
END
+~BeenInParty("Alora")~+ ~How is she, Alora? We last saw each other when we left the Korlasz Crypt~ + c2alora
+~!BeenInParty("Alora")~+ ~How is she, Alora? It's been a while since I've seen her last.~ + c2alora
++ ~I'd have you at my side, if you wish it.~ + c2.join
++ ~I better get going.~ + c2.reject
++ ~You don't seem to have changed at all. Good day.~ + c2.reject

CHAIN X32Kale c2b 
~Who doesn't, mate? Slayer of Sarevok. Hero of the Gate. I admit I both look up to you and am a bit jealous. Inspired me to leave behind a chance to handfast pretty Alora and join these flaming fists!~
END
+~BeenInParty("Alora")~+ ~How is she, Alora? We last saw each other when we left the Korlasz Crypt~ + c2alora
+~!BeenInParty("Alora")~+ ~How is she, Alora? It's been a while since I've seen her last.~ + c2alora 
++ ~I'd have you at my side, if you wish it.~ + c2.join 
++ ~I better get going.~ + c2.reject
++ ~You don't seem to have changed at all. Good day.~ + c2.reject

CHAIN X32Kale c2alora 
~She's been infected by mother. That curious mind will get sucked into *anything*. Bloody curious about babes. Not fun to hear it when you're watching over her heists. Well, never mind that. You need anything from me?~
END
++ ~I'd have you at my side, if you wish it.~ + c2.join 
++ ~I better get going.~ + c2.reject
++ ~Nothing, if I do, I'll let you know.~ + c2.reject

CHAIN X32Kale c2.reject 
~Be careful out there, mate.~
DO ~SetGlobal("bd_npc_camp","locals",1)~ EXIT 

CHAIN X32Kale c2.join 
~Woohoo. Let's get to it!~
DO ~JoinParty()AddJournalEntry(@100001,INFO)~ EXIT 

// Kale Unhappy. 

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)~ THEN X32Kale rep.break
~<CHARNAME>... this ain't working out. I sometimes see the point of acting for self-interest but...what you're doing goes too far for me.~
END
++ ~That's too bad, Kale. You were a good companion.~ + rep.break.1
++ ~I don't blame you, we're just not meant to be a team.~ + rep.break.2
++ ~Get out of here if you don't have the courage to do what is necessary.~ + rep.break.3
++ ~You were useless to me anyway.~ + rep.break.3

CHAIN X32Kale rep.break.1
~I'll remember the good times, eh?~
EXTERN X32Kale rep.break.4

CHAIN X32Kale rep.break.2
~Shame, shame.~
EXTERN X32Kale rep.break.4

CHAIN X32Kale rep.break.3
~If you say so, mate.~
EXTERN X32Kale rep.break.4

CHAIN X32Kale rep.break.4
~Well, goodbye <CHARNAME>.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)~ EXIT

// Kale Kicked 


/*My assumption is that bd_joined is set upon joining in their local variable, thus why it is constantly used. Need to research to confirm.
We're using Aura's structure style here for these various kicked out/rejoin post-kickout dialogues.*/
CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN X32Kale o
~Bloody hell. You leaving me, *here*?~
END
++ ~Wait here, I'll come back..~ + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Kale")~ + ~Go back to the entrance for now.~ + o.2
++ ~A mistake in direction. Stay with me.~ + n.3

CHAIN X32Kale o.1
~If that's your plan, mate.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Kale o.2
~I can do that, mate.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) // Why is this global set? Need to research. 
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN X32Kale o.3
~Miss me? I'm ready if you are!~
END
++ ~Come along.~ + o.4
++ ~Not yet. Stay here.~ + o.5

CHAIN X32Kale o.4
~Woohoo!~ [KaleAct6]
DO ~JoinParty()~ EXIT

CHAIN X32Kale o.5
~Aww, come on!~
EXIT
/* We should figure out what ff_camp is. For now, let's keep to Aura's structure here as well.*/
CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN X32Kale n
~That's it? Kicking me out, are you?~
END
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Kale")~ + ~Go back to camp. I'll find you there if I need you.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1 // Check NPC Camp when we can. 
++ ~For now. Just wait here.~ + n.2
++ ~I've changed my mind. Rejoin me.~ + n.3

CHAIN X32Kale n.1
~Damn. Well. See you at camp.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Kale n.2
~Wait, eh? Sure, sure. Don't take too long, now.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Kale n.3
~Now you've come to your senses! After you, mate.~
DO ~JoinParty()~ EXIT



//Rejoin post Kicked 

CHAIN IF ~Global("bd_joined","LOCALS",0)~ THEN X32Kale p
~Well, look who it is. Been getting glory, I bet. I've been bored stiff stitching and fixing up clothes. Damn ma, teaching me tailoring.~
END
++ ~I'd have you along, if you're willing.~ + p.0
++ ~I'm in need of your physical skills. Come join me.~ + p.0
++ ~I'm sure the soldiers appreciate it.~ + p.1 
++ ~Nothing for the moment.~ + p.1

CHAIN X32Kale p.0
~Woohoo! I'm ready, mate.~
DO ~JoinParty()~ EXIT

CHAIN X32Kale p.1
~Well, stay alive out there, eh?~
EXIT

// Kale meet with brother.

CHAIN IF WEIGHT #-1 ~Global("X32KaleMet","GLOBAL",0)!GlobalGT("bd_plot","global",585)~ THEN X32Kale b1 
~Well, look who it is! The hero himself!~ 
DO ~SetGlobal("X32KaleMet","GLOBAL",1)~ 
END
/* We're going to initialize Kale's know variable here. BeenInParty will do it no matter what, !BeenInParty will require the PC to pick the recalling choice.*/
+~BeenInParty("X3Kale")~+ ~It's been a while Kale. Here with your brother, I see?~ DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + b1.BG1A
+~BeenInParty("X3Kale")~+ ~You're not in trouble again, are you?~ DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + b1.BG1B
+~!BeenInParty("X3Kale")~+  ~It's been a while Kale. Here with your brother, I see?~ DO ~SetGlobal("X32KaleWasInBG1","GLOBAL",1)~ + b1.BG1A
+~!BeenInParty("X3Kale")~+  ~How do you know me?~ + b1.NoBG1

CHAIN X32Kale b1.BG1A 
~Sure am. Say hi, Samuel.~
== X32KBRO ~Hey there. You're a big name around these parts..~
EXTERN X32Kale b1.2

CHAIN X32Kale b1.BG1B 
~Me? Trouble? How'd you know our middle names?~
== X32KBRO ~Our?~
== X32KALE ~Yours is the financial. Mine is the heroic!~
== X32KBRO ~*Groan*~
EXTERN X32Kale b1.2 

CHAIN X32Kale b1.NoBG1 
~Who doesn't? The only bigger talk of the town is the bloody crusade.~ 
== X32Kale ~Anyway, name's Kale, far lesser hero of Gullykin. For now. My name will be bigger than yours in time.~
== X32KBRO ~I think ma would prefer you settle down.~
== X32KALE ~No need to play ma's part when she ain't around, Sammie.~ 
EXTERN X32Kale b1.2 

CHAIN X32Kale b1.2   
~So, what can I do for you?~
END
++ ~I came seeking your help, Kale. I embark north to face Caelar's crusade.~ + b1.join 
+~Global("X32KaleWasInBG1","GLOBAL",1)~+ ~I came to catch up, and see how you fare.~ + b1.fare 
++ ~I'll just leave you brothers be.~ + b1.exit 

CHAIN X32Kale b1.fare 
~Just fine, mate, for the most part. Ma's pushing for me to settle down with the fine lass Alora, but...I've still got more adventures in me.~
== X32KBRO ~It doesn't mean you should break both of their hearts.~
== X32Kale ~Eh, they'll understand. Never was going to last forever anyway. I'd rather die an adventurer with a blade in my hand than boredom as a father.~
END 
++ ~I offer that, Kale. Come with me, I journey to the north.~ + b1.join 
+~BeenInParty("Alora")~+ ~I remember Alora. Is she around?~ + b1.Alora 
++ ~I'll leave you to fix your love problems.~ + b1.exit 

CHAIN X32Kale b1.Alora 
~Probably making a huge gain from all of these refugees. All these people, it's like heaven to her.~
== X32KALE ~Ever since she's talked to ma, she's obsessed with funding a burrow for an entire family of swipers. Ma's corrupted her. Corrupted!~
== X32KALE ~You got any work? Get me away from all of this, at least for a while. I'm not a settling down halfman!~
END  
++ ~I do. I need help, I'm going to the north to take on the crusade.~ + b1.join 
++ ~You should definitely get out of this situation. Come with me.~ + b1.join
++ ~You shouldn't run from this. She clearly cares for you.~ + b1.Alora2
++ ~I'll leave you to fix your love problems.~ + b1.exit 

CHAIN X32Kale b1.Alora2
~Aww, come on. I was hoping you'd be with me on this..~
== X32KBRO ~<PRO_HESHE>'s got a point. Come on, let's get out of here and talk to Alora. You can adventure handfasted, you know.~
== X32KALE ~You can. But it comes with EXPECTATIONS. Do you not get it?~
== X32KBRO ~Yondalla is happy with us having families.~
== X32KALE ~Yeah, yeah, yeah. Well, see you around, <CHARNAME>.~ 
DO ~EscapeArea()ActionOverride("X32KBRO",EscapeArea())~ EXIT 

CHAIN X32Kale b1.exit 
~See you around, then, <CHARNAME>. Let's get out of here, Sammie.~ 
DO ~EscapeArea()ActionOverride("X32KBRO",EscapeArea())~ EXIT 

CHAIN X32Kale b1.join 
~Woohoo. You made the right choice, mate. Tell Alora I'll be gone, eh Samuel?~
== X32KBRO ~You are making a mistake, Kale.~
== X32Kale ~She can find someone else. Lots of fish out in the sea that are almost as fine as me.~
== X32KBRO ~Just...be safe out there.~
== x32Kale ~Safe ain't the point, haha! Let's go, <CHARNAME>.~ 
DO ~JoinParty()AddJournalEntry(@100001,INFO)ActionOverride("X32KBRO",EscapeArea())~ EXIT

APPEND X32Kale

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("X32KaleRomanceActive","global",2)~ postgame
SAY ~Sooo....~ [KaleCom3]
+ ~Global("bd_player_exiled","global",0)~ + ~Hey, Kale.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Hey Kale.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~Are you going to gawk, or help?~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Are you going to gawk, or help?~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + ~Leave me alone, Kale.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~Leave me alone, Kale.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad1
SAY ~All right mate, you don't want me around, goodbye and good riddance.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamebad
SAY ~Look mate, it's my fault for not seeing what you were sooner. Should have never let myself get hooked. The looks always get me.~
++ ~I didn't do it, Kale. I'd never lie to you.~ + postgamebad2A
++ ~So what? You're moving on?~ + postgamebad2B
++ ~Just go away, Kale.~ + postgamebad1
END

IF ~~ postgamebad2A 
SAY ~I think you would. I would in your shoes.~
IF ~~ + postgamebad2B 
END

IF ~~ postgamebad2B
SAY ~Look, I talked to Alora, even. I for a moment considered rekindling things...but after this? I don't want a bond with anyone.~
= ~I'm just going to go south and make a name for myself. Helga's got us in with some small troupe of adventurers. Not sure why I'm telling you this but uh...yeah, mate.~
+~!BeenInParty("X3Helga")~+ ~Who is Helga?~ + postgamebadHelga1
+~BeenInParty("X3Helga")~+ ~Helga? Is she coming here too?~ + postgamebadHelga2
++ ~And you're just going to abandon me?~ + postgamebad3
++ ~If you're looking for my blessing, just do what you want.~ + postgamebad1 
END 

IF ~~ postgamebadHelga1 
SAY ~Some older dwarf lady. Not that good looking, but packs a mean punch. Don't ask how I know.~
IF ~~ + postgamebadHelga3 
END 

IF ~~ postgamebadHelga2 
SAY ~Nah, she's not wanting to get her head in this fuss. Can't blame her, really.~
IF ~~ + postgamebadHelga3 
END 


IF ~~ postgamebadHelga3 
SAY ~My group will be setting out shortly. I don't know what will happen to you, but...good luck.~
IF ~~ EXIT 
END 

IF ~~ postgamebad3 
SAY ~What do you think I can do? Even if I wanted? And you know what mate? I don't want to.~
IF ~~ + postgamebadHelga3 
END 


IF ~~ postgamebad.1
SAY ~Sometimes I wonder if I ignored the bad because of how I felt towards you. Was I really that naive?~
= ~I think I'll always care about you. But I can't stay. I'm going to go home...by myself. I'm sorry.~
= ~I...Goodbye <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ postgamegood.x
SAY ~All right then. If that's the way you want it to be.~
IF ~~ EXIT
END

IF ~~ postgamegood1
SAY ~Come on mate, you've been through worse, eh?~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~Never been good with locks. That's Alora's thing, and she's pretty miffed at me, given, you know...~
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY ~Look...<CHARNAME>. If it helps, Ma, Sam, and I have been on the yelling on your side for support. Not that it means much...there's a hell of a lot of people that want you dead too.~
= ~This is one big mess you've got yourself in.~
++ ~I'm thankful your entire family believes in me.~ + postgamegood.1
++ ~I'll be out eventually. I'll prove my innocence.~ + postgamegood.2
++ ~If you're not planning on breaking me out of here, then go away.~ + postgamegood.x
END

IF ~~ postgamegood.1
SAY ~That's what we do, eh? Stick together.~
IF ~~ + postgamegood.3
END

IF ~~ postgamegood.2
SAY ~I don't know mate...it's pretty divided.~
IF ~~ + postgamegood.3
END

IF ~~ postgamegood.3
SAY ~I can't stay here waiting, you know? And...I'm not one for that kind of commitment.~
= ~I'm going south with Helga and some other adventurers. Without you around I might even get a bit of fame, eh? Heh! Who am I kidding? Nothing we'd do would eclipse your work.~
= ~I'm going to miss you mate...don't hate me too much for not wanting to stick around. It's just...it makes me uncomfortable.~
++ ~Is it because you are scared of what you feel?~ + postgamegood.5
++ ~We could go together. Just help me out of here~ + postgamegood.6
++ ~I understand Kale. Pursue your dreams~ + postgamegood.4
++ ~Just leave me be, Kale.~ + postgamegood.x
END

IF ~~ postgamegood.5
SAY ~It doesn't matter. I just don't...I just don't want it, you know?~
IF ~~ + postgamegood.x
END

IF ~~ postgamegood.4 
SAY ~Thanks mate...you'll get out of here soon. You'll see.~
IF ~~ EXIT 
END 

IF ~~ postgamegood.6
SAY ~I couldn't...and I wouldn't want to go together. I need to be alone, you know?~
= ~Been in your shadow for so long...just need to have a time when I'm not connected to someone's heart.~
= ~I know you don't need this right now, and it hurts and eh...hells, I'm an arse for being selfish.~
= ~But I do hope you get out of here...maybe we'll talk in the future, eh?~
IF ~~ EXIT
END

IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY ~Whew, I am so glad this is all over now. Ma's going to be so cross that I haven't had a single chance to write!~
IF ~~ EXIT 
END

END 