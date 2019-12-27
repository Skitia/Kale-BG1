BEGIN X32KQST1 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",0)IsValidForPartyDialogue("X3Kale")~ THEN X32KQST1 Q1 
~Kale! It's been so long. Were you finally coming up to visit me?~
== X32KaleJ ~Uh. Lilah? Heh, been a year, hasn't it?~
== X32KQST1 ~What took so long? Never mind that. I need your help. I got separated from my brother while escaping some hungry cats. Can you help?~
== X32KaleJ ~Yeah, of course I will help? I'll just bring this team here of mine on the task.~
DO ~SetGlobal("X32KaleQuest","GLOBAL",1)AddJournalEntry(@100,QUEST)~
END 
++ ~We would be glad to help. Where was he last?~ EXTERN X32KQST1 Q1.A
++ ~Excuse me?~ EXTERN X32KaleJ Q1.B
++ ~If the reward is right.~ EXTERN X32KQST1 Q1.C 
++ ~We do not have time for this.~ EXTERN X32KaleJ Q1.D 

CHAIN X32KQST1 Q1.A
~He was talking about some shack seemingly looking to be safe. But I couldn't find it anywhere. I really wish I knew. I hope you find him.~
DO ~SetGlobal("X32KaleQuestTalk","GLOBAL",1)~
== X32KaleJ ~Ha, we'll find him and bring him back all right. Hero of Gullykin's word!~
== X32KQST1 ~Thanks, Kale. Once he's here, we can all catch up on things. We've a lot to talk about.~
== X32KaleJ ~Yeah. Uh, a lot. Weeeeell. Off to get him!~
EXIT   

CHAIN X32KaleJ Q1.B 
~Eh, yeah, <PRO_HESHE> is a bit odd sometimes. Psst! Play along, will yeah?~ 
== X32KQST1 ~What?~
== X32KaleJ ~Oh nothing at all, nothing at all!~ 
END 
++ ~We would be glad to help. Where was he last?~ EXTERN X32KQST1 Q1.A
++ ~The group leader is getting irritated very quickly.~ EXTERN X32KaleJ Q1.E
++ ~If the reward is right, we can lend a hand.~ EXTERN X32KQST1 Q1.C 
++ ~We do not have time for this.~ EXTERN X32KaleJ Q1.D 

CHAIN X32KQST1 Q1.C 
~I...you'll charge me for this? I hardly have anything.~
== X32KaleJ ~Oh no no. Uh. Well...<CHARNAME>? Come on, be a bit considerate? For me?~
END 
++ ~Fine then. Where was he last so we can start looking?~ EXTERN X32KQST1 Q1.A 
++ ~We don't survive if we don't earn a living.~ EXTERN X32KQST1 Q1.F 
++ ~I don't know why you are so keen to help her for free, but I'm not having it.~ EXTERN X32KQST1 Q1.F 

CHAIN X32KaleJ Q1.D 
~Mate? I know the crusade is important, but we can give a few seconds for a search, can't we?~
END 
++ ~Fine then. Where was he last so we can start looking?~ EXTERN X32KQST1 Q1.A 
++ ~If the reward is right, we can lend a hand.~ EXTERN X32KQST1 Q1.C 
++ ~I said we do *not* have time.~ EXTERN X32KQST1 Q1.G 

CHAIN X32KaleJ Q1.E 
~All right, all right. It's <CHARNAME>'s call, not mine. Come on, let's help her, eh?~
END
++ ~We would be glad to help. Where was he last?~ EXTERN X32KQST1 Q1.A
++ ~If the reward is right, we can lend a hand.~ EXTERN X32KQST1 Q1.C 
++ ~We do not have time for this.~ EXTERN X32KaleJ Q1.D 

CHAIN X32KQST1 Q1.F 
~I can part with my sling. I'm close enough to safety that I can part with it. It's magical and of some value.~
END
++ ~Good enough. Where was he last?~  + Q1.A 
++ ~I've no interest.~ + Q1.G
++ ~That's the best you can come up with? Pathetic.~ + Q1.G 

