BEGIN X32KaleJ

// Talk 1 

IF ~Global("X32KaleTalk","GLOBAL",2)~ Talk1 
SAY ~Another day, another problem. Never seems to end, does it?~
++ ~You seem quite glum about it.~ + T1.A
++ ~That's what we're here to fix.~ + T1.B
++ ~No, and they won't get solved with us talking about it either.~ + T1.C
END 

IF ~~ T1.A 
SAY ~Would be nice to have a bit of peace for a while. One day without some murder, some wild crusade.~
+~!Global("X32KaleWasInBG1","GLOBAL",1)~+ ~You sound like you miss the comforts of home. Why did you come?~ + T1.D1 
+~Global("X32KaleWasInBG1","GLOBAL",1)~+ ~You sound like you miss the comforts of home. Why did you come?~ + T1.D2 
++ ~It would be nice.~ + T1.E 
++ ~Sounds like some wild fantasy.~ + T1.C
END 

IF ~~ T1.D1 
SAY ~"Homelife" was stressful. Thought action would bring relief, but not much gratification to be had if the problem's just going to happen again.~
++ ~You're surprisingly morose.~ + T1.F 
++ ~Cheer up. Everything we do has meaning, and makes things better.~ + T1.G
++ ~Who cares about that? There's better things than that.~ + T1.C 
END 

IF ~~ T1.D2  
SAY ~"Homelife" was unpleasant. I figured adventuring with you again would be a nice escape, but I forgot what I bloody hated about it, the lack of gratification of fixing a problem when you see another spring up.~
++ ~You're surprisingly morose, more than normal.~ + T1.F 
++ ~Cheer up. Everything we do has meaning, and makes things better.~ + T1.H
++ ~Who cares about that? There's better things than that.~ + T1.C 
END 

IF ~~ T1.E 
SAY ~Yeah, it would be. Damn shame it isn't so easy.~
++ ~You're surprisingly morose.~ + T1.F 
++ ~Cheer up. Everything we do has meaning, and makes things better.~ + T1.G
++ ~Who cares about that? There's better things than that.~ + T1.C 
END 

IF ~~ T1.F 
SAY ~Maybe, mate. Eh, let me not bother you, eh? We got things to do and all.~
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.G 
SAY ~I don't easily believe that. But we got things to do. There's bloody bad people to put an end to.~
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.H 
SAY ~Heh, you've said that to me before. Still have a hard time believing it. But we got things to do. There's bloody bad people to put an end to.~ 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.B 
SAY ~Yeah, but what next? You know there'll be another problem after that, and another after that.~ 
IF ~~ + T1.A 
END 

IF ~~ T1.C 
SAY ~Heh. Suppose so, mate. Suppose so.~ 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 2 

IF ~Global("X32KaleTalk","GLOBAL",4)~ Talk2 
SAY ~Surprisingly hard to stay down around you, mate. You've got this charm about you.~ 
++ ~It's nice to see you cheery again.~ + T2.A 
+~Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ ~I'd like to here more about this charm you see in me.~ +  T2.B 
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ ~I'd like to here more about this charm you see in me.~ +  T2.B2
++ ~What did you expect? I am amazing.~ +  T2.C 
++ ~How about you put that newfound hope to work?~ + T2.D 
END 

IF ~~ T2.A
SAY ~Aye! You just give this inspiration out. I like watching how you handle yourself out there.~
IF ~CheckStatGT(Player1,10,CHR)~ + T2.E1 
IF ~CheckStatLT(Player1,11,CHR)~ + T2.E2 
END 

IF ~~ T2.B 
SAY ~And I've no problem obliging. I like watching how you handle yourself.~ 
IF ~CheckStatGT(Player1,10,CHR)~ + T2.E1 
IF ~CheckStatLT(Player1,11,CHR)~ + T2.E2 
END 

IF ~~ T2.B2
SAY ~And I've no problem obliging. I like watching how you handle yourself. Even if you're not a halfling.~ 
IF ~CheckStatGT(Player1,10,CHR)~ + T2.E1 
IF ~CheckStatLT(Player1,11,CHR)~ + T2.E2 
END 

IF ~~ T2.C 
SAY ~And full of yourself, mate. Suppose it's deserved, at least. None of us would be here if it weren't for you.~ 
++ ~It's nice to see you cheery again.~ + T2.A 
+~Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ ~I'd like to here more about this charm you see in me.~ +  T2.B // This is a romance trigger. 
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ ~I'd like to here more about this charm you see in me.~ +  T2.B2
++ ~Thanks. Now let's set our eyes on our goal.~ + T2.D 
END 


IF ~~ T2.D 
SAY ~You got it, mate!~ 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T2.E1 
SAY ~And good looking too. Not that looks are everything, but they sure add to the package.~
++ ~I agree, I am good looking.~ + T2.F 
+~Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ ~You're not so bad yourself.~ + T2.G // Romance flag 
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ ~You're not so bad yourself.~ + T2.G2
++ ~Thank you.~ + T2.Thanks 
++ ~And what of Alora?~ + T2.Alora 
END 

IF ~~ T2.E2 
SAY ~Not the most...quality looking person out there. But your actions does you proud where your appearance doesn't.~ 
++ ~Are you calling me ugly?~ + T2.H
++ ~Thanks. I think.~ + T2.Thanks 
+~Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ ~You're not so bad yourself.~ + T2.G // Romance flag. 
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ ~You're not so bad yourself.~ + T2.G2
END 

IF ~~ T2.F 
SAY ~Confident too, eh? Well, I got no problem with that. Just keep inspiring us, eh?~
IF ~~ + T2.Thanks 
END  

IF ~~ T2.G 
SAY ~Ha! You bet I'm dashing.~ 
IF ~~ + T2.Thanks 
END 

IF ~~ T2.G2 
SAY ~Heh. We halfling folk have a lot to be admired for, eh?~ 
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Alora 
SAY ~Eh, she's not here,and there's no Kale and Alora. 'Sides, there's no commitment, and I can look at who I want.~
++ ~I just wanted to make sure.~ + T2.Alora2 
+~BeenInParty("Alora")Global("X32KaleWasInBG1","GLOBAL",1)~+ ~She cared about you.~ ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T2.AloraBG1 // This will actually end the romance.
++ ~If that's what you want.~ + T2.Alora2 
++ ~I am better than her, anyway.~ + T2.Alora3 
END 

IF ~~ T2.H 
SAY ~I walked right into that one. Last time I'll try to say something nice!~
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Alora2 
SAY ~No need to get serious. Just some harmless flirting. You're almost like ma.~
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Alora3 
SAY ~Oh boy. Not sure what to say to that. Eh, she's not here, so I'll just agree.~
IF ~~ + T2.Thanks 
END 

IF ~~ T2.AloraBG1 
SAY ~You're making it sound like I'm in the wrong. Look, this is just some harmless fun, is all. Sheesh, you're almost like ma.~ 
IF ~~ + T2.Thanks 
END 

IF ~~ T2.Thanks 
SAY ~Anyway, just wanted to say thanks, needed that bit of spirit lifting. Can't beat crusaders in a glum mood. Or a hungry stomach.~
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 3 

IF ~Global("X32KaleTalk","GLOBAL",6)~ Talk3 
SAY ~Soooooo.~ [KaleCom3]
++ ~Hmm?~ + T3.A 
++ ~Let me guess. You have something to ask?~ + T3.A 
++ ~What do you want?~ + T3.A 
++ ~Not now, not now.~ + T3.B 
END 