CHAIN X32KQST1 Q1.G 
~I...I see.~
== X32KaleJ ~I'm sorry, Lilah. We're big names and got to do big things now, you know? I'm sure he'll find you soon enough!~
== X32KQST1 ~Mhm.~
== X32KaleJ ~Uh. Well. Got to go!~
EXIT 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",0)!IsValidForPartyDialogue("X3Kale")~ THEN X32KQST1 Q1.1
~Where is Tymora when you need her? Oh. Hello.~
DO ~SetGlobal("X32KaleQuest","GLOBAL",1)~
END 
++ ~You look troubled. Crusaders?~ + Q1.1A 
++ ~There are a lot of other people in just as bad straits. Chin up.~ + Q1.1B 
++ ~I don't have time to talk.~ + Q1.1C 

CHAIN X32KQST1 Q1.1A 
~That is the start of it. Worse, now I can't find my brother. I lost him while trying to escape some hungry cats. I hope he is all right.~
DO ~AddJournalEntry(@100,QUEST)~ 
END 
++ ~We would be glad to help. Where was he last?~ + Q1.1D  
++ ~I can help you find him. For a reasonable price.~ + Q1.1E 
++ ~We don't have time to help you.~ + Q1.1F 

CHAIN X32KQST1 Q1.1B 
~It is worse then that. I can't find my brother. Lost him while trying to escape some hungry cats. I hope he is all right.~ 
DO ~AddJournalEntry(@100,QUEST)~  
END 
++ ~We would be glad to help. Where was he last?~ + Q1.1D  
++ ~I can help you find him. For a reasonable price.~ + Q1.1E 
++ ~We don't have time to help you.~ + Q1.1F 

CHAIN X32KQST1 Q1.1C 
~Wait! Have you seen my brother? We got separated. I lost him while trying to escape some hungry cats.~
DO ~AddJournalEntry(@100,QUEST)~  
END 
++ ~We would be glad to help. Where was he last?~ + Q1.1D  
++ ~I can help you find him. For a reasonable price.~ + Q1.1E 
++ ~We don't have time to help you.~ + Q1.1F 

CHAIN X32KQST1 Q1.1D 
~He was talking about some shack seemingly looking to be safe. But I couldn't find it anywhere. I really wish I knew. I hope you find him.~
EXIT 

CHAIN X32KQST1 Q1.1E 
~What? I have almost nothing. They took almost everything. But if you must need something...I can give you my sling. It's the only thing I have to protect myself.~
END
++ ~Good enough. Where was he last?~ + Q1.1D 
++ ~I've no interest.~ + Q1.1F 
++ ~That's the best you can come up with? Pathetic.~ + Q1.1F

CHAIN X32KQST1 Q1.1F 
~I...I see. Thanks for nothing.~ 
EXIT 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",1)~ THEN X32KQST1 Q2 
~Where are you brother? Please be all right.~ 
EXIT 

CHAIN IF ~Global("X32KaleQuest","GLOBAL",2)~ THEN X32KQST1 Q3 
~You return!~
END
IF ~Global("X32KaleQuestLie","GLOBAL",1)IsValidForPartyDialogue("X3Kale")~ EXTERN X32KaleJ Q3.Lie  
IF ~OR(2)!Global("X32KaleQuestLie","GLOBAL",1)!IsValidForPartyDialogue("X3Kale")~ EXTERN X32KQST1 Q4

CHAIN X32KaleJ Q3.Lie 
~Well, good news! He was in our Coaliton Camp. He's making his way south now even, all the way back to Gullykin. If you hurry, you can catch him Lily.~
DO ~AddJournalEntry(@102,QUEST_DONE)AddexperienceParty(6000)~
== X32KQST1 ~Wonderful! Maybe when you're done fighting the Crusaders, I will see you there? We really should catch up and talk of things.~
== X32KaleJ ~Uh, yeah.~
END 
++ ~Well, we really should be on our way.~ EXTERN X32KQST1 Q3.Lie2 
++ ~Now, our reward?~ EXTERN X32KQST1 Q3.Sling 
+~IsValidForPartyDialogue("X3Kale")~+ ~Kale. Time to go.~ EXTERN X32KQST1 Q3.Lie2

CHAIN X32KQST1 Q3.Lie2 
~Thank you so much. Tymora bless you! And I will miss you, Kale.~
== X32KaleJ ~Yeah. I'll miss you too.~
EXIT 

CHAIN X32KQST1 Q3.Sling 
~Yes. Here. You can make more use of it than I.~
DO ~GiveItem("X32KQSL",Player1)~
EXTERN X32KQST1 Q3.Lie2 

CHAIN X32KQST1 Q4 
~Do you bring news?~
END
++ ~I am sorry. This I believe is your brother.~ DO ~AddJournalEntry(@101,QUEST_DONE)AddexperienceParty(6000)~ +  Q4.A 
++ ~Uh. We couldn't find him. We searched as far and wide as we could afford.~ DO ~AddJournalEntry(@102,QUEST_DONE)AddexperienceParty(6000)~ + Q4.B 
++ ~No news.~ + Q4.G 

CHAIN X32KQST1 Q4.A 
~Oh...Oh no. Oh no no. Oh Yondalla!~
== X32KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN ~I'm real sorry, Lilah. I'm real sorry.~
== X32KQST1 ~Thank you for at least telling me. I...I will find somewhere to bury him. And then, I don't know.~
END 
++ ~There is the coalition camp nearby if you need safety.~ + Q4.D 
++ ~About our reward?~ + Q4.C 
++ ~We must go. Forgive us for not being able to do more.~ + Q4.E 
++ ~Well, we're going to go now.~ + Q4.E 

CHAIN X32KQST1 Q4.B 
~Well, you did all you could. I will have to try to hope he's gone south looking for me.~
== X32KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN ~Sorry we couldn't learn more, Lilah. Gullykin's away from all this mess. Maybe head there?~
== X32KQST1 IF ~IsValidForPartyDialogue("X3Kale")~ THEN ~A good idea! Maybe when you're done fighting the Crusaders, I will see you there? We really should catch up and talk of things.~
== X32KaleJ IF ~IsValidForPartyDialogue("X3Kale")~ THEN ~Uh, yeah.~
END 
++ ~Well, we really should be on our way.~ EXTERN X32KQST1 Q3.Lie3
++ ~Now, our reward?~ EXTERN X32KQST1 Q3.Sling2 
+~IsValidForPartyDialogue("X3Kale")~+ ~Kale. Time to go.~ EXTERN X32KQST1 Q3.Lie3

CHAIN X32KQST1 Q3.Sling2 
~For nothing? *Sigh* Here. Cyrrollalee would say this is right, to let you still have it.~
DO ~GiveItem("X32KQSL",Player1)~
EXTERN X32KQST1 Q3.Lie3 

CHAIN X32KQST1 Q3.Lie3 
~Yondalla keep you safe.~
DO ~EscapeArea()~ EXIT 

CHAIN X32KQST1 Q4.D 
~No...I just want to get away.~
END 
++ ~About our reward?~ + Q4.C 
++ ~We must go. Forgive us for not being able to do more.~ + Q4.E 
++ ~Well, we're going to go now.~ + Q4.E 

CHAIN X32KQST1 Q4.C 
~For what? A dead body? *Sigh* I suppose I would have never learned without you. Here.~
DO ~GiveItem("X32KQSL",Player1)~
EXTERN X32KQST1 Q4.E 

CHAIN X32KQST1 Q4.E 
~I am going to see to his rest then. Urogalan see him safely to the Green Fields.~
END 
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X32KaleJ Q4.F 
IF ~!IsValidForPartyDialogue("X3Kale")~ DO ~EscapeArea()~ EXIT

CHAIN X32KaleJ Q4.F 
~I'm real sorry, Lilah. I wish...~
== X32KQST1 ~What is done is done. We can't go back~
== X32KaleJ ~Maybe next time, we'll run into each other in a more pleasant time.~
== X32KQST1 ~I can't think of that right now. Just...goodbye, Kale.~
DO ~EscapeArea()~ EXIT 
 
CHAIN X32KQST1 Q4.G 
~He's got to be out there. Where are you, brother?~
EXIT 