IF ~~ T3.A 
SAY ~Yeah. You're here out of orders, aren't you?~ 
++ ~The Dukes asked me to come her.~ + T3.C 
++ ~I didn't need to be ordered. I want to get Caelar.~ + T3.D 
++ ~I want to do right by Baldur's Gate.~ + T3.E  
++ ~Only as long as I wish. I am my own person.~ + T3.F 
END 

IF ~~ T3.B 
SAY ~Ah, fine, fine. No fun at all, mate.~
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T3.C 
SAY ~Right. That your long plan then, serving these Dukes?~ 
++ ~I'm not thinking that far yet.~ + T3.G 
++ ~That sounds suiting to me.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T3.H 
++ ~Only as long as I wish. I am my own person.~ + T3.F 
END 

IF ~~ T3.D 
SAY ~Caelar? I get you mate. But what about after? The city could probably use you as their big hero for a long time. You in it for the long haul?~
++ ~I'm not thinking that far yet.~ + T3.G
++ ~That sounds suiting to me.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T3.H
++ ~Only as long as I wish. I am my own person.~ + T3.F 
END 

IF ~~ T3.E 
SAY ~So you're in it for the long haul with this city, then?~ 
++ ~I'm not thinking that far yet.~ + T3.G 
++ ~That I am.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T3.H  
++ ~Only as long as I wish. I am my own person.~ + T3.F 
END 


IF ~~ T3.F 
SAY ~I like that about you. Strong. And independent. Good not to settle on anything forever.~
IF ~~ + T3.Exit 
END 

IF ~~ T3.G 
SAY ~For the best mate. Take it in the moment. Never know what new great thing is all the excitement tomorrow.~ 
IF ~~ + T3.Exit 
END 

IF ~~ T3.H 
SAY ~That ain't very smart, <CHARNAME>. You really limit yourself when you stick with one place and let yourself get chained. Whole world out there.~
IF ~~ + T3.Exit 
END 

IF ~~ T3.Exit 
SAY ~But you sated my curiousity at least. Thanks.~
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 4
IF ~Global("X32KaleTalk","GLOBAL",8)~ Talk4 
SAY ~Whew, am I glad we're stopping. I'm starving!~
+~!Race(Player1,HALFLING)~+ ~That's very halfling of you.~ + T4.A 
++ ~You and me both.~ + T4.B 
+~InParty("X3Helga")~+ ~It's more Hardtack. Nothing to be excited for.~ + T4.C 
+~!InParty("X3Helga")~+ ~It's more Hardtack. Nothing to be excited for.~ + T4.DD 
END 

IF ~~ T4.A 
SAY ~Heh, what can I say? A hungry halfling ain't a happy halfling.~
IF ~~ + T4.B
END 

IF ~~ T4.B
SAY ~Sit over here, mate. Can enjoy our dull bit of biscuits together. I've been wanting to ask you something anyway.~
= ~How in the world do you find the courage to do some of these tasks? From my eyes you're doing the lion's share of the integral tasks here.~
++ ~I just want to help. And I'm not doing it alone.~ + T4.D 
++ ~There is no one else who can do what is necessary.~ + T4.E 
++ ~I enjoy the work. That makes it easy.~ + T4.F 
++ ~The pay makes it worthwhile.~ + T4.G 
END 

IF ~~ T4.C 
SAY ~Aww, Damn. Should have the dwarf cook. Her meals are delicious.~
IF ~~ + T4.B 
END 

IF ~~ T4.DD 
SAY ~Damn. We should have got a proper cook, eh?~
IF ~~ + T4.B 
END 

IF ~~ T4.D 
SAY ~I guess that's noble and all. Just don't let them take advantage of you, eh?~
IF ~~ + T4.H 
END 

IF ~~ T4.E 
SAY ~There's always someone who can do it, mate. I thought I could do anything sometimes, myself, but eh...not always the case.~
IF ~~ + T4.H 
END 

IF ~~ T4.F 
SAY ~I do enjoy it myself, but maybe if the stakes were a little less? Less stress for us all, eh?~
IF ~~ + T4.H 
END 

IF ~~ T4.G 
SAY ~Not much pay to this if you ask me.~
IF ~~ + T4.H 
END 

IF ~~ T4.H 
SAY ~Still, if  it gets to you mate, or you need a hand, just talk to me. No need for you to burden everything alone.~
++ ~I like that. I may count on you then to help me stay strong.~ + T4.I 
++ ~Thanks, Kale.~ + T4.X 
++ ~As if I need anyone else.~ + T4.K 
END 

IF ~~ T4.I 
SAY ~Heh. I'll never let you down, friend.~
IF ~~ + T4.X 
END 

IF ~~ T4.X
SAY ~Well, I'm all stuffed. Good<DAYNIGHT>, <CHARNAME>.~ 
IF ~~ DO ~SetGlobalTimer("X32KaleGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32KaleRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END

IF ~~ T4.K 
SAY ~If you say so, mate.~
IF ~~ + T4.X 
END 

IF ~Global("X32KaleTalk","GLOBAL",10)~ Talk5 // Only occurs if Romance Variable is still at 1.
SAY ~I gotta get something off my chest, mate.~
++ ~What is it, Kale?~ + T5.A 
++ ~I don't see anything on your chest.~ + T5.B 
++ ~Now isn't the time.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.X // There will be no other opportunity to raise it, so flag it off.
END 

IF ~~ T5.A 
SAY ~So, I've...made up a lot of heroic deeds I've done, just to try to further my fame and legacy. Slightly. Or maaaybe quite a bit.~
= ~But with you, it's all real. All there. Glory ain't the same though, cause you're the one absorbing it all. Bothers me sometimes.~ 
++ ~As I said before, I'm not doing this alone. Everyone helps me.~ + T5.C  
++ ~As I should be. I *am* the leader.~ + T5.D
++ ~Are you upset?~ + T5.E 
END 

IF ~~ T5.B 
SAY ~Ha! Joker. Sounds like something I might say.~
IF ~~ + T5.B
END 

IF ~~ T5.C 
SAY ~That's nice to hear mate, really. You're a special friend, you know that?~
++ ~Thanks Kale. You're a good friend as well.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.F1 
++ ~Just a friend?~ + T5.G
++ ~I definitely know of my own greatness.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~+ T5.H  
END 

IF ~~ T5.D 
SAY ~Do you need us then, mate?~  
++ ~I need my friends, Kale. I can't do this alone.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.F1 
++ ~I need you, Kale, but for more than just your blade. You're special to me. I like you a lot.~ + T5.G 
++ ~You're not necessary. But you are here because I asked you to be all the same.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.H1 
++ ~That's not a question I'm comfortable answering.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.X 
END 

IF ~~ T5.E 
SAY ~I just wonder if I'm really necessary for this cause. You? You're integral. Me? I could probably be replaced.~
++ ~I need my friends, Kale. I can't do this alone.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.F1
++ ~I need you, Kale, but for more than just your blade. You're special to me. I like you a lot.~ + T5.G 
++ ~You're not necessary. But you are here because I asked you to be all the same.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.H1 
++ ~That's not a question I'm comfortable answering.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.X 
END 

IF ~~ T5.F1 
SAY ~Thanks mate. That means a lot.~
IF ~~ + T5.F 
END 

IF ~~ T5.F 
SAY ~Soooo. when this is over, given you know, your huge fame, mind handing some of the credit to me? I could really use it to attract some people. A good story always leads to a good time in the inn, if you get my meaning.~
= ~Not like you need anymore, mind, eh?~
++ ~Kale...~ + T5.I 
++ ~I guess I could let some know of the great Kale's part.~ + T5.J 
++ ~You want credit, earn it.~ + T5.I 
END 

IF ~~ T5.G 
SAY ~Aww, damn it. You're saying it with that hopeful look. You're actually interested in me, mate?~
= ~Look, as long as you aren't going into this with forever expectations, that's what turned me away from Alora. But if you're fine with it for the now...~
++ ~I'm not looking far ahead, Kale. I don't even know if we'll live long. But I like you. I know that.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",2)~ + T5.K 
++ ~Let's take it one step at a time. There's no need to rush to think past that.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",2)~ + T5.L 
++ ~I don't think that's what I would want, then.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + T5.M
END 

IF ~~ T5.H1 
SAY ~...That hurts a bit, mate. But thanks for the honest truth.~
IF ~~ +  T5.F 
END 

IF ~~ T5.H 
SAY ~Talk about letting it get to the head, mate!~
IF ~~ + T5.F 
END 

IF ~~ T5.I 
SAY ~All right, all right. I get it, mate. Sheesh. And I thought friends help their friends get famous.~
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.J 
SAY ~You are the best mate! Maybe the legend of Kale isn't dead after all.~
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.K 
SAY ~Come here, mate.~
= ~That...that was nice. Too bad there isn't time to just be here all day.~
++ ~And what if there was?~ + T5.N 
++ ~Unfortunate. Best we depart.~ + T5.O 
END 

IF ~~ T5.L 
SAY ~That's good enough for me, then.~
IF ~~  + T5.K 
END 

IF ~~ T5.M 
SAY ~Yeah...I'm glad you said that now. Just don't want to disappoint you.~ 
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.N 
SAY ~Sweet paradise for you, for starters.~
IF ~~ + T5.O
END 

IF ~~ T5.O 
SAY ~Right, onto dealing with this mess. Then...we'll have a lot more time with just us.~
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T5.X
SAY ~All right mate, if that's what you wish.~
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Talk 6

IF ~Global("X32KaleTalk","GLOBAL",12)~ Talk6 
SAY ~Mate, I agreed to help shoulder the burden, but going into the nine hells is *definitely* not Ma approved action.~
+~Global("X32KaleRomanceActive","GLOBAL",2)~+  ~(Squeeze his hand.)~ + T6.A  
++ ~Imagine the story of Kale, the Hero who went into the nine hells themselves.~ + T6.B 
++ ~You don't have to follow if  you're too scared.~ + T6.C 
++ ~There's no other option, Kale.~ + T6.D 
END 

IF ~~ T6.A  
SAY ~Your hand's suprisingly soft and comforting, <CHARNAME>. Makes a hin fearless.~
IF ~~ + T6.E 
END 

IF ~~ T6.B 
SAY ~Trying to make it easier for me? Well...it's working, because bloody hells, would that be some story! All right, I'm ready for this.~
IF ~Global("X32KaleRomanceActive","GLOBAL",2)~ + T6.E 
IF ~!Global("X32KaleRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T6.C
SAY ~Like I could live with the shame. Aw, hells, I'm bloody going to make myself do this. Ma is going to be mad...~
IF ~Global("X32KaleRomanceActive","GLOBAL",2)~ + T1.E 
IF ~!Global("X32KaleRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T6.D 
SAY ~Figured you would say that, mate.~
IF ~Global("X32KaleRomanceActive","GLOBAL",2)~ + T1.E 
IF ~!Global("X32KaleRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT  
END 

IF ~~ T6.E 
SAY ~Are you feeling all right about this, though? I'll follow you to heh, hell and back. But you don't have to enter. Can try to get those lazy soldiers to do something about it.~
++ ~As long as you are with me, I will feel all right.~ + T6.F 
++ ~They're not going to let anyone through, or us out. We have to, even if I don't like it.~ + T6.G 
++ ~Caelar awaits on the other side. I want revenge.~ + T6.G 
END 

IF ~~ T6.F 
SAY ~I'll do my best, mate. For you.~
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T6.G 
SAY ~Damn them for forcing this situation. Let's give them hell and get ourselves the praise we deserve, eh?~
IF ~~ DO ~IncrementGlobal("X32KaleTalk","GLOBAL",1)~ EXIT 
END 

// Mkhiin Conflict 

IF ~Global("X32KalemkhiinConflict","LOCALS",1)~ MkhiinConflict 
SAY ~Mate. I can tolerate a lot for you, but a goblin not so much. Ma would kill me!~ 
+~CheckStatGT(Player1,15,STR)~+ ~M'khiin is staying. Do you have a problem with that?~ +  BA.B 
+~RandomNum(3,1)CheckStatLT(Player1,16,STR)~+ ~M'khiin is staying. Do you have a problem with that?~ +  BA.B 
+~RandomNum(3,2)CheckStatLT(Player1,16,STR)~+ ~M'khiin is staying. Do you have a problem with that?~ +  BA.A 
+~RandomNum(3,3)CheckStatLT(Player1,16,STR)~+ ~M'khiin is staying. Do you have a problem with that?~ +  BA.A 
++ ~All right then. M'khiin, please go.~ + BA.C
+~CheckStatGT(Player1,15,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + BA.B
+~RandomNum(3,1)CheckStatLT(Player1,16,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + BA.B
+~RandomNum(3,2)CheckStatLT(Player1,16,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + BA.A
+~RandomNum(3,3)CheckStatLT(Player1,16,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + BA.A
END 

IF ~~ BA.A 
SAY ~And I'd be okay with most, but not a bloody goblin. Sorry mate, but you'll have to decide what you want.~
++ ~Then I choose M'khiin~ + BA.E
++ ~Then I will choose you.~ + BA.C
END 

IF ~~ BA.B 
SAY ~All right, all right. Guess I don't *have* to tell Ma about this.~
IF ~~ DO ~SetGlobal("X32KaleMkhiinConflict","LOCALS",2)~ EXIT
END 

IF ~~ BA.E 
SAY ~Eh, I think you're making the wrong choice, but, if that's what you want, I'll be gone then.~ 
IF ~~ DO ~SetGlobal("X32KaleMkhiinConflict","LOCALS",-2)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 
END 

// Quest 1 

IF ~Global("X32KQuestTalk","GLOBAL",2)~ Quest1 
SAY ~Didn't expect to meet Lilah way out here.~
++ ~What is your history with her?~ + Q1.A 
++ ~Did you know her brother?~ + Q1.B 
++ ~Just one of many other refugees.~ + Q1.C 
END  

IF ~~ Q1.A
SAY ~Weeell. We had a bit of a flame back in Gullykin. Before Alora.~
IF ~~ + Q1.A1 
END 

IF ~~ Q1.A1 
SAY ~She lived there for a short time before wandering up north, just before I began my flame to glory!~
= ~I was supposed to go with her. But mother, mother, mother. And uh, I was wanting out anyway. She wanted something lasting.~
++ ~You are that scared of commitment?~ + Q1.D 
++ ~I hope you are more loyal to the cause than you are to your lovers.~ + Q1.E 
++ ~I understand. Young and free! No need for planting roots.~ + Q1.F 
END 

IF ~~ Q1.B 
SAY ~Didn't know him much. He didn't like my relationship with Lilah back in the day though, heh. Doubt he'd be happy to see me now.~
++ ~What is your history with her?~ + Q1.A 
++ ~I'd like to see his face. Let's find him.~ + Q1.Exit
++ ~We should get going.~ + Q1.Exit
END 

IF ~~ Q1.C 
SAY ~Maybe to you, mate. But Lilah was an old flame of mine, before Alora.~ 
IF ~~ + Q1.A1 
END 

IF ~~ Q1.D 
SAY ~Scared? I'd say I'm too smart for it!~ 
IF ~~ + Q1.Exit 
END 

IF ~~ Q1.E 
SAY ~Come on mate, have I ever had the jimmies with you so far?~
IF ~~ + Q1.Exit 
END 

IF ~~ Q1.F 
SAY ~Glad you understand me, mate!~
IF ~~ + Q1.Exit 
END 

IF ~~ Q1.Exit
SAY ~Right, got a brother to find, and a girl to bring a smile to, eh?~
IF ~~ DO ~IncrementGlobal("X32KQuestTalk","GLOBAL",1)~ EXIT 
END 

IF ~Global("X32KQuestTalk","GLOBAL",4)~ Q2 
SAY ~Damn it. Damn it damn it damn it!~
= ~Dead. Why did he have to be dead?~
++ ~I am sorry, but there isn't more we can do for him.~ + Q2.A
++ ~She will be devastated.~ + Q2.A 
++ ~It's just another corpse.~ + Q2.I 
END 

IF ~~ Q2.A 
SAY ~We can't tell her about this, mate.~
++ ~What do you propose?~ + Q2.B 
++ ~She needs to know. Good or not.~ + Q2.C 
++ ~We don't have to speak to her.~ + Q2.D 
END 

IF ~~ Q2.I 
SAY ~Aren't you a bit of sunshine?~
IF ~~ + Q2.A
END  

IF ~~ Q2.B 
SAY ~Let me tell her he moved past the Coalition camp, back to Gullykin. Hale and whole. She'll look south, never find him, and maybe settle down.~
= ~She'll think he's okay. That's what matters.~
++ ~All right. When we talk to her, you can lead the conversation.~ + Q2.E 
++ ~Look, I'll decide what we say to her when we talk to her. No guarantees.~ + Q2.F  
++ ~This isn't right. Wouldn't you want to know if you lost your brother?~ + Q2.G 
++ ~Stooping to lying, then? I thought better of you.~ + Q2.G 
END 

IF ~~ Q2.C 
SAY ~Just hear me out, mate. I don't want to see her heartbroken.~
IF ~~ + Q2.B 
END 

IF ~~ Q2.D 
SAY ~Not speaking to her is an idea, mate. I've got another though.~
IF ~~ + Q2.B 
END 

IF ~~ Q2.E 
SAY ~Right then. Glad you agree with me on this mate. Let's get this over with before the guilt gets me.~
IF ~~ DO ~SetGlobal("X32KQuestTalk","GLOBAL",5)SetGlobal("X32KaleQuestLie","GLOBAL",1)~ EXIT 
END 

IF ~~ Q2.F 
SAY ~You're the leader. *Sigh*. Guess if that's that, then.~
IF ~~ DO ~SetGlobal("X32KQuestTalk","GLOBAL",5)~ EXIT 
END 

IF ~~ Q2.G 
SAY ~Mate, I don't want to look the ineffectual hero. It's about appearances, all right? Already let her down with not joining her. Not keen on making it worse.~
++ ~You can't be afraid of that. Don't be selfish about this.~ + Q2.H 
++ ~Look, I'll decide what we say to her when we talk to her. No guarantees.~ + Q2.F
++ ~I'm telling the truth, whether you like it or not.~ + Q2.F 
++ ~If you're sure, we'll do it your way.~ + Q2.E 
END 

IF ~~ Q2.H 
SAY ~It's better for her, too. Look at all the folk who already have heard devastating news. Don't make it one more.~
++ ~Look, I'll decide what we say to her when we talk to her. No guarantees.~ + Q2.F
++ ~I'm telling the truth, whether you like it or not.~ + Q2.F 
++ ~If you're sure, we'll do it your way.~ + Q2.E 
END 


// THRIX

IF ~Global("X32KaleSacrifice","bd4500",1)~ ThrixTalk0
SAY ~Mate...what in the bloody hells were you doing back there?!~
+ ~!Global("X32_thrix_mark_Kale","global",1)~ + ~Don't be alarmed, I was lying to him.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Kale","global",1)~ + ~Don't be alarmed, I was lying to him.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Kale","global",1)~ + ~I'm sorry, Kale. I messed up.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Kale","global",1)~ + ~I'm sorry, Kale. I messed up.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Kale","global",1)~ + ~Do not question me, Kale.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Kale","global",1)~ + ~Do not question me, Kale.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY ~You messed up, mate. Just admit you messed up. Damn.~
IF ~OR(2)
Global("X32KaleRomanceActive","GLOBAL",1)
Global("X32KaleRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32KaleRomanceActive","GLOBAL",1)
!Global("X32KaleRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY ~At least you got his blasted riddle right.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY ~Yeah. You bloody did.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY ~What in the hells are you saying? You want to be that way mate, fine.~
IF ~OR(2)
Global("X32KaleRomanceActive","GLOBAL",1)
Global("X32KaleRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32KaleRomanceActive","GLOBAL",1)
!Global("X32KaleRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY ~But know this: We're hardly even friends after that "fun" you had with gambling. As idiotic as my brother.~
IF ~~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY ~Let's just get bloody out of here before some other gambling devil tempts you.~
IF ~~ EXIT
END



// M'Khinn Conflict 

CHAIN X32KaleJ BA.C 
~Thanks, mate.~
DO ~SetGlobal("X32KaleMkhiinConflict","LOCALS",-1)~
== BDMKHIIJ ~I'll leave. Don't like it though.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 

// Schael Corwin of Kale's location. Had to add a LOT to this one.
/*For this to be perfect, we should add the variable that flags the PC having met Kale, so they don't superfluously mention Kale even after rejecting him.*/


 


I_C_T2 BDSCHAEL 39 X3KaleBDDSChael39
== BDSCHAEL ~...a halfling named Kale, a supposed hero of Gullykin, is also staying at the Elfsong Tavern...~
END

I_C_T2 BDSCHAEL 66 X3KaleBDDSChael66
== BDSCHAEL ~...a halfling named Kale, a supposed hero of Gullykin, is also staying at the Elfsong Tavern...~
END

I_C_T2 BDSCHAEL 70 X3KaleBDDSChael70
== BDSCHAEL ~And yes, the halfling Kale as well. No more trustable than the others.~
END

I_C_T2 BDSCHAEL 68 X3KaleBDDSChael70
== BDSCHAEL ~Four if you count the halfling. I don't.~
END

EXTEND_TOP BDSCHAEL 115 #4
+~!InParty("X3Kale")~+ ~You forgot about the halfling, Kale.~ EXTERN BDSCHAEL bdschael120
END 

EXTEND_TOP BDSCHAEL 120 #4
+~!InParty("X3Kale")~+ ~And the halfling, Kale?~ EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 116 #4
+~!InParty("X3Kale")~+ ~And the halfling, Kale?~ EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 121 #4
+~!InParty("X3Kale")~+ ~You forgot about the halfling, Kale.~ EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 122 #4
+~!InParty("X3Kale")~+ ~You forgot about the halfling, Kale.~ EXTERN BDSCHAEL bdschael120
END

EXTEND_TOP BDSCHAEL 123 #4
+~!InParty("X3Kale")~+ ~You forgot about the halfling, Kale.~ EXTERN BDSCHAEL bdschael120
END

CHAIN BDSCHAEL bdschael120
~He's with the thieves and the bard in the Elfsong Tavern.~
COPY_TRANS BDSCHAEL 120

I_C_T2 BDSCHAEL 62 X3KaleBDDSChae62
== BDSCHAEL ~A halfling named Kale, a supposed hero of Gullykin, is also staying at the Elfsong Tavern. Not much more of a good idea than those thieves.~
END

EXTEND_TOP BDSCHAEL 60 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael
END

EXTEND_TOP BDSCHAEL 63 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael
END

EXTEND_TOP BDSCHAEL 65 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael
END



EXTEND_TOP BDSCHAEL 64 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael
END

CHAIN BDSCHAEL bdschael
~I did. He calls himself a hero of that small village, Gullykin. I can't say what brings him here.~
COPY_TRANS BDSCHAEL 62

EXTEND_TOP BDSCHAEL 89 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael91
END

CHAIN BDSCHAEL bdschael91
~I did. He calls himself a hero of that small village, Gullykin. I can't say what brings him here.~
COPY_TRANS BDSCHAEL 91

EXTEND_TOP BDSCHAEL 91 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael91
END

EXTEND_TOP BDSCHAEL 92 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael91
END

EXTEND_TOP BDSCHAEL 93 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael91
END

EXTEND_TOP BDSCHAEL 94 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael91
END


EXTEND_TOP BDSCHAEL 99 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael107
END

CHAIN BDSCHAEL bdschael107
~I did. He calls himself a hero of that small village, Gullykin. I can't say what brings him here.~
COPY_TRANS BDSCHAEL 107

EXTEND_TOP BDSCHAEL 107 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael107
END



EXTEND_TOP BDSCHAEL 108 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael107
END



EXTEND_TOP BDSCHAEL 109 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael107
END



EXTEND_TOP BDSCHAEL 110 #4
+~!InParty("X3Kale")~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael107
END

I_C_T2 BDSCHAEL 202 X3KaleBDDSChael202
== BDSCHAEL ~You'll find the halfling Kale here as well. Seems more a liar than an honest hero, but it's your call.~
END

EXTEND_TOP BDSCHAEL 204 #4
+~!InParty("X3Kale")!Global("X32KaleMet","GLOBAL",1)~+ ~You mentioned some halfling staying at the Elfsong?~ EXTERN BDSCHAEL bdschael204
END

CHAIN BDSCHAEL bdschael204
~I did. He calls himself a hero of that small village, Gullykin. I can't say what brings him here. Call if you need me.~
EXIT

EXTEND_TOP BDSCHAEL 204 #1
+~AreaCheck("BD0109")IfValidForPartyDialog("X3Kale")Global("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",0)~+ ~Corwin, meet Kale. Kale, meet Corwin.~ DO ~SetGlobal("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelKaleMeet
END

CHAIN BDSCHAEL bdschaelKaleMeet
~Well met.~ 
== X32KaleJ ~Got your own bodyguard to boot, eh? Well met!~
== BDSCHAEL ~Are you ready to go?~
COPY_TRANS BDSCHAEL 195

EXTEND_TOP BDSCHAEL 204 #2
+~AreaCheck("BD0109")IfValidForPartyDialog("X3Kale")Global("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",0)~+ ~I've recruited Kale. My business is concluded here, let's get moving.~ DO ~SetGlobal("BD_CORWIN_X3KALE_COMMENTS","GLOBAL",1)~ EXTERN BDSCHAEL 205 
END

I_C_T BDSCHAEL 127 X32KaleBDSCHAEL127
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Poor hero, rejected.~
END 

I_C_T BDSCHAEL 250 X32KaleBDSCHAEL250
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Bloody hells. The tyke is taller than me!~
END 

// Coran 

I_C_T2 BDCORAN 11 X32KaleBDCORAN11
== X32KALEJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~  THEN ~What? Did it look like <PRO_HESHE> was crying? Pfft.~
END

// Garrick
I_C_T BDGARRIC 54 X32KaleBDGARRIC54 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Damn, I pity him. Can't tell when his doesn't have a chance.~
END 

I_C_T BDGARRIC 55 X32KaleBDGARRIC55 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~  THEN ~Your words won't work, <CHARNAME>. He's hopeless.~
END 


// Safana 

I_C_T BDSAFANA 28 X3KaleBDSAFANA28
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Kale, the hero of Gullykin, as you know. Oh. You were talking to him. Damn it.~
== BDSAFANA IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Sorry, I prefer big strong men.~
END 


// Dynaheir 

I_C_T BDDYNAHE 27 X32KaleBDDYNAHE27
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~She know what she just said? Haha!~
END 

I_C_T BDJEGG 18 X32KaleBDJEGG18 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Pretty smart, that. No more people gone, and almost no supplies for them.~
END 

I_C_T BDTAKOS 8 X32KaleBDTAKOS8 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Every halfling fellow's got to have his cloak.~
== BDTAKOS ~*sigh*~ 
END

I_C_T BDTAKOS 16 X32KaleBDTAKOS16
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~If he's offering, go for the cloak, mate.~
END

I_C_T BDTAKOS 18 X32KaleBDTAKOS18
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~If he's offering, go for the cloak, mate.~
END

// Caged Dorn Trolls.

I_C_T BDTROLL1 1 X32KaleBDTROLL1
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Look at that. Trolls think you'll bloody listen to them.~
END

I_C_T BDTROLL2 1 X32KaleBDTROLL2
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Look at that. Trolls think you'll bloody listen to them.~
END

I_C_T BDKHALID 55 X32KaleBDKHALID55 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~I'm not being asked mate, but I wouldn't gamble with the lives here in the fort.~
END

I_C_T BDGLINT 19 X32KaleBDGLINT19 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Mothers. Always bossing us sons around. Its hell, I tell you.~
END

// Riggs 

I_C_T BDRiggs 15 X32KaleBDRiggs15
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~I'd want reward for hard work to, but I wouldn't get slimy for it.~
END 

// Rasaad 

I_C_T BDRasaad 40 X32KaleBDRasaad40
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)Global("X32KaleWasInBG1","GLOBAL",1)~ THEN ~You seen the people who try to kill <CHARNAME>? The reason is idiocy usually.~
END 

// Tiax 
I_C_T BDTiax 41 X32KaleBDTiax41
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~I'd like to see you try, mate.~
END 

//Korlasz
I_C_T BDKorlas 24 X32KaleBDKorlas
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Seems she really wants to die by your hand, mate.~
END 

// Viconia 
I_C_T BDViconi 25 X32KaleViconi25
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Hey, we're not all like that! Except half the time, but it ain't our fault.~
END

// Morlis 

EXTEND_TOP BDMORLIS 4 #4 
+ ~IsValidForPartyDialogue("X3Kale")~ + ~Rage can be an asset in battle. Kale's shown us that before.~ EXTERN X32KaleJ bdMorlis4
END 

CHAIN X32KaleJ bdMorlis4
~Sure can, mate. Just be the one in control, not the fury, eh?~ 
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)~

COPY_TRANS BDMORLIS 6

// BDCLOVIS 

EXTEND_TOP BDCLOVIS 3 #3
+ ~IsValidForPartyDialogue("X3Kale")~ + ~Kale's pretty experienced in fighting small against larger foes. Any advice, Kale?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN X32KaleJ BDCLOVIS3 
END 

CHAIN X32KaleJ BDCLOVIS3 
~Aim for the knees, or at their joints. They hate it when you get that ridge between armor plates.~
EXTERN BDCLOVIS 5

// Murs 

I_C_T BDMURS 14 X32KaleBDMURS14 
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~I don't think *that* is happening to him.~
END

// Therli 

I_C_T BDTHERLI 7 X32KaleBDTHERLI7
== X32KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN ~Hey! Nice cloak.~
== BDTHERLI ~I trust you will use it well.~ 
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Kale","bd4500",0)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~The halfling. Such wonderful curious creatures. I would accept that one.~
END
++ ~So be it. Should I lose your riddle, I will forfeit Kale to you.~ DO ~SetGlobal("X32KaleSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32KaleRomanceActive","GLOBAL",1) Global("X32KaleRomanceActive","GLOBAL",2)~ + ~Kale's precious. I'm not giving him up.~ DO ~SetGlobal("X32_Saved_Kale","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32KaleJ ThrixWager2
+ ~!Global("X32KaleRomanceActive","GLOBAL",1) !Global("X32KaleRomanceActive","GLOBAL",2)~ + ~You ask for too much, fiend. Kale's soul is worth too much for me to risk it. Choose another.~ DO ~SetGlobal("X32_Saved_Kale","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32KaleJ ThrixWager2
++ ~It's a poor <PRO_MANWOMAN> indeed who'd sacrifice a friend in such a way. If I can't answer your riddle, you will take me, and let them go on their way. Agreed?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN X32KaleJ ThrixWager2
~You hear that? You can't have me!~
== BDTHRIX ~Ah. Such a pity.~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32KaleSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Kale")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Yes. Yes. How excellent. You are mine now, halfling.~
END
++ ~Sorry, Kale. I guess I couldn't get it right.~ DO ~SetGlobal("X32_thrix_mark_Kale","global",1)~ EXTERN X32KaleJ ThrixWager5
++ ~That's not happening, fiend!~ EXTERN BDTHRIX 10

CHAIN X32KaleJ ThrixWager5
~Aww, come on!~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("X3Kale_SoDparty_epilogue","GLOBAL",1)~ + ~I guess this was too much to ask for Kale to be here.~ EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("X3Kale_SoDparty_epilogue","GLOBAL",1)~ + ~I guess this was too much to ask for Kale to be here.~ EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
~Sorry about that. I couldn't even find him. Seemed he already left the city.~
EXTERN BDIMOEN 119

APPEND X32KaleJ 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY ~Whew, I am so glad this is all over now. Ma's going to be so cross that I haven't had a single chance to write!~
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) OR(2) AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Kale.PIDCrypt1  
SAY  @1 // ~Woohoo. Can't wait to tell ma about this whole adventure. No exaggerating this time either. [KaleAct6]
IF ~~ EXIT 
END 

/*Some copying here is leaving some Kale things without their 2. This should be okay.*/
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Kale.PID 
 SAY  ~Yeah? You want something, I bet.~  [KaleCom1] 
 + ~HPPercentGT(Myself,74)RandomNum(5,1)~ + ~How are you doing?~ + Kale.PHowAreYou1 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(5,2)~ + ~How are you doing?~ + Kale.PHowAreYou2 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(5,3)~ + ~How are you doing?~ + Kale.PHowAreYou3 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,1)~+ ~How are you doing?~ + Kale.PHowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ ~How are you doing?~ + Kale.PHowAreYouHurt // ~How are you doing?~ //(Under 50%)
 +~HPPercentGT(Myself,74)RandomNum(5,4)~+ ~How are you doing?~ + Kale.PHowAreYou4 // ~How are you doing?~
 +~HPPercentGT(Myself,74)RandomNum(5,5)~+ ~How are you doing?~ + Kale.PHowAreYou5 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,2)~+ ~How are you doing?~ + Kale.PHowAreYouInjured2  // ~How are you doing?~
 ++ ~Let's stop and chat for a bit.~ + Kale.PTalk // ~Let's stop and chat for a bit.~ 
 ++ ~I need nothing at the moment.~ EXIT // ~I need nothing at the moment.~ 
 END 
 
 IF ~~ Kale.PHowAreYou1
SAY ~Not bad mate, not bad at all!~ 
IF ~~ EXIT  
END 

IF ~~ Kale.PHowAreYou2
SAY ~Mite hungry here. Bit odd not to have my usual several meals a day from good old ma.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou3
SAY ~Bit bored, really. I hope we're getting some bloody action soon.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouInjured
SAY ~Just a flesh wound bothering me. It will settle down soon.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouHurt
SAY ~Oh, I'm just bloody bleeding over here and grinning through it. Fun stuff.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou4
SAY ~Fine here. Just thinking of good old ma. Hope she's doing all right.~
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou5
SAY ~Wonderful. Imagining the chorus for my personal ballad a bard would compose. Sounds so lovely in my head.~
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouInjured2
SAY ~Don't worry mate, these cuts will heal in no time.~
IF ~~ EXIT  
END

IF ~~ Kale.PTalk 
SAY  ~Sure mate, I'm listening.~ 
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
// Companion Thoughts 
+ ~NumInPartyAliveGT(2)~ + ~What do you think of our companions?~  + Kale.PCompanionThoughts // ~What do you think of our companions?~ 
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,5)Global("X32KaleRomanceActive","GLOBAL",2)~ + ~What do you think of me?~ + Em.Me3 // ~What do you think of me?~
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,5)!Global("X32KaleRomanceActive","GLOBAL",2)~ + ~What do you think of me?~ + Em.Me1 // ~What do you think of me?~
+ ~NumInPartyAliveLT(3)ReputationLT(Player1,6)~ + ~What do you think of me?~ + Em.Me2 // ~What do you think of me?~
// Dialogue From Talk Expansions. These fire once, and there will be 3 only: A talk of things while they were gone (7/8), something friendly, and something flirty. 
+~Global("X32KaleMarriage","GLOBAL",0)~+ ~You mentioned something about getting married before you came along.~ DO ~SetGlobal("X32KaleMarriage","GLOBAL",1)~  + X32KaleP.Marriage
+~GlobalGT("X32KaleTalk","GLOBAL",6)Global("X32KalePIDTalk2","GLOBAL",0)~+ ~You seem very serious about not getting attached to people or things.~ DO ~SetGlobal("X32KalePIDTalk2","GLOBAL",0)~ + X32KaleP.PIDTalk2
+~Global("X32KaleRomanceActive","GLOBAL",2)Global("X32KalePIDTalk3","GLOBAL",0)~+ ~So, about us...~ DO ~SetGlobal("X32KalePIDTalk3","GLOBAL",0)~ + X32KaleP.PIDTalk3
END 

IF ~~ Kale.PCompanionThoughts 
SAY ~Which one, now?~ // ~Which one, now?~ 
// BG1
+~InParty("Dynaheir")~+ ~Dynaheir~ + Em.Dynaheir
+~InParty("Edwin")~+ ~Edwin~ + Em.Edwin
+~InParty("Jaheira")~+ ~Jaheira~ + Em.Jaheira 
+~InParty("Khalid")~+ ~Khalid~ + Em.Khalid 
+~InParty("Minsc")~+ ~Minsc~ + Em.Minsc 
+~InParty("Safana")~+ ~Safana~ + Em.Safana 
+~InParty("Viconia")~+ ~Viconia~ + Em.Viconia     
// EE 
+~InParty("Neera")~+ ~Neera~ + Em.Neera 
+~InParty("Rasaad")~+ ~Rasaad~ + Em.Rasaad 
+~InParty("Dorn")~+ ~Dorn~ + Em.Dorn 
+~InParty("Baeloth")~+ ~Baeloth~ + Em.Baeloth 
// SoD Only 
+~InParty("Glint")~+ ~Glint~ + Em.Glint 
+~InParty("Corwin")~+ ~Corwin~ + Em.Corwin 
+~InParty("mkhiin")~+ ~M'Khiin~ + Em.Mkhiin 
+~InParty("Voghlin")~+ ~Voghlin~ + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Helga")~+ ~Helga~ + Em.Helga
+~InParty("X3Rec")~+ ~Recorder ~ + Em.Recorder
+~InParty("X3Vien")~+ ~Vienxay~ + Em.Vienxay 
+~InParty("X3Kale")~+ ~Emily~ + Em.Emily
+~InParty("c0aura")~+ ~Aura~ + Em.Aura 
+~InParty("c0Drake")~+ ~Drake~ + Em.Drake 
+~InParty("C0Sirene")~+ ~Sirene~ + Em.Sirene
+~InParty("L#1DVER")~ + ~Verrsza~ + Em.Verrsza
+~InParty("#Ishy")~ + ~Ishy~ + Em.Ishy 
// Myself 
+~ReputationGT(Player1,5)!Global("X32KaleRomanceActive","GLOBAL",2)~+ ~Myself~ + Em.Me1 
+~ReputationLT(Player1,6)~+ ~Myself~ + Em.Me2
+~ReputationGT(Player1,5)Global("X32KaleRomanceActive","GLOBAL",2)~+ ~Myself~ + Em.Me3 
++ ~Nevermind~ EXIT  
END 

IF ~~ Em.Dynaheir 
SAY ~Of the pair, got to say I prefer Minsc over her, but she ain't a bad sort either.~
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY ~Bit of an arrogant arse. Mages.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY ~Reminds me of ma when I was younger, not yet ready to let me out in the world.~ 
END 

IF ~~ Em.Khalid 
SAY ~I like the fellow. Even if he's a bit nervous, he's quite likable.~
IF ~~ EXIT 
END 



IF ~~ Em.Minsc 
SAY ~I love the guy, but he needs to stop taking blows to the head.~
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY ~She's the type that makes you do whatever she wants. I don't like that type anymore, mate.~
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY ~She's odd, for a drow. Full of mystery and beauty, I'd say.~
IF ~~ EXIT 
END 

IF ~~ Em.Helga
SAY ~Her accent's a bit odd. You think she's from the Northwest parts?~
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY ~How the nine hells is she still alive with that attitude? If that Evermeet is full of elves like that, I'd be terrified.~
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY ~I used to like unpredictable women. After seeing wild magic, I'm now very scared of unpredictable women.~
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY ~The strength of half-orcs is sure a real thing. A fine warrior, if a dark warrior, mate.~
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY ~The things he does with his fist is amazing. I can do it too, though. Just watch me later.~
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY ~I hate to say it mate, but she's a bit like a golem if you ask me.~
IF ~~ EXIT 
END 

IF ~~ Em.Mkhiin 
SAY ~Mate. Even if she's the weirdest goblin I've ever met, she's still a goblin.~
IF ~~ EXIT 
END 

IF ~~ Em.Glint 
SAY ~For a quirky gnome, he isn't so bad. Even if I don't know what he's talking about sometimes.~
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY ~Man, I love that guy. A man that can drink and fight at the same time? We've landed a winner.~
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY ~Mate, drow don't exactly add to my legendary hero status. Not fond of your choice of company here.~
IF ~~ EXIT 
END 

IF ~~ Em.Emily   
SAY ~A nice soul, I suppose. A bit too idealistic though. Careful of her ideas.~
IF ~~ EXIT 
END 

IF ~~ Em.Recorder 
SAY ~She's be a lot cuter if she wasn't way too serious about everything.~
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY ~She's a practical genius. If I were here, I'd sell the things I made for a fortune.~
IF ~~ EXIT 
END 

IF ~~ Em.Drake 
SAY ~I'd say something about long shanks mate, but I don't think he'd like that.~
IF ~~ EXIT 
END 

IF ~~ Em.Sirene
SAY ~Suprised a tiefling is a paladin. But I'd rather have one as an ally than an enemy.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza 
SAY ~I've got my reservations about that Rakasha. But as long as he isn't against us, suppose what's the harm?~
IF ~~ EXIT 
END 

IF ~~ Em.Ishy 
SAY ~She's a pretty strong orc. Rather decent nature she has, too. Bit suprising to see from her kind.~
IF ~~ EXIT 
END 
 
IF ~~ Em.Me1 
SAY ~You're not so bad, mate. Except that you're out there looking more impressive than me, heh.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY ~To be honest mate, a bit troubled with some of your actions. Hoping you turn things around, else I'll have to strike out on my own.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Me3 
SAY ~What can I say? You're precious.~
IF ~~ EXIT 
END 

IF ~~ X32KaleP.Marriage
SAY ~There ain't going to be a marriage, mate. We've got two tiers in our culture, and there isn't going to be a handfasting, the first, either.~
/* IF KALE AND ALORA WERE IN PARTY BEFORE */ IF ~BeenInParty("Alora")BeenInParty("X3Kale")~ + X32KaleP.Marriage1
/*Anything else.*/ IF ~OR(2)!BeenInParty("Alora")!BeenInParty("X3Kale")~ + X32KaleP.Marriage2
END 

IF ~~ X32KaleP.Marriage1
SAY ~All of the thrills, adventure, and borrowing was nice after we took down Sarevok.~
IF ~~ + X32KaleP.Marriage3 
END 

IF ~~ X32KaleP.Marriage2 
SAY ~All of the thrills, adventure, and borrowing was nice for a short while.~
IF ~~ + X32KaleP.Marriage3 
END 

IF ~~ X32KaleP.Marriage3 
SAY ~Then things got too serious, especially after ma started talking to her privately. So no more of that for me.~
++ ~What's so bad about commitment?~ + X32KaleP.MarriageC
++ ~So you're not interested in a serious relationship?~ + X32KaleP.MarriageC
++ ~Alora's a nice girl. Give her a chance. You can always seperate if it doesn't work out.~ + X32KaleP.MarriageChance
++ ~I'm not interested in listening to this drama further.~ + X32KaleP.MarriageE
END  

IF ~~ X32KaleP.MarriageC 
SAY ~Daft as Samuel. Commitment comes with expectations. Yondalla wants us to have children, see. Families and families, clan making. All the priests will talk about at weddings. Not interested.~
= ~I'm interested in furthering my legacy and glory. Can't do that chained to a burrow.~
++ ~You don't have to have kids.~ + X32KaleP.MarriageK 
++ ~I can see where you are coming from.~ + X32KaleP.MarriageP
++ ~I think you're a coward.~ + X32KaleP.MarriageCoward 
END 

IF ~~ X32KaleP.MarriageChance 
SAY ~I did. She's nice, but I'm happy in the moment with no strings attached. She can find someone else.~
++ ~You don't have to have kids.~ + X32KaleP.MarriageK 
++ ~I can see where you are coming from.~ + X32KaleP.MarriageP
++ ~I think you're a coward.~ + X32KaleP.MarriageCoward 
END 

IF ~~ X32KaleP.MarriageE 
SAY ~Wasn't much interested in talking about it, anyway.~
IF ~~ EXIT 
END 

IF ~~ X32KaleP.MarriageK 
SAY ~I don't. But if your spouse wants them, it ain't going to last long, you know?~
= ~Not much interested in talking further about this. I'm out here for action, not domesticity.~
IF ~~ EXIT 
END 

IF ~~ X32KaleP.MarriageP 
SAY ~I'll just have to have you talk to mother, then. Be nice to have someone on my side. Samuel's bloody useless.~
= ~Well, we're here to do business right, not linger on domesticity? Might as well get to it.~
IF ~~ EXIT 
END 

IF ~~ X32KaleP.MarriageCoward 
SAY ~Coward?! Pfft. Takes more guts to stand up against a crusade then being with a wife and bloody baby.~
= ~We got work to get to don't we? Better than debating about this.~
IF ~~ EXIT 
END 

IF ~~ X32KaleP.PIDTalk2
SAY ~I am. Everyone in Gullykin is attached to their burrow. To the easy homelife. There's a whole world out there. Glory for the taking, excitement to see, history to live.~
= ~Won't see it if you don't get out to find it.~ 
++ ~I see what you mean, but most people aren't equipped for that.~ + PID2.A 
++ ~Exactly!~ + PID2.B 
++ ~After all I've been through, I would want that homelife.~ + PID2.C 
END 

IF ~~ PID2.A 
SAY ~Nah, that's just fear. There will be jerks that try to break in your home as much as they'll rob you on the road. Just takes courage.~
++ ~I can agree with that.~ + PID2.B 
++ ~You've seen the displaced refugees. Not all of them are unskilled. It takes talent to do what we do too.~ + PID2.E 
++ ~If they don't have courage just more for the rest of us then.~ + PID2.F 
END 

IF ~~ PID2.B 
SAY ~Glad to see someone that gets it.~
++ ~Let's continue on.~ + PID2.EXIT  
++ ~Let's talk about something else.~ + Kale.PTalk
END 

IF ~~ PID2.C 
SAY ~And that's fine, just don't sit in it for the rest of your days.~ 
++ ~Not while there's adventure around a corner.~ + PID2.B
++ ~I wouldn't mind to settle longer actually, maybe raise a family.~ + PID2.H 
++ ~That's far away, still. Lots to do until then.~ + PID2.I 
END 

IF ~~ PID2.E
SAY ~They weren't really trying to explore either. But suppose I see your point too. Bit of both, eh?~
++ ~Let's continue on.~ + PID2.EXIT  
++ ~Let's talk about something else.~ + Kale.PTalk
END 

IF ~~ PID2.F 
SAY ~Ha, that's a positive way to see it, mate. More glory and gold for the rest of us.~
++ ~Let's continue on.~ + PID2.EXIT  
++ ~Let's talk about something else.~ + Kale.PTalk
END 

IF ~~ PID2.H 
SAY ~And you're sounding like Ma and Alora. Ick!~
++ ~Let's continue on.~ + PID2.EXIT  
++ ~Let's talk about something else.~ + Kale.PTalk
END 

IF ~~ PID2.I 
SAY ~Aye! That's the way to look at it! Stay in the moment and all.~ 
++ ~Let's continue on.~ + PID2.EXIT  
++ ~Let's talk about something else.~ + Kale.PTalk
END 

IF ~~ PID2.EXIT 
SAY ~Righto!~ 
IF ~~ EXIT 
END 

IF ~~ X32KaleP.PIDTalk3
SAY ~Yeah, what about us?~
+~Global("X32KaleLT1","LOCALS",0)~+ ~It makes me happy, being with you.~ DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT2","LOCALS",0)~+ ~What will we do after this is over?~ DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
+~Global("X32KaleLT3","LOCALS",0)~+ ~Do you feel unfaithful to Alora?~ DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ ~I don't think getting together was a good idea.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + PID3.X
END 

IF ~~ PID3.A 
SAY ~Makes me feel just the same. Nothing like the adventure of your lifetime with a grand hero at that. Couldn't feel safer despite being in such grave places all the time.~
+~Global("X32KaleLT2","LOCALS",0)~+ ~What will we do after this is over?~ DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
+~Global("X32KaleLT3","LOCALS",0)~+ ~Do you feel unfaithful to Alora?~ DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ ~Let's talk about something else.~ + Kale.PTalk
++ ~Let's continue on.~ + PID2.EXIT  
END

IF ~~ PID3.B 
SAY ~I don't know. That's the best part. We'll have all the time in the world to think about that once things settle down.~
IF ~Global("X32KaleWasInBG1","GLOBAL",1)~ + PID3.B1 
IF ~!Global("X32KaleWasInBG1","GLOBAL",1)~  + PID3.B2 
END 

IF ~~ PID3.B1 
SAY ~Knowing your luck though, it won't settle down for long.~ 
+~Global("X32KaleLT1","LOCALS",0)~+ ~It makes me happy, being with you.~ DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT3","LOCALS",0)~+ ~Do you feel unfaithful to Alora?~ DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ ~Let's talk about something else.~ + Kale.PTalk
++ ~Let's continue on.~ + PID2.EXIT 
END

IF ~~ PID3.B2 
SAY ~That would be bloody nice too. Though I'd itch for another adventure just as well.~
+~Global("X32KaleLT1","LOCALS",0)~+ ~It makes me happy, being with you.~ DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT3","LOCALS",0)~+ ~Do you feel unfaithful to Alora?~ DO ~SetGlobal("X32KaleLT3","LOCALS",1)~ + PID3.C 
++ ~Let's talk about something else.~ + Kale.PTalk
++ ~Let's continue on.~ + PID2.EXIT 
END

IF ~~ PID3.C 
SAY ~Nah. As I said, was disinterested in the path she wanted in life and didn't want that.~
++ ~Did you tell her, though?~ + PID3.D 
++ ~I'm glad. It brought something nice for me.~ + PID3.E 
++ ~And how will I know you won't just leave all of a sudden?~ + PID3.F 
++ ~Let's talk about something else.~ + Kale.PTalk
++ ~Let's continue on.~ + PID2.EXIT 
END
 
IF ~~ PID3.D 
SAY ~No, I didn't. But I will when we return, about my decision.~
++ ~Thanks. That makes me more comfortable with this.~ + PID3.E 
++ ~I don't want to get in the way of Alora. I think we should end this.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + PID3.X 
++ ~You better.~ + PID3.E 
END

IF ~~ PID3.E 
SAY ~Don't worry, I'll be true about my mistake. Best for all of us.~
+~Global("X32KaleLT1","LOCALS",0)~+ ~It makes me happy, being with you.~ DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT2","LOCALS",0)~+ ~What will we do after this is over?~ DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
++ ~Let's talk about something else.~ + Kale.PTalk
++ ~Let's continue on.~ + PID2.EXIT 
END 

IF ~~ PID3.F 
SAY ~You don't. I don't want to look far ahead. The now's sweet...that's all that matters to me.~
++ ~Okay. We'll just see where the present takes us.~ + PID3.G 
++ ~I don't know if I'm comfortable with that. Maybe we should stay friends.~ DO ~SetGlobal("X32KaleRomanceActive","GLOBAL",3)~ + PID3.X 
++ ~Maybe you'll change your mind about that someday. Dreaming of the future isn't all bad.~+ PID3.H 
END 

IF ~~ PID3.G 
SAY ~It's the best way to walk the path of life, <CHARNAME>. One foot at a time.~ 
+~Global("X32KaleLT1","LOCALS",0)~+ ~It makes me happy, being with you.~ DO ~SetGlobal("X32KaleLT1","LOCALS",1)~ + PID3.A 
+~Global("X32KaleLT2","LOCALS",0)~+ ~What will we do after this is over?~ DO ~SetGlobal("X32KaleLT2","LOCALS",1)~ + PID3.B 
++ ~Let's talk about something else.~ + Kale.PTalk
++ ~Let's continue on.~ + PID2.EXIT 
END 

IF ~~ PID3.H 
SAY ~Maybe for you. But for me...makes me all shivery. I want to walk what I see, and enjoy that, not the ominous stuff over the hill until I get there.~
IF ~~ + PID3.G 
END 

IF ~~ PID3.X 
SAY ~...Maybe...yeah, maybe that's just it then. For the best. Would only have lasted so long, I suppose.~
= ~...Guess we should get back to adventuring, or whatever  you want to tell us to do.~
IF ~~ EXIT 
END 

END