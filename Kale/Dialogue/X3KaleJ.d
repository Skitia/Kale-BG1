BEGIN X3KaleJ
/* Cut Options will be between a slash and an asterisk comment for talks. */
IF ~Global("X3KaleTalk","GLOBAL",2)~ KaleT1
SAY @0 // ~This is the life, ain't it? Making stories, not just hearing them.~
+~Gender(Player1,MALE)~+ @1 + KaleT1.1 // ~I know what you mean, Kale.~
+~Gender(Player1,FEMALE)~+ @1 + KaleT1.2 // ~I know what you mean, Kale.~
++ @2 + KaleT1.3 // ~That may be true, but home has its own appeal.~
++ @3 + KaleT1.4 // ~It is not the time for such talk, Kale.~
END

IF ~~ KaleT1.1
SAY @4 // ~What brought you to the roads anyway? Boredom? Fame?
++ @5 + KaleT1.5 // ~It was not by choice. Gorion, my father, bid us to leave, but he died soon after.~
++ @6 + KaleT1.6 // ~Threats to my life, I fear. Threats that will pay for what they have taken from me.~ 
++ @8 + KaleT1.9 // ~I was bid to for safety, though I want to make the world a better place.~
++ @3 + KaleT1.4 // ~It is not the time for such talk, Kale.~
END

IF ~~ KaleT1.2
SAY @10 // ~What brought a beauty like yourself to the roads anyway? Boredom? Fame? To seek out the handsome Kale?~
++ @11 + KaleT1.FF // ~Oh yes. I came all the way from Candlekeep just to see the dashing Kale!~
++ @5 + KaleT1.5 // ~It was not by choice. Gorion, my father, bid us to leave, but he died soon after.~
++ @6 + KaleT1.6 // ~Threats to my life, I fear. Threats that will pay for what they have taken from me.~ 
+~Gender(Player1,FEMALE)~+ @7 + KaleT1.F // ~Save the false compliments and flirting, I've no appreciation for it.~
++ @8 + KaleT1.9 // ~I was bid to for safety, though I want to make the world a better place.~
++ @3 + KaleT1.4 // ~It is not the time for such talk, Kale.~
END

IF ~~ KaleT1.3
SAY @13 // ~Aye, I do miss ma's cooking sometimes. Of course, a good inn and a fine lady can satisfy that hole in my heart and stomach real fast!~
IF ~Gender(Player1,MALE)~ + KaleT1.1
IF ~Gender(Player1,FEMALE)~ + KaleT1.2
END

IF ~~ KaleT1.4
SAY @14 // ~Shame, <CHARNAME>, shame! Talk later, then.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT1.5
SAY @15 // ~Damn shame, mate. My condolences. You get the bastard who did it?~
++ @16 + KaleT1.R // ~No, I didn't. They seemed dangerous, and still after me.~
++ @17 + KaleT1.R  // ~Not yet, but I will.~
END

IF ~~ KaleT1.R
SAY @18 // ~You'll have my support against them, friend. They'll have met their match when they meet me. Onwards for now, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT1.6 
SAY @19 // ~Nothing like a bit of thrill to give you a kicker in the legs, eh?~
= @20 // ~With me around though, you won't need to run. I'll scare them off with my prowess, I will.~
++ @21 + KaleT1.R2 // ~Thanks for that, Kale.~
++ @22 + KaleT1.S // ~This isn't a joke, Kale.~
++ @23 + KaleT1.L // ~We've tarried enough, let's keep moving.~
END

IF ~~ KaleT1.R2
SAY @24 // ~Aye, you have my support! Onwards for now, eh?
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT1.S
SAY @25 // ~And am I ever not serious? Well, all right, just some of the time, but only some, I promise!~
= @26 // ~Well, onwards, eh? I'll show you my seriousness when we encounter this menace!~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT1.L
SAY @27 // ~Aye. Onwards, and all of that.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT1.F
SAY @28 // ~All right all right, sheesh. Just wanted to say if you stick around with me, you'll have plenty of fame.~
++ @21 + KaleT1.R2 // ~Thanks for that, Kale.~
++ @22 + KaleT1.S // ~This isn't a joke, Kale.~
++ @23 + KaleT1.L // ~We've tarried enough, let's keep moving.~
END

IF ~~ KaleT1.9
SAY @29 // ~The world isn't going to get any better. Lots of folks have come and gone, but people still have horrible things happen to them. But we can make our own lives better, eh?~
++ @30 + KaleT1.10 // ~That's rather pessimistic of you. Aren't  you this big hero?~
++ @31 + KaleT1.11 // ~I guess you're right.~
++ @32 + KaleT1.12 // ~ We can make a difference.~
END

IF ~~ KaleT1.10
SAY @33 // ~For all that we do, <CHARNAME>, someone else just undoes it. Just seen a lot of good folks go gone. Heroes are really acting for their own image, not other people, cause there's no point. Least that's why I do it.~
++ @31 + KaleT1.11 // ~I guess you're right.~
++ @32 + KaleT1.12 // ~ We can make a difference.~
++ @23 + KaleT1.L // ~We've tarried enough, let's keep moving.~
END

IF ~~KaleT1.11
SAY @34 // ~Eh now, don't get down 'cause of me or anything. We'll make this road fun and all, still!~
IF ~~ + KaleT1.13
END

IF ~~KaleT1.13
SAY @35 // ~Well, beckon us, forward, mate. Adventure ain't waiting.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~KaleT1.12
SAY @36 // ~'Fraid we're going to have to disagree. But maybe you'll prove me wrong as we travel on.~
IF ~~ + KaleT1.13
END

IF ~~KaleT1.FF
SAY @39 // ~And now you've got him right where you want him, up, close, and personal!~
++ @536 + KaleT1.F // ~I was obviously being sarcastic. I'd appreciate it if you stopped.~
++ @537 + KaleT1.NNN // ~Cute, does this always work? I bet not.~
++ @538 + KaleT1.FFF // ~I don't mind that much at all.~
END 

IF ~~ KaleT1.NNN 
SAY @539 // ~Eh...not really. Only when my luck is real good and we're both real drunk. Just trying to be light and have some fun, 'cause well...~
IF ~~ + KaleT1.MUP 
END 

IF ~~ KaleT1.FFF
SAY @40 // ~You get the real breathing Kale to be your dreamy hero. I'll make your life nice and safe, <CHARNAME>. Pity there's not enough of me for all the ladies.
IF ~~ + KaleT1.MUP 
END 

IF ~~ KaleT1.MUP
SAY @41 // ~The world out there is a messed up place that's never getting better. Not enough good people out there to make a difference, always some jerk to counter their efforts.~
++ @30 + KaleT1.10 // ~That's rather pessimistic of you. Aren't  you this big hero?~
++ @31 + KaleT1.11 // ~I guess you're right.~
++ @32 + KaleT1.12 // ~ We can make a difference.~
END

// Second Talk 

IF ~Global("X3KaleTalk","GLOBAL",4)~ KaleT2
SAY @46 // ~Sooo. I ever tell you of my first plunge into this work, <CHARNAME>?~
++ @47 + KaleT2.1 // ~I'd guess bored local wanting to try their hand at heroics?~
++ @48 + KaleT2.2 // ~I don't recall, no.~
++ @49 + KaleT2.2 // ~This will be interesting.~ 
++ @50 + KaleT2.3 // ~Can it wait? We are busy at the moment.~
END

IF ~~ KaleT2.1
SAY @51 // ~Precisely how Brandobaris would have it!~
IF ~~ + KaleT2.2
END

IF ~~ KaleT2.2
SAY @52 // ~Some unfriendly cultists were passing through Gullykin. Scary folks too.
= @53 // ~Someone eh, might have borrowed something precious of theirs, they were mighty livid.~
+~!Race(Player1,HALFLING)~+ @54 + KaleT2.R1 // ~Typically halfling, isn't it?~
++ @55 + KaleT2.R2 // ~I assume they wanted justice?~
++ @56 + KaleT2.R3 // ~What happened next?~
++ @57 + KaleT2.3 // ~This is nice and all, but you'll have to share the rest another time, we should go.~
END

IF ~~ KaleT2.3
SAY @58 // ~Busy? Seemed dull time to me. But if we've got something interesting to get to, lead on mate.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT2.R1
SAY @59 // ~Ain't our fault people are so attached to their belongings, mate. Anyway...~
IF ~~ + KaleT2.R3
END

IF ~~ KaleT2.R2
SAY @60 // ~Justice? Just a bit of tax for travelling through town so unfriendly like, if you ask me. Anyway...~
IF ~~ + KaleT2.R3
END

IF ~~ KaleT2.R3
SAY @61 // ~They right up and snatched the thief out of town. Waited until the dark, when he was by himself. Found the friend he was walking with dead in the grass.~
= @62 // ~Saw his mother tearing up. Moved my heart, it did. Grabbed my father's cloak and asked for the biggest blade in town, and set out to get him back.~
++ @63 + KaleT2.R4 // ~The "Biggest"? This is getting far-fetched already.~ 
++ @64 + KaleT2.R5 // ~Alone? That's rather heroic of you.~
++ @65 + KaleT2.R6 // ~And then?~
++ @57 + KaleT2.3 // ~This is nice and all, but you'll have to share the rest another time, we should go.~
END

IF ~~ KaleT2.R4 
SAY @66 // ~It's all about the intimidation factor, <CHARNAME>. Small guy, big sword? Who wouldn't think twice about that, eh?~
IF ~~ + KaleT2.R6
END

IF ~~ KaleT2.R5 
SAY @67 // ~That's what I thought. Ma though, she called it stupid.~
IF ~~ + KaleT2.R6
END

IF ~~ KaleT2.R6
SAY @68 // ~Found them not but an hour's walk, moving fast as I could. Poor fellow was right and tied, they stopped to gloat how they'd not survive slavery long.~
= @69 // ~Then here I came in, loudest roar I could muster, heart beating like a hummingbird's wing, charging in with this big sword, crying "Halfling death!"
++ @70 + KaleT2.R7 // ~You could use some help with your battle cries.~
++ @71 + KaleT2.R8 // ~How'd you manage to defeat them?~
++ @72 + KaleT2.R8 // ~That must have surprised them.~
++ @57 + KaleT2.3 // ~This is nice and all, but you'll have to share the rest another time, we should go.~
END

IF ~~ KaleT2.R7 
SAY @73 // ~I could use help with my battle cry?~
IF ~!Race(Player1,HALFLING)~ + KaleT2.R71
IF ~Race(Player1,HALFLING)~ + KaleT2.R72
END

IF ~~ KaleT2.R71
SAY @74 // ~It's my trademark mate. Town loves it.~
IF ~~ + KaleT2.R8
END

IF ~~ KaleT2.R72
SAY @75 // ~Ha, there ain't nothing wrong with a good shout of the ferocity of our kind, eh?~
IF ~~ + KaleT2.R8
END

IF ~~KaleT2.R8
SAY @76 // ~Well, the blokes were more talk than walk. Took the first by complete shock, sword even got stuck when it was lodged in them.~
= @77 // ~I didn't care though, started kicking and thrasing at every kneecap and stomach I could see. Was struck a few times myself, but I didn't notice it until after the battle.~
= @78 // ~Was so fearsome they ran off, leaving the fellow with me. Town threw a nice party when I came back. Gullykin wasn't dull for a day.~
++ @79 + KaleT2.E1 // ~A well deserved hero's welcome.~
++ @80 + KaleT2.E2 // ~You did a good thing.~
++ @81 + KaleT2.E3 // ~It sounds a bit much to be true, one against many?~
++ @82 + KaleT2.EN // ~A fine story, Kale. Come, let's resume our journey.~
END 

IF ~~ KaleT2.E1
SAY @83 // ~More than well deserved. The food was great, and his mother *very* thankful. Remember the romp like it was yesterday.~
++ @84 + KaleT2.E2 // ~That's...too much information.~
++ @85 + KaleT2.E2 // ~Now that's how you get rewarded.~
+~Gender(Player1,FEMALE)~+ @540 + KaleT2.E2 // ~How typically male.~
++ @86 + KaleT2.E3 // ~Now I think you're lying.~
++ @87 + KaleT2.EN // ~On that note...let's resume our journey. A fine story.~
END

IF ~~ KaleT2.E2 
SAY @88 // ~Pity the rescue was for nothing...he died a few months later anyway, in a kobold ambush. Just delayed the inevitable, really.~
= @89 // ~Made it stink and all, but that's life, eh?~
++ @90 + KaleT2.N1 // ~It's not for nothing, Kale. You did what you could.~
++ @91 + KaleT2.N2 // ~That's unfortunate. I'm sorry.~
++ @92 + KaleT2.N3 // ~All that risk for nothing. A shame.~
++ @93 + KaleT2.EN // ~We can move forward, at least. Speaking of, we've a journey ahead of us.~
END

IF ~~ KaleT2.E3 
SAY @94 // ~Now, I might have...embellished a tiny bit, but the heart of it is true, I say.~
IF ~~ + KaleT2.E2
END

IF ~~ KaleT2.EN
SAY @95 // ~Aye. Let's, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT2.N1
SAY @96 // ~I can't see the logic in that to agree, mate. Just can't.~
= @97 // ~Not to make things sullen though, it was a happy moment for a moment. But eh, we should strike out for some more glory now, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT2.N2
SAY @98 // ~I am too, <CHARNAME>...I am too.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT2.N3
SAY @99 // ~Aye. A damn bloody shame.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

// Talk 3 
IF ~Global("X3KaleMomTalk","GLOBAL",3)~ KaleT3
SAY @100 // ~Thanks for  you accepting ma's request. Been a while since I've seen my brother Samuel.~
++ @101 + KaleT3.Trouble   // ~Your mother mentioned he hadn't written back in a while. Do you think he is in trouble?~
++ @102 + KaleT3.Okay  // ~No problem.~
++ @103 + KaleT3.First  // ~Just remember my issues come first.~
END 

IF ~~ KaleT3.Trouble 
SAY @104 // ~Samuel is bad with money. Then bad with fixing his own problems, and gets himself in deeper ones.~
IF ~~ + KaleT3.Okay 
END 

IF ~~ KaleT3.Okay 
SAY @105 // ~He should never have left Gullykin. Ma needs someone to watch over her, and if I'm out getting glory, someone's got to stay.~
++ @106 + KaleT3.Bad // ~Do you think it's bad, with no word from him?~
++ @107 + KaleT3.Angry // ~You seem angry at him.~
++ @108 + KaleT3.Brother // ~He's still your brother.~
++ @103 + KaleT3.First  // ~Just remember my issues come first.~
END 

IF ~~ KaleT3.First 
SAY @109 // ~You got it, mate. At your lead, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleMomTalk","GLOBAL",1)~ EXIT
END

IF ~~ KaleT3.Bad 
SAY @110 // ~It could be, <CHARNAME>. 
IF ~~ + KaleT3.FindOut 
END 

IF ~~ KaleT3.Angry 
SAY @111 // ~Aye, I am. His mistakes and neediness have cost others. 
IF ~~ + KaleT3.FindOut 
END 

IF ~~ KaleT3.Brother 
SAY @112 // ~He is my brother. Doesn't mean he gets to slack off.~
IF ~~ + KaleT3.FindOut 
END 

IF ~~ KaleT3.FindOut 
SAY @113 // ~But, I guess we'll find out what exactly is going on with him soon enough. 
IF ~~ DO ~IncrementGlobal("X3KaleMomTalk","GLOBAL",1)~ EXIT
END

// Fourth Talk 

IF ~Global("X3KaleTalk","GLOBAL",6)~ KaleT4 
SAY @114 // ~Soooo.~
++ @115 + KaleT4.Cloak // ~Soooo?~
++ @116 +  KaleT4.Cloak // ~Go on.~
++ @117 +  KaleT4.Cloak // ~Here we go.~
++ @118 +  KaleT4.Cloak // ~Just say something already.~ 
END 

IF ~~ KaleT4.Cloak 
SAY @119 // ~Well, why is your outfit so...plain. You need a dashing cloak to go with it.~
++ @120 + KaleT4.SaysWho // ~Says Who?~ 
++ @121 + KaleT4.NotTrue // ~That is definitely not true.~
++ @122 + KaleT4.Make // ~I can't make cloaks, so I use what I find.~
++ @123 + KaleT4.Fine // ~My outfit is just fine.~ 
++ @124 + KaleT4.Suggestion // ~You have a suggestion?~ 
END 

IF ~~ KaleT4.SaysWho 
SAY @125 // ~Says the greatest hero. Me.~
IF ~~ + KaleT4.Make 
END

IF ~~ KaleT4.NotTrue 
SAY @126 // ~No, mate. That is absolutely true.~
IF ~~ + KaleT4.Make 
END

IF ~~ KaleT4.Make 
SAY @127 // ~Now, unlike most heroes, I can make my own cloak. Designed the one I wear now for myself.~
=@128 // ~Was a bit of a potion mixed with the dyes of a cloak. Very long-lasting. Enchantment hasn't faded even. Must be my talent.~
++ @131 + KaleT4.Learn // ~I wouldn't mind learning, if you want to teach.~
++ @132 + KaleT4.Better // ~I've seen better.~
++ @133 + KaleT4.Fine2 // ~It's a fine cloak. I wouldn't mind one myself.~
++ @134 + KaleT4.Interest // ~I'm not interested in cloaks.~ 
END 

IF ~~ KaleT4.Fine 
SAY @129 // ~Someone is in denial.~
IF ~~ + KaleT4.Make 
END 

IF ~~ KaleT4.Suggestion 
SAY @130 // ~Eh, take up sewing! Not ever taught, I bet?~ 
IF ~~ + KaleT4.Make 
END 

IF ~~ KaleT4.Learn 
SAY @135 // ~I doubt we could get anywhere, sewing is years of practice, mate.~
= @136 // ~Maybe when this is all over, if you're still interested, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT4.Better 
SAY @137 // ~More denial, mate. More denial. You amuse me, <CHARNAME>! 
= @138 // ~Maybe when this is all over, I'll really show you why my cloak work is superior to others, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT4.Fine2 
SAY @139 // ~Thanks, mate. Maybe one day, you'll get your own.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

IF ~~ KaleT4.Interest 
SAY @140 // ~Not interested? Well mate, you'll change your mind, surely.
= @141 // ~Bards prefer more dashing heroes, after all.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1) RealSetGlobalTimer("X3KaleTimer","GLOBAL",3300)~ EXIT
END

// Talk 5 

IF ~Global("X3KaleTalk","GLOBAL",8)~ KaleT5
SAY @156 // ~Soooo. Let me have your attention for a minute.~
++ @157 + KaleT5.Cloak // ~I'm listening, Kale.~
++ @158 +  KaleT5.Wait // ~Can it wait?.~
++ @159 +  KaleT5.Cloak // ~As long as it is one minute.~
END 

IF ~~ KaleT5.Wait 
SAY @160 // ~It can, but why should a good thing wait?~
IF ~~ + KaleT5.Cloak 
END 

IF ~~ KaleT5.Cloak 
SAY @161 // ~I know a guy, who works for a guy, who could help me get materials to fashion you a nice cloak. It'd be more useful than just looks, too.~
= @162 // ~All the famous adventurers have stylish, memorable cloaks. You shouldn't be any different, eh?~
++ @163 + KaleT5.Kind // This is very generous of you Kale.~
++ @164 + KaleT5.Want // I don't have the time to just strut in to a store to see a guy that kind of sounds shady.~
++ @165 + KaleT5.Kind // ~Where is this store?~
++ @166 + KaleT5.Want // ~I don't want this, Kale. I'm not interested.~
END 

IF ~~ KaleT5.Kind 
SAY @167 // ~Southeast of the gate. I stop by sometimes, the guy gives me a good deal on raw products for my work.~
= @168 // ~He's not exactly supposed to be giving them out to me, but we've got a sweet deal between us.~
++ @169 + KaleT5.You // ~We'll make a stop there when time permits it.~
++ @170 + KaleT5.TooMuch // ~I'm not comfortable with this if it's illegal.~
++ @171 + KaleT5.TooMuch // ~This doesn't sound like a good idea when you put it like that.~ 
END 

IF ~~ KaleT5.Want 
SAY @173 // ~Shame, <CHARNAME>. Well...if you change your mind, and we're at the gate, he works for a shop in the southeast district.~
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1)AddJournalEntry(@10031,QUEST)~  EXIT 
END 

IF ~~ KaleT5.You 
SAY @174 // ~Good decision, mate.~
IF ~~ + KaleT5.Done
END 



IF ~~ KaleT5.TooMuch 
SAY @177 // ~Aww, come on, mate. The only one who would get in trouble is the lad, not us! He's doing the hand out.~ 
IF ~~ + KaleT5.Done
END 

IF ~~ KaleT5.Done 
SAY @178 // ~Just remember, store in southeast Baldur's gate whenever we have time.~ 
IF ~~ DO ~IncrementGlobal("X3KaleTalk","GLOBAL",1)AddJournalEntry(@10031,QUEST)~ EXIT 
END 

// Cloak Started Talk. 
IF ~Global("X3KaleCloakStart","GLOBAL",2)~ KaleSC1 
SAY @559 // ~Well, we got what I needed. I should be able to finish in a day.~
IF ~Dead("X3KKEEP")~ + KaleSC2 
IF ~!Dead("X3KKEEP")~ + KaleSC3 
END 

IF ~~ KaleSC2 
SAY @560 // ~It was wrong to kill the guy, though. Just what were you bloody thinking?!~
++ @562 + KaleSC2.1 // ~I'm sorry. I got angry and lost control.~ 
++ @563 + KaleSC2.2 // ~He refused to talk to us. It was the only way to get what we needed.~
++ @564 + KaleSC2.3 // ~Don't question my actions, Kale.~
END 

IF ~~ KaleSC2.1
SAY @565 // ~Sorry won't bring back the dead, mate.~
IF ~~ + KaleSC4 
END  

IF ~~ KaleSC2.2 
SAY @566 // ~Better not to get it at all at that point. Cloaks are nice, but not enough to kill some innocent fellow.~
IF ~~ + KaleSC4 
END 

IF ~~ KaleSC2.3 
SAY @567 // ~Sheesh. Who died and made you king?~
IF ~~ + KaleSC4  
END 

IF ~~ KaleSC4 
SAY @568 // ~I'll just drop this talk, mate. I'll... tell you when I'm done with the cloak.~
IF ~~ DO ~SetGlobal("X3KaleCloakStart","GLOBAL",3)~ 
EXIT 
END 

IF ~~ KaleSC3 
SAY @561 // ~Don't worry, it will look splendid when I'm done.~
++ @569 + KaleSC5 // ~I look forward to it.~
++ @570 + KaleSC5 // ~I do expect the best!~
++ @571 + KaleSC6 // ~I really didn't ask for this.~
END 

IF ~~ KaleSC5
SAY @572 // ~Good. You're going to get nothing but the best!~
IF ~~ DO ~SetGlobal("X3KaleCloakStart","GLOBAL",3)~ 
EXIT 
END 

IF ~~ KaleSC6 
SAY @573 // ~Such a poor sport, <CHARNAME>. You'll change your tune when it's done, I swear it!~
IF ~~ DO ~SetGlobal("X3KaleCloakStart","GLOBAL",3)~ 
EXIT 
END 

// Cloak Completed Talk.
IF ~Global("X3KaleCloak","GLOBAL",1)~ KaleC1
SAY @172 // ~May I present, the fine sewing perfection of Kale? Your cloak is complete.~
++ @175 + KaleC1.1 // ~I'm impressed.~
++ @176 + KaleC1.2 // ~That's it?~
++ @548 + KaleC1.3 // ~Finally.~
END 

IF ~~ KaleC1.1 
SAY @549 // ~Well, I did say I was great at this, heh!~
IF ~~ + KaleC1.3
END 

IF ~~ KaleC1.2 
SAY @551 // ~My finest work, and you say that's it? Well, admittedly it's not as fine as mine, but I put heart in this!~
IF ~~ + KaleC1.3 
END 

IF ~~ KaleC1.3
SAY @550 // ~Consider it thanks for the journey so far. I've never traveled with someone as grand as you. Happy you took me along.~
++ @558 + KaleC1.4 // ~I'm happy I brought you along to.~
++ @552 + KaleC1.4 // ~Thanks Kale. This means a lot.~
++ @553 + KaleC1.5 // ~It's okay, I suppose.~
++ @554 + KaleC1.6 // ~I never wanted a cloak.~
END 

IF ~~ KaleC1.4 
SAY @555 // ~Thanks, mate. Right, let's cut the gushy and get to the mashing, eh?~
IF ~~ DO ~SetGlobal("X3KaleCloak","GLOBAL",2)AddJournalEntry(@10037,QUEST_DONE)GiveItem("X3KCLOG",Player1)~ EXIT 
END 

IF ~~ KaleC1.5
SAY @556 // ~Okay? Damn, you're hard to please, mate. Well, when it saves you in battle, you'll be thanking me.~
IF ~~ DO ~SetGlobal("X3KaleCloak","GLOBAL",2)AddJournalEntry(@10037,QUEST_DONE)GiveItem("X3KCLOG",Player1)~ EXIT 
END 

IF ~~ KaleC1.6 
SAY @557 // ~You'll thank me later, <CHARNAME>, trust me. It will help you out.~
IF ~~ DO ~SetGlobal("X3KaleCloak","GLOBAL",2)AddJournalEntry(@10037,QUEST_DONE)GiveItem("X3KCLOG",Player1)~ EXIT 
END 



// Talk 6 
/* This splits, based off of whether the PC helped Kale's brother or not. */
IF ~Global("X3KaleSixthTalk","GLOBAL",1)~ KaleT.6 
SAY @368 // ~Thanks for the help with my brother there.~
IF ~Global("X3KaleQuestDone","GLOBAL",1)~ + Kale.6DH 
IF ~Global("X3KaleQuestDone","GLOBAL",2)~ + Kale.6NH
END 

IF ~~ Kale.6DH 
SAY @370 // ~Still don't see much point in it. Just going to get in trouble with money again.~
++ @371 + Kale.6DH1 // ~It gives him another chance. He may make use of it.~
++ @372 + Kale.6DHY // ~He's your brother. Family helps family.~ 
++ @373 + Kale.6DHT // ~It's not for you, it's for him.~
END 

IF ~~ Kale.6DHY
SAY @375 // ~That's what Yondalla would say to us, were she speaking now.~
= @379 // ~She ain't say much about someone who constantly needs a hero to bail them out.~
IF ~~ + Kale.6DH1 
END 

IF ~~ Kale.6DHT 
SAY @380 // ~It's our bloody time though, our resources. There are better glorious things we could do, that'd reward our legacies. Bailing someone out of debt ain't one of them.~
IF ~~ + Kale.6DH1 
END 

IF ~~ Kale.6DH1 
SAY @374 // ~And what if it happens again? What do I do then, bail him out all over again?~
++ @376 + Kale.6DH2 // ~Yes. that is what you do.~ 
++ @377 + Kale.6DH2 // ~You decide when it gets there. For now have faith in them.~ 
++ @378 + Kale.6DH3 // ~At that point, maybe not.~ 
END 

IF ~~ Kale.6DH2 
SAY @381 // That just sounds idiotic. I tell you <CHARNAME>, no point in saving someone if it ain't benefiting yourself.~
= @382 // ~What's done is done though. Ain't going to argue it further.~
IF ~~ DO ~IncrementGlobal("X3KaleSixthTalk","GLOBAL",1)~ EXIT
END 

IF ~~ Kale.6DH3 
SAY @383 // ~Just one chance then? Maybe that's all right then.~
= @384 // ~I expect him to waste it but, maybe I'll be proven wrong in the end.~
IF ~~ DO ~IncrementGlobal("X3KaleSixthTalk","GLOBAL",1)~ EXIT
END 

IF ~~ Kale.6NH 
SAY @369 // ~Bloody bastard always wants the easy way out. This will help him learn to take care of himself.~
++ @394 + Kale.6NH1 // ~It should help him realize to be accountable for himself.~ 
++ @395 + Kale.6NHF // ~Family shouldn't take advantage of family.~ 
++ @396 + Kale.6NHS // ~Need a bit of spine to survive.~ 
END 

IF ~~ Kale.6NHF 
SAY @389 // ~Exactly. Abusing Yondalla's good will about aiding one another, that's what I say.~
IF ~~ + Kale.6NH1 
END 

IF ~~ Kale.6NHS 
SAY @397 // ~That's what I say. I didn't become an adventurer because everything was given to me on a platter. 
IF ~~ + Kale.6NH1 
END 

IF ~~ Kale.6NH1
SAY @385 // ~Still, small part does feel a bit guilty. Wondering what happens if he ain't collect enough gold, gets in trouble.~
++ @386 + Kale.6NHW // ~That does make me worry.~
++ @387 + Kale.6NH2 // ~Then he doesn't. Sometimes people shouldn't be spared the consequences.~ 
++ @388 + Kale.6NHY // ~You're the one who didn't want to help him.~ 
END 

IF ~~ Kale.6NHW
SAY @390 // ~Damn, going to have thoughts of regret for a while.~
= @391 // ~What's done is done though. Might as well move on.~ 
IF ~~ DO ~IncrementGlobal("X3KaleSixthTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Kale.6NH2 
SAY @392 // ~Sensible thing to believe, that.~ 
= @393 // ~Thanks for listening, <CHARNAME>. Feel a lot more relieved now.~
IF ~~ DO ~IncrementGlobal("X3KaleSixthTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Kale.6NHY 
SAY @398 // ~Hells, that's true.~
IF ~~ + Kale.6NHW 
END 

IF ~Global("X3KaleFinalTalk","GLOBAL",2) ~ Kale.7
SAY @399 // ~Mate, got to admit, this is the greatest adventurer I've ever gone on.~
= @400 // ~Won't even have to fib parts of it to make it sound exciting.~
++ @401 + Kale.7WW // ~You're welcome, for being able to join me.~
++ @402 + Kale.71 // ~It wouldn't be possible without you, Kale.~
++ @403 + Kale.7F // ~A fibless tale? That would be quite unlike you.~ 
++ @420 + Kale.71 // ~You've not been that useful.~
END 

IF ~~ Kale.7WW 
SAY @404 // ~And I feel welcome!
IF ~~ + Kale.71
END 

IF ~~ Kale.7F 
SAY @405 // ~It would, wouldn't it? First for everything.~
IF ~~ + Kale.71
END 

IF ~~ Kale.71 
SAY @406 // ~Got to be honest mate, but I'm really playing second fiddle to you.~
= @407 // ~In fact, I'm a bit worried the bards won't even remember me.~
++ @408 + Kale.71M // ~It's not the memory that matters, but what we do.~ 
++ @409 + Kale.71K // ~They, forget the great Kale? You do yourself a disservice.~ 
++ @410 + Kale.71K  // ~I don't know that, but I know I will always remember  you.~
++ @421 + Kale.71W // ~They probably won't.~ 
END

IF ~~ Kale.71M 
SAY @411 // ~That may be it for you, but I act the hero for the perks only: Gold, Glory, and girls!~
++ @414 + Kale.7Glory // ~There will be more glory to come.~
++ @415 + Kale.7Gold // ~There will be plenty of gold for everyone when this is over.~
+~GlobalGT("X3KaleAlora1","GLOBAL",3)~+ @416 + Kale.7Alora // ~You have Alora, don't you?~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)Gender(Player1,Female)~+ @417 + Kale.7Girl // ~I don't know about girls, but there's always me.~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)Gender(Player1,Male)~+ @417 + Kale.7Boy // ~I don't know about girls, but there's always me.~
++ @418 + Kale.7End // ~We'll have to disagree then.~ 
END 

IF ~~ Kale.71K 
SAY @412 // ~Damn. That makes my heart swell.~
= @419 // ~I do this for the perks though. Gold, Glory, and girls. Those are the sweet rewards.~
++ @414 + Kale.7Glory // ~There will be more glory to come.~
++ @415 + Kale.7Gold // ~There will be plenty of gold for everyone when this is over.~
+~GlobalGT("X3KaleAlora1","GLOBAL",3)~+ @416 + Kale.7Alora // ~You have Alora, don't you?~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)Gender(Player1,Female)~+ @417 + Kale.7Girl // ~I don't know about girls, but there's always me.~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)Gender(Player1,Male)~+ @417 + Kale.7Boy // ~I don't know about girls, but there's always me.~
++ @418 + Kale.7End // ~We'll have to disagree then.~ 
END 

IF ~~ Kale.7End 
SAY @413 // ~Let's see this journey to the end, eh?~
IF ~~ DO ~IncrementGlobal("X3KaleFinalTalk","GLOBAL",1)~ EXIT
END 

IF ~~ Kale.71W 
SAY @422 // ~You sure know how to crush a heart, mate.~
= @423 // ~I just want a bit of the perks, you know? Gold, glory, and girls. Those are the sweet rewards.~
++ @414 + Kale.7Glory // ~There will be more glory to come.~
++ @415 + Kale.7Gold // ~There will be plenty of gold for everyone when this is over.~
+~GlobalGT("X3KaleAlora1","GLOBAL",3)~+ @416 + Kale.7Alora // ~You have Alora, don't you?~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)Gender(Player1,Female)~+ @417 + Kale.7Girl // ~I don't know about girls, but there's always me.~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)Gender(Player1,Male)~+ @417 + Kale.7Boy // ~I don't know about girls, but there's always me.~
++ @418 + Kale.7End // ~We'll have to disagree then.~ 
END 

IF ~~ Kale.7Glory 
SAY @424 // ~Aye, and I look forward to it!~
IF ~~ + Kale.7End 
END 

IF ~~ Kale.7Gold 
SAY @425 // ~I can't wait to see the big purse. Might be able to afford myself a big burrow in Gullykin.~
IF ~~ + Kale.7End 
END 

IF ~~ Kale.7Alora 
SAY @426 // ~You're right. 1 of 3 ain't so bad!~
IF ~~ + Kale.7End 
END 

IF ~~ Kale.7Girl 
SAY @427 // ~Well, you aren't unattractive, I'll say that much for the moment. I admire all you've done, and who you are. Maybe I'll consider it when this is all over. But for now...~
IF ~~ + Kale.7End 
END 

IF ~~ Kale.7Boy 
SAY @428 // ~I have to admit, there isn't anyone that I admire as much as you. I'll say that much for the moment. Maybe I'll consider it when this is all over. But for now...~
IF ~~ + Kale.7End 
END 



// Quest "Reminder" (Kale's is less of a reminder, as he does not have a requested task when signing on 

IF ~Global("X3KaleReminderTalk","GLOBAL",2)~ KaleR.Quest 
SAY @142 // ~I don't mean to re-direct us back to Gullykin, but if we get a chance, I'd like to stop by and say hi to mother.~
++ @143 + KaleR.Missing // ~Missing home already, Kale? 
++ @144 + KaleR.Hi // ~Sure, that's not a problem.~
++ @145 + KaleR.Forgot // ~Kale, I'm not going out of my way just for a greeting.~ 
END 

IF ~~ KaleR.Missing 
SAY @146  // ~Hey, I'm no mother's boy. Not completely, at least.~
IF ~~ + KaleR.Forgot 
END 

IF ~~ KaleR.Hi 
SAY @147 // ~Thanks, mate.~
IF ~~ + KaleR.Forgot 
END 

IF ~~ KaleR.Forgot 
SAY @148 // ~It's just that I forgot to tell her I was even leaving. Kind of jumped on your wagon and forgot.~
= @149 // ~She's getting older. I should have said something.~
++ @150 + KaleR.Fine // ~It's okay, Kale. We'll head there right away.~
++ @151 + KaleR.Fine // ~That's a bit irresponsible of you Kale. Let's make it right.~ 
++ @152 + KaleR.Live // ~I have things that take priority. 
++ @153 + KaleR.Live // ~Your mother will live.~
END 

IF ~~ KaleR.Fine 
SAY @154 // ~Thanks, <CHARNAME>. I don't have to think about Yondalla glaring at me from up high.~
IF ~~ DO ~IncrementGlobal("X3KaleReminderTalk","GLOBAL",1) AddJournalEntry(@10012,QUEST)~ EXIT
END

IF ~~ KaleR.Live 
SAY @155 // ~I get it, I get it. Well, whenever we have time, eh?~ 
IF ~~ DO ~IncrementGlobal("X3KaleReminderTalk","GLOBAL",1) AddJournalEntry(@10012,QUEST)~ EXIT
END

// GENDER CHANGE, Make sure this is below talks. 

IF ~Global("X3KaleSexChange","GLOBAL",1)~ EGender
SAY @42 //~Wow. I'm a beautiful lady, aren't I?~
= @43 //~You know what? Take your time fixing this. I'm going to have fun as me while it lasts!~
IF ~~ DO ~SetGlobal("X3KaleSexChange","GLOBAL",2)~ EXIT
END


// INTERJECITONS! 

/* These are all for Gullykin, to help show that Kale is familiar with/known in the village. The majority of Kale's interjections is within this village.
Commenting is rather light, these are mostly unimportant talks. */

INTERJECT HALFGU 3 X3KaleHALFGU3
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @452
EXIT 



INTERJECT HALFGU 1 X3KaleHALFGU1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @453
EXIT 

INTERJECT HALFGU 4 X3KaleHALFGU4
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @454
EXIT 

I_C_T HALFFG 4 X3KaleHalfFG4
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @455
END 

I_C_T HALFFG 5 X3KaleHalfFG5
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @456
END 

I_C_T HALFFG 6 X3KaleHalfFG6
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @456
END 

I_C_T HALFFG 7 X3KaleHalfFG7
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @457
END 

I_C_T HALFFG 8 X3KaleHalfFG8
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @458
END 

I_C_T HALFFG 9 X3KaleHalfFG9
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @459
END 

I_C_T HALFFG 10 X3KaleHalfFG10
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @460
END 

I_C_T HALFFG 11 X3KaleHalfFG11
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @461
END 

I_C_T HALFG2 2 X3KaleHalfFG22
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @462
END 

I_C_T HALFG2 1 X3KaleHalfFG21
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @463
END 

I_C_T HALFG2 4 X3KaleHalfFG24
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @463
END 

I_C_T HALFG2 5 X3KaleHalfFG25
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @462
END 

I_C_T HALFG2 6 X3KaleHalfFG26
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @463
END 

I_C_T HALFG3 1 X3KaleHalfFG31
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @464
== HALFG3 @465 // ~I will leave the tale making to you, Kale. The Hearth is fine enough treasure for me.~
END 

I_C_T HALFG3 2 X3KaleHalfFG32 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @466
END 

I_C_T HALFG3 4 X3KaleHalfFG34 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @467
END 

I_C_T HALFG3 5 X3KaleHalfFG35 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @466
END 

I_C_T HALFG4 0 X3KaleHalfFG40 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @468
== HALFG4 @469 
== X3KaleJ @470 
== HALFG4 @471
END 

/* Half G5 is Gob's brother, from Kale's story. He has some special Dialogue responses at the end of some of his remarks.*/

I_C_T HALFG5 1 X3KaleHalfFG51 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @472
== HALFG5 @473 
== X3KaleJ @474 
END 

I_C_T HALFG5 2 X3KaleHalfFG52 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @475
== HALFG5 @476 
== X3KaleJ @477 
END 

I_C_T HALFG5 3 X3KaleHalfG53 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @478
END 

I_C_T HALFG5 4 X3KaleHalfG54
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @478
END 

I_C_T HALFG5 5 X3KaleHalfG55
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @479
== HALFG5 @480 
== X3KaleJ @481 
END 

I_C_T HALFG5 6 X3KaleHalfG56
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @479
== HALFG5 @480 
== X3KaleJ @481 
END 

// Elder 

I_C_T HALFG6 0 X3KaleHalfG60
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @482
== HALFG6 @483
END 

// Furret. We're using I_C_T2 because there is an escape area within this section.

I_C_T HALFTR 2 X3KaleHALFTR1 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @484
== HALFTR @601 //~No pilfering here, kin. Just a pure business transaction with a rare, worthwhile gem.~ 
END 



// Jenkal 
I_C_T2 JENKAL 0 X3KaleJenkal0 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @485
== JENKAL @486
END 

// Advalahar 
I_C_T2 ALVAHE 0 X3KaleAlvahe0 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @487
== JENKAL @488
== X3KaleJ @489
END 

// Gandolar 

I_C_T2 GANDOL 14 X3KaleGANDOL14
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @490
END 

I_C_T2 GANDOL 23 X3KaleGANDOL23
== GANDOL IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @491
== X3KaleJ @492
END 

// Alora 
I_C_T ALORA 0 X3KaleAloraPre1 // Careful here, as we have to name this differently from our party banters.) 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @493
END 

/* The remaining are non Gullykin based.*/
// Festival place: Interjection from one of the gamers. 
I_C_T GAMES3 0 X3KaleGAMES30
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @494
END 

I_C_T BERRUN 8 X3KaleBERRUN8 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @584 // ~Now this is the good stuff. Gold and glory! Let's clear a mine.~
END 

I_C_T MIRIAN 1 X3KaleMirian1 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @585 // ~A good kin bloody died to get this to you. I hope you honor him.~
== MIRIAN @605
END

I_C_T MIRIAN 2 X3KaleMirian2 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @585 // ~A good kin bloody died to get this to you. I hope you honor him.~
== MIRIAN @605
END

I_C_T2 DINK 2 X3KaleDINK2 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @586 // ~Busy with grander things, mate. I'm sure he'll understand.~
END

// Branwen Statue Interjection (Zeke) 
I_C_T Zeke 0 X3KaleZeke0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @495
END 

// Brevlik

I_C_T Brevli 13 X3KaleZeke0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @496
END 

//FCook2 

I_C_T FCOOK2 0 X3KaleFCOOK2 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @592
END 

// Fenten 

I_C_T2 FENTEN 1 X3KaleZeke1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @497
END 

I_C_T2 FENTEN 2 X3KaleZeke2
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @497
END 

// GURKE

I_C_T2 GURKE 1 X3KaleGurke1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @498
END 

// Hurgan Stoneblade 

I_C_T HURGAN 7 X3KaleHurgan7
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @499
END 

// Marl

I_C_T MARL 12 X3KaleMarl12
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @587
END 

// Nadarin

I_C_T Nadari 1 X3KaleNadari1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @500
END 

// Pheirkas 

I_C_T Pheirk 1 X3KalePheirk1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @501
END 

// Quinn 

I_C_T Quinn 1 X3KaleQuinn1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @502
END

// Raemon 
I_C_T Raemon 0 X3KaleRaemon0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @590
END

// Raiken 
I_C_T Raiken 15 X3KaleRaiken15
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @588
END

// Sarhedra 

I_C_T Sarhed 2 X3KaleSarhed2
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @503
END

I_C_T2 Sarhed 4 X3KaleSarhed4
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @504
END

//Slave6
I_C_T Slave6 0 X3KaleSlave60
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @591
END

/*Tazok...Commenting this out JUST in case the line was added by a mod and somehow never removed? (I really don't think so though.)
I_C_T2 Tazok 38 X3KaleTazok38
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @589 // ~Uh, Kivan, <CHARNAME>? Prepare to get swarmed by these bloody blokes!~
END*/

// Unshey 

I_C_T2 UNSHEY 1 X3KaleUnshey1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @505
END


// Gellana 

I_C_T2 Gellan 3 X3KaleGellan3
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @506
END

// Landrin

I_C_T Landri 0 X3KaleLandri0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @507
END

I_C_T Landri 1 X3KaleLandri1
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @507
END

I_C_T Landri 2 X3KaleLandri2
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @507
END

// Mad Arcand 

I_C_T ARCAND 2 X3KaleArcand0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @508
END

// Mutamin 

I_C_T MUTAMI 0 X3KaleMutami0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @509
END

// Neb 

I_C_T NEB 0 X3KaleNeb0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @510
END

I_C_T NEB 2 X3KaleNeb2
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @511
END

// Tellan 

I_C_T Tellan 6 X3KaleTellan6
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @512
== Tellan @602
END 

// Yeslick 
I_C_T Yeslic 1 X3KaleYeslic1 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @593
END

//Scar 
I_C_T Scar 2 X3KaleScar2 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @594
END

// Rieltas 
I_C_T Rielta 5 X3KaleRielta5
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @595
END

//Sugar 
I_C_T Sugar 0 X3KaleSugar0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @596
END

//KRYSTI 
I_C_T Krysti 0 X3KaleKrysti0
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @597
END

//Duke Belt 
I_C_T Belt 11 X3KaleBelt11
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @598
END

//Duke Liia
I_C_T Liia 9 X3KaleLiia9
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @599
END

//Rahvin 
I_C_T Rahvin 0 X3KaleRahvin 
== X3KaleJ IF ~InParty("X3Kale") InMyArea("X3Kale") !StateCheck("X3Kale",CD_STATE_NOTVALID)~ THEN @600
END

APPEND X3KaleJ 

// Area Comments: 

// Durlag's Tower
IF ~Global("X3KaleTower","GLOBAL",1)~ KaleExcited
SAY @513 // ~Mate, this is a real adventure. Creepy looming tower, danger, thrill. The tales we will be getting from this!~
++ @514 + KaleTowerExcited // ~I see you're excited.~
++ @515 + KaleTowerSerious // ~Stay serious Kale. We need to be careful here.~
++ @516 + KaleTowerKeepUp // ~I hope you can keep up with me. I'd hate to do all the work.~ 
END 

IF ~~ KaleTowerExcited 
SAY @517 // ~Damn bloody right! This will earn us an epic for an ages. Or at least me, heh! Gold, glory, and girls, here I come!~
IF ~~ DO ~SetGlobal("X3KaleTower","GLOBAL",2)~ EXIT  
END 

IF ~~ KaleTowerSerious 
SAY @518 // ~Come on, mate. This is my serious face. My seriously taking in the moment before grandeur! Be ready, for I will hold nothing back,tower inhabitants!~
IF ~~ DO ~SetGlobal("X3KaleTower","GLOBAL",2)~ EXIT  
END 

IF ~~ KaleTowerKeepUp 
SAY @519 // ~Challenging me? Let's see who gets the most kills, shall we?~
IF ~~ DO ~SetGlobal("X3KaleTower","GLOBAL",2)~ EXIT  
END 

// Werecaves.
IF ~Global("X3KaleCaverns","GLOBAL",1)~ KaleRun
SAY @520 // ~Let's get the bloody hells off this mad island, let's find the exit, quick!~ 
IF ~~ DO ~SetGlobal("X3KaleCaverns","GLOBAL",2)~ EXIT 
END 
// Candlekeep 
IF ~Global("X3KaleKeep","GLOBAL",1)~ KaleKeep 
SAY @521 // ~Child home, eh? Looks more boring than Gullykin. That ain't an easy feat.~
++ @522 + KaleKeepHome // ~It's home, all the same to me. It's wonderful to see it once more.~
++ @523 + KaleKeepBoring // ~It was quite dull and boring. Now I see how restricted I was, being free for so long.~
++ @524 + KaleKeepGo // ~We're here for a purpose. We should get to it.~
END 

IF ~~ KaleKeepHome 
SAY @525 // ~Suppose I understand where you're coming from, mate.~
IF ~~ + KaleKeepGo 
END 

IF ~~ KaleKeepBoring 
SAY @526 // ~The road will do that to you! Why go back to the same ol' when there's so much more out in the world?~
IF ~~ + KaleKeepGo 
END 

IF ~~ KaleKeepGo 
SAY @527 // ~All right, then. Work to do and all that.~ 
IF ~~ DO ~SetGlobal("X3KaleKeep","GLOBAL",2)~ EXIT 
END 

// Firewine Ruins Interjection 
IF ~Global("X3KaleFire","GLOBAL",1)~ KaleFire
SAY @528 // ~Not a pretty place, this is. Bit of a superstition about this place from the village, but I ain't scared.~
++ @529 + KaleFireShake // ~Really? Your blade seems to be shaking, heroic Kale.~ 
++ @530 + KaleFireGlad // ~I'm glad. We'll need courage here.~
++ @531 + KaleFireQuiet // ~Shh. We need quiet here.~ 
END 

IF ~~ KaleFireShake 
SAY @532 // ~Pfft, I'm not scared! Heck, put me in the front, I'll show you. Eh, maybe one behind the front. Just being smart about this.~
IF ~~ DO ~SetGlobal("X3KaleFire","GLOBAL",2)~ EXIT 
END 

IF ~~ KaleFireGlad 
SAY @533 // ~Thanks, mate. Just be careful where you make us step. Place is bound to have trouble when we get into the depths of it.~
IF ~~ DO ~SetGlobal("X3KaleKeep","GLOBAL",2)~ EXIT 
END 

IF ~~ KaleFireQuiet 
SAY @534 // ~Who the hells will hear us? The dead? Eh, you might have a point, I suppose. Bloody hells. Shutting up now.~
IF ~~ DO ~SetGlobal("X3KaleKeep","GLOBAL",2)~ EXIT 
END 

// Firewine Dungeon Interjection 
IF ~Global("X3KaleRuins","GLOBAL",1)~ KaleRuins
SAY @535 // ~Bound to be treasure here. Gold, Glory, and girls. Let's get plundering!~
IF ~~ DO ~SetGlobal("X3KaleRuins","GLOBAL",2)~ EXIT 
END 


// Player Initiated Dialogue 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Kale.PID 
 SAY  @331 // ~Yeah? You want something, I bet.~  [KaleCom1] Greeting needs a number 
 + ~HPPercentGT(Myself,74)RandomNum(5,1)~ + @225 + Kale.PHowAreYou1 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(5,2)~ + @225 + Kale.PHowAreYou2 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(5,3)~ + @225 + Kale.PHowAreYou3 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,1)~+ @225 + Kale.PHowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ @225 + Kale.PHowAreYouHurt // ~How are you doing?~ //(Under 50%)
 +~HPPercentGT(Myself,74)RandomNum(5,4)~+ @225 + Kale.PHowAreYou4 // ~How are you doing?~
 +~HPPercentGT(Myself,74)RandomNum(5,5)~+ @225 + Kale.PHowAreYou5 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,2)~+ @225 + Kale.PHowAreYouInjured2  // ~How are you doing?~
 ++ @336 + Kale.PTalk // ~Let's stop and chat for a bit.~ 
 ++ @603 + FixString
 ++ @193 EXIT // ~I need nothing at the moment.~ 
 END 

IF ~~ Kale.PHowAreYou1
SAY @226 // ~Not bad mate, not bad at all!~ 
IF ~~ EXIT  
END 

IF ~~ Kale.PHowAreYou2
SAY @227 // ~Mite hungry here. Bit odd not to have my usual several meals a day from good old ma.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou3
SAY @228 // ~Perfect, Mate. Just perfect.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouInjured
SAY @229 // ~Took a hit earlier, but I'll shrug it off. Just give me a few hours and I'll be at a hundred percent.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouHurt
SAY @230 // ~I could use a hand. Hurting a bit more than I can bear over here.~ 
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou4
SAY @337 // ~Fine here. Just thinking of good old ma. Hope she's doing all right.~
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYou5
SAY @338 // ~Wonderful. Imagining the chorus for my personal ballad a bard would compose. Sounds so lovely in my head.~
IF ~~ EXIT  
END

IF ~~ Kale.PHowAreYouInjured2
SAY @339 // ~Don't worry mate, these cuts will heal in no time.~
IF ~~ EXIT  
END


  
IF ~~ Kale.PTalk 
SAY  @179 // ~Yeah? What you want to talk about, mate?~ 
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
+~Global("Chapter","GLOBAL",1)~+ @180 + Kale.PC1Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",2)~+ @180 + Kale.PC2Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",3)~+ @180 + Kale.PC3Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",4)~+ @180 + Kale.PC4Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",5)~+ @180 + Kale.PC5Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",6)~+ @180 + Kale.PC6Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",7)~+ @180 + Kale.PC7Advice // ~What do you think I should do now?~
// Companion Thoughts 
+ ~NumInPartyAliveGT(2)~ + @181 + Kale.PCompanionThoughts // ~What do you think of our companions?~ 
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,5)~ + @182 + Em.Me1 // ~What do you think of me?~
+ ~NumInPartyAliveLT(3)ReputationLT(Player1,6)~ + @182 + Em.Me2 // ~What do you think of me?~
// Dialogue From Talk Expansions. These fire once. 
+~GlobalGT("X3KaleTalk","GLOBAL",2)Global("X3KalePEstateTopic","GLOBAL",0)~+ @183 DO ~SetGlobal("X3KalePEstateTopic","GLOBAL",1)~  + Kale.PT1Large  // ~So, why do you use such large weapons?~
+~GlobalGT("X3KaleTalk","GLOBAL",4)Global("X3KalePFeudTopic","GLOBAL",0)~+ @184 DO ~SetGlobal("X3KalePFeudTopic","GLOBAL",1)~  + Kale.PT2Story // ~You said that halfling you saved later died in a kobold attack, but not much else.~
+~GlobalGT("X3KaleMomTalk","GLOBAL",3)Global("X3KalePFatherTopic","GLOBAL",1)~+ @185 DO ~SetGlobal("X3KalePFatherTopic","GLOBAL",1)~  + Kale.PT3Pa // ~I've met your ma, but not your father.~
+~GlobalGT("X3KaleTalk","GLOBAL",6)Global("X3KalePBrotherTopic","GLOBAL",0)~+ @186 DO ~SetGlobal("X3KalePBrotherTopic","GLOBAL",1)~  + Kale.PT4Sewing // ~So. You like sewing.~
+~GlobalGT("X3KaleTalk","GLOBAL",8)Global("X3KaleCloak","GLOBAL",2)Global("X3KaleCloakTopic","GLOBAL",0)~+ @187 DO ~SetGlobal("X3KaleCloakTopic","GLOBAL",1)~  + Kale.PT5Gift // ~So is there anything special about this cloak you gave me?~
+~GlobalGT("X3KaleSixthTalk","GLOBAL",2)Global("X3KalePBrotherTopic2","GLOBAL",0)~+ @188 DO ~ SetGlobal("X3KalePBrotherTopic2","GLOBAL",1)~ + Kale.PT6Brother // ~How do you think your brother is doing?~
+~GlobalGT("X3KaleFinalTalk","GLOBAL",1)Global("X3KalePStayTopic","GLOBAL",0)~+ @189 DO ~SetGlobal("X3KalePStayTopic","GLOBAL",0)~ + Kale.PT7Stay // ~When this is over, why not stick around with me for a while?~
+~Global("X3KalePGullyTopic","GLOBAL",0)~+ @190 DO ~SetGlobal("X3KaleGullyTopic","GLOBAL",1)~ + Kale.PGullykin // ~Can you tell me more about Gullykin?~
+~RandomNum(3,1)~+ @191 + Kale.PTips1 // ~Any tips on adventuring, experienced one?~
+~RandomNum(3,2)~+ @191 + Kale.PTips2
+~RandomNum(3,3)~+ @191 + Kale.PTips3
+~GlobalGT("X3KaleAlora1","GLOBAL",3)Global("X3KaleAloraTopic","GLOBAL",0)~+ @192 DO ~SetGlobal("X3KaleAloraTopic","GLOBAL",1)~ + Kale.PAlora // ~I've noticed you and Alora have gotten close.~
+~GlobalGT("X3KaleTalk","GLOBAL",10)Global("X3KaleLoversTopic","GLOBAL",0)~+ @437 DO ~SetGlobal("X3KaleLoversTopic","GLOBAL",1)~ + Kale.PLovers // ~Have you had any non-halfling lovers?~
 ++ @193 EXIT // ~I need nothing at the moment.~ 
END 

IF ~~ Kale.PC1Advice 
SAY @340 // ~I say wander the countryside, see what we can discover. A whole world awaits for us out there.~
IF ~~ EXIT 
END 

IF ~~ Kale.PC2Advice 
SAY @341 // ~Suppose we should check out the mines, save this town from collapse, and be rewarded for it. Glory and gold, double the win.~
IF ~~ EXIT 
END 

IF ~~ Kale.PC3Advice 
SAY @342 // ~I think it's time to show these brigands who is really in charge around here, eh?~
IF ~~ EXIT 
END 

IF ~~ Kale.PC4Advice 
SAY @343 // ~Suppose we should follow our clues. Cloakwood. That place isn't haunted, is it?~
IF ~~ EXIT 
END 

IF ~~ Kale.PC5Advice 
SAY @344 // ~We got a whole city to explore now. No rush on our business, let's have fun with this place.~
IF ~~ EXIT 
END 

IF ~~ Kale.PC6Advice 
SAY @345 // ~Candlekeep, eh? And I thought Gullykin was boring. Let's just do what we need to get done.~
IF ~~ EXIT 
END 

IF ~~ Kale.PC7Advice 
SAY @346 // ~Easy, mate. We take down this Iron Throne and take all of the glory that comes with it. This is our moment!~
IF ~~ EXIT 
END 

IF ~~ Kale.PCompanionThoughts 
SAY @367 // ~Which one, now?~ 
// BG1
+~InParty("Ajantis")~+ @260 + Em.Ajantis
+~InParty("Alora")~+ @261 + Em.Alora
+~InParty("Branwen")~+ @262 + Em.Branwen
+~InParty("Coran")~+ @263 + Em.Coran 
+~InParty("Dynaheir")~+ @264 + Em.Dynaheir
+~InParty("Edwin")~+ @265 + Em.Edwin
+~InParty("Eldoth")~+ @266 + Em.Eldoth 
+~InParty("Faldorn")~+ @267 + Em.Faldorn 
+~InParty("Garrick")~+ @268 + Em.Garrick 
+~InParty("Imoen")~+ @269 + Em.Imoen 
+~InParty("Jaheira")~+ @270 + Em.Jaheira 
+~InParty("Kagain")~+ @271 + Em.Kagain
+~InParty("Khalid")~+ @272 + Em.Khalid 
+~InParty("Kivan")~+ @273 + Em.Kivan 
+~InParty("Minsc")~+ @274 + Em.Minsc 
+~InParty("Montaron")~+ @275 + Em.Montaron 
+~InParty("Quayle")~+ @276 + Em.Quayle 
+~InParty("Safana")~+ @277 + Em.Safana 
+~InParty("Sharteel")~+ @278 + Em.Sharteel
+~InParty("Skie")~+ @279 + Em.Skie 
+~InParty("Tiax")~+ @280 + Em.Tiax 
+~InParty("Viconia")~+ @281 + Em.Viconia 
+~InParty("Xan")~+ @282 + Em.Xan 
+~InParty("Xzar")~+ @283 + Em.Xzar 
+~InParty("Yeslick")~+ @284 + Em.Yeslick     
// EE 
+~InParty("Neera")~+ @285 + Em.Neera 
+~InParty("Rasaad")~+ @286 + Em.Rasaad 
+~InParty("Dorn")~+ @287 + Em.Dorn 
+~InParty("Baeloth")~+ @288 + Em.Baeloth 
// CrossMod Choices 
+~InParty("X3Vien")~+ @289 + Em.Vienxay 
+~InParty("X3mily")~+ @290 + Em.Emily 
+~InParty("c0aura")~+ @291 + Em.Aura 
+~InParty("X3Rec")~+ ~Recorder.~ + Em.Recorder
+~InParty("X3Helga")~+ ~Recorder.~ + Em.Helga
+~InParty("C0Sirene")~+ @292 + Em.Sirene1 
+ ~InParty("L#1DVER")~ + @293 + Em.Verrsza
+~InParty("#Ishy")GlobalLT("IshyRomanceActive","GLOBAL",2)~+ @544 + Em.Ishy 
+~InParty("#Ishy")Global("IshyRomanceActive","GLOBAL",2)~+ @544 + Em.Ishy2 
// Myself 
/* There are 4 versions of this:
High Reputation (13), High Approval.
Low Reputation (8), Low Approval. 
Low Reputation (8), High Approval. 
Low Approval, but Above 8 Reputation (Standard)
For now, just script high and low reputation*/
+~ReputationGT(Player1,12)~+ @294 + Em.Me1 
+~ReputationLT(Player1,13)~+ @294 + Em.Me2
++ ~Nevermind~ EXIT  
END 

IF ~~ Em.Ajantis 
SAY @295 // ~Very serious type, I'll say. But man, are the serious fun to tease.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Alora
SAY @296 // ~She's an angel. Like the Scamp sent her from the Green Fields.~
IF ~~ EXIT 
END 

IF ~~ Em.Branwen 
SAY @297 // ~Not a bad woman, mate. Good with the blade, good on the eyes!~
IF ~~ EXIT 
END 

IF ~~ Em.Coran 
SAY @298 // ~Typically elf, great archer. Suppose someone should watch my heroics from the back of the group for the record keeping.~
IF ~~ EXIT 
END 

IF ~~ Em.Dynaheir 
SAY @299 // ~Of the pair, got to say I prefer Minsc over her, but she ain't a bad sort either.~
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @300 // ~Thayan, superior arrogant wizard? Not quite my cup of tea.~
IF ~~ EXIT 
END 

IF ~~ Em.Eldoth 
SAY @301 // ~You'd think for a bard he'd sing more about me. Otherwise well, not too fond of the fellow, really.~
IF ~~ EXIT 
END 

IF ~~ Em.Faldorn 
SAY @302 // ~We get along fine. Rule's simple with her: Don't mess with her nature.~
IF ~~ EXIT 
END 

IF ~~ Em.Garrick 
SAY @303 // ~Wish he'd hurry up already with my epic ballad.~
IF ~~ EXIT 
END 

IF ~~ Em.Imoen 
SAY @304 // ~She's a smart one. And cute, I got to admit.~
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @305 // ~Reminds me of ma when I was younger, not yet ready to let me out in the world.~
IF ~~ EXIT 
END 

IF ~~ Em.Kagain 
SAY @306 // ~He's a bit of fun, if you can get past the usual dwarf surliness and his weird greed.~
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY @307 // ~I like the fellow. The perfect second to me, the hero's henchman he is.~
IF ~~ EXIT 
END 

IF ~~ Em.Kivan
SAY @308 // ~I don't see much point in his desire for revenge. But he's a good ally, all the same.~
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY @309 // ~Minsc! My pal! My friend. Don't worry, I'll be the brains for him.~
IF ~~ EXIT 
END 

IF ~~ Em.Montaron 
SAY @310 // ~He's not the usual for our race. Just going to say that before you set expectations of us.~   
IF ~~ EXIT 
END 

IF ~~ Em.Quayle 
SAY @311 // ~Suppose we could use a mega brain, though he's annoying. Brawn is far more effective for our needs, eh?~
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY @312 // ~I can say for sure her hindquarters are sure something, given my height makes me see it all day. What, were you looking for something less shallow? Suppose she's a good rogue, but I've seen better.~
IF ~~ EXIT 
END 

IF ~~ Em.Sharteel 
SAY @313 // ~I'm extremely concerned for my well being around her. You mind taking on less wacky people with us?~
IF ~~ EXIT 
END 

IF ~~ Em.Skie 
SAY @314 // ~This lass has everything she could want in the world. She should go back home if you ask me. Leave adventuring to the masters.~
IF ~~ EXIT 
END 

IF ~~ Em.Tiax 
SAY @315 // ~<CHARNAME>? You mind asking me if I'm okay traveling with a mad man, before traveling with a mad man from now on? Thanks.~
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @316 // ~I just don't get it. Why is she up in the sun again? Hasn't hurt us, but it makes me wonder.~
IF ~~ EXIT 
END 

IF ~~ Em.Xan 
SAY @317 // ~The man is my style. Understands how the world really works around here.~
IF ~~ EXIT 
END 

IF ~~ Em.Xzar 
SAY @318 // ~Xzar, necromancer. Kale, Hero. Do you think they mix? They don't, mate.~
IF ~~ EXIT 
END 

IF ~~ Em.Yeslick 
SAY @319 // ~Poor fellow. Glad he's free. He's nice, for a dwarf.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @320 // ~I used to like unpredictable woman. After seeing wild magic, I'm now very scared of unpredictable woman.~
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @321 // ~The strength of half-orcs is sure a real thing. A fine warrior, if a dark warrior, mate.~
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @322 // ~The things he does with his fist is amazing. I can do it too, though. Just watch me later.~
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @323 // ~Mate, drow don't exactly add to my legendary hero status. Not fond of your choice of company here.~
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY @324 // ~How the nine hells is she still alive with that attitude? If that Evermeet is full of elves like that, I'd be terrified.~
IF ~~ EXIT 
END 

IF ~~ Em.Emily   
SAY @325 // ~A nice soul, I suppose. A bit too idealistic though. Careful of her ideas.~
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @326 // ~She's a pretty cute gnome, I got to say. Not the usual wacky ones you come across.~
IF ~~ EXIT 
END 

IF ~~ Em.Sirene1 
SAY @327 // ~Suprised a tiefling is a paladin. But I'd rather have one as an ally than an enemy.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza 
SAY @328 // ~I've got my reservations about that Rakasha. But as long as he isn't against us, suppose what's the harm?~
IF ~~ EXIT 
END 

IF ~~ Em.Helga
SAY @606
IF ~~ EXIT 
END 

IF ~~ Em.Recorder
SAY @607
IF ~~ EXIT 
END 

IF ~~ Em.Ishy 
SAY @546
IF ~~ EXIT 
END 

IF ~~ Em.Ishy2 
SAY @547
IF ~~ EXIT 
END 
 
IF ~~ Em.Me1 
SAY @329 // ~You're not so bad, mate. A worthy fellow hero, I'd say.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @330 // ~To be honest mate, a bit troubled with some of your actions. Hoping you turn things around, else I'll have to strike out on my own.~ 
IF ~~ EXIT 
END 

IF ~~ Kale.PT1Large
SAY @215  // ~Adds to the mighty factor, don't you think?~ 
= @216 // ~I'll be honest, they sure are heavy, grip isn't easy, and it took a lot more time than it would have with a smaller sword.~ 
= @217 // ~But think of the images our enemies see. The intimidation factor shouldn't be underestimated, mate.~
++ @218 + Kale.PT1Scary  // ~It does look quite scary, I admit.~
++ @219 + Kale.PT1Silly // ~You look silly, really.~
++ @220 + Kale.PT1Insult // ~It seems like you're compensating to me.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT1Scary
SAY @221 // ~That mate, is the goal. Fourty pounds of shortness ready to crash you down to the earth with a giant blade. That's the life.~
IF ~~ + Kale.PT1Else 
END 

IF ~~ Kale.PT1Else 
SAY @222 // ~But, if you want to give me something else to wield, I'm all game for that too. You're the boss, mate.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT1Silly 
SAY @223 // ~Silly? I ought to ask the people we meet during our travels. No way your opinion is the majority.~
IF ~~ + Kale.PT1Else
END 

IF ~~ Kale.PT1Insult 
SAY @224 // ~Compensating?!. Got to hit where it hurts, don't you?~
IF ~~ + Kale.PT1Else
END 

IF ~~ Kale.PT2Story
SAY @231 // ~Just mentioned kobolds, did I? Well...~
= @232 // ~He just wandered too far south one day of Gullykin. Gobs, the thief you're asking about was always a curious fellow.~
= @233 // ~Sneaked up too close when trying to rob a kobold and got shot. I "comforted" his mother though, heh, if that cheers you up.~
+~CheckStatGT(Player1,12,WIS)~+ @234 + Kale.PT2Lying // ~I don't think you're being completely honest. You said he was ambushed earlier, not trying to rob them.~
++ @235 + PT2Grief // ~So you took advantage of her grief? That's a bit wrong.~
++ @236 + PT2Thief // ~How did you learn about that detail?~
++ @237 + PT2Stop // ~Why didn't the village guards stop him from wandering so far?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END

IF ~~ Kale.PT2Lying
SAY @238 // ~Well uh...damn.~ 
= @239 // ~So I told a small lie. Look, the uninteresting true end to it? He had a deep fall off a cliff on accident while hanging with some other blokes. The memory haunted everyone for days. The romp was true, though!~
IF ~~ + Kale.PT2Lie 
END 

IF ~~ PT2Thief 
SAY @241 // ~Saw one of their coveted gems they keep around these parts on him, and more gold than he usually had when the body was found.~
= @242 // ~Poor fellow. Poor mother, too.~
+~CheckStatGT(Player1,12,WIS)~+ @234 + Kale.PT2Lying // ~I don't think you're being completely honest. You said he was ambushed earlier, not trying to rob them.~
++ @235 + PT2Grief // ~So you took advantage of her grief? That's a bit wrong.~
++ @237 + PT2Stop // ~Why didn't the village guards stop him from wandering so far?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT2Stop
SAY @243 // ~We're halflings, mate. We wander. We get curious. Hardly a sin for a guard to prevent, eh?~
= @244 // ~'Sides, Kobolds haven't always been active around the parts. Shame in the end. No mother wants to lose her child to such lizards.~
+~CheckStatGT(Player1,12,WIS)~+ @234 + Kale.PT2Lying // ~I don't think you're being completely honest. You said he was ambushed earlier, not trying to rob them.~
++ @235 + PT2Grief // ~So you took advantage of her grief? That's a bit wrong.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT2Grief
SAY @245 // ~What? What's wrong with that? It was mutual enjoyment, I'll say.~
IF ~~ +Kale.PT2Lie
END

IF ~~ Kale.PT2Lie
SAY @240 // ~Eh, I might have been taking advantage of her emotion, but...she left soon after that anyway. Don't blame her after what happened.~
+~CheckStatGT(Player1,12,WIS)~+ @246 + PT2Honest // ~Why not just be honest about your retelling?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT2Honest 
SAY @248 // ~Sometimes, a bit of fantasy makes the telling easier, mate. You don't have to understand, just how I do it.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT2FFirst 
SAY @249 // ~Yeah. Well! Don't got anything more to tell about that, I'm afraid.~ 
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT3Pa
SAY @250 // ~He left some years ago. Boredom, wandering feet, new halfwomen to meet. Classic stuff.~
++ @251 + KalePT3PaHand // ~I'm sorry about that.~
++ @252 + KalePT3PaHand // ~He seems similar to you.~
++ @253 + KalePT3PaHand // ~Has it been difficult without him?~ 
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ KalePT3PaHand  
SAY @254 // ~Well, do you know much about halfling handfastings, <CHARNAME>?~
= @255 // ~It's not as bad if you understand how marriage works for our people. We've got two types, true and just handfasting.~
IF ~~ + KalePT3Hand 
END  

IF ~~ KalePT3Hand  
SAY @256 // ~In True Marriage, you're bound for life, bound by oath to Yondalla. With handfasting, it's just until love lasts. And we're curious, love doesn't always last, you know? So most don't truly marry.~
= @257 // ~So I'm not mad at pa, I'm glad he's moving on. No one should stay somewhere they aren't happy, and we've been just fine without him.~
+~CheckStatGT(Player1,12,WIS)~+ @258 + KalePT3Past // ~Yet it still seems to bother  you, from what I can see.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ KalePT3Past 
SAY @259 // ~Nothing gets past you, does it? Suppose I wish he stayed. But what's done is done. Care to talk about something else?
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT4Sewing
SAY @347 // ~You making a joke about it? Your mother didn't teach you anything like that? Useful for a hero to be able to patch up holes, you know.~
++ @348 + Kale.PT4Mom // ~I don't remember who she was.~
++ @349 + Kale.PT4Gentle// ~It's gentle work. Not what I would expect of a strong halfling.~
++ @350 + Kale.PTJoke // ~It is a bit of a joke, the strong tailor of cloaks.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT4Mom 
SAY @351 // ~Damn. Odd, the things the gods decide for us. Who you're born to, who lives, who dies, what you learn, your homeland..~
= @352 // ~If I think about it too much, almost makes me want to go home.~
++ @353 + Kale.PT4Forge // ~We forge our own destiny, Kale. We are not bound We can decide those things in our lives.~
++ @354 + Kale.PT4Mean // ~I know what you mean.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT4Gentle 
SAY @355 // ~Well, suppose every man has a gentle side, eh?~
++ @350 + Kale.PTJoke // ~It is a bit of a joke, the strong tailor of cloaks.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PTJoke 
SAY @356 // ~Hey now, I've no control of what my mother teaches me when I'm young. If anything, that's the people up there.~
IF ~~ + Kale.PT4Mom 
END 

IF ~~ Kale.PT4Forge 
SAY @357 // ~I look at you, <CHARNAME>, and I think that's true for you. The rest of us? I'm not so sure.~ 
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT4Mean 
SAY @358 // ~Do you? Well, maybe we've all had choices made for us we don't like, then.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT5Gift
SAY @206 // ~Something special about it? You talking about magic enchantments?~
= @207 // ~Not exactly an enchanter, but a good material and perfect work will sure enhance your confidence.
= @208 // ~I will say though I used material that is light and might even distract your opponent's aim with how it whirls about you. Practical and pretty!~
++ @209 + Kale.PT5GiftR1 // ~I was hoping for something more.~
++ @210 + Kale.PT5GiftR2 // ~I appreciate the time you put into this.~
++ @211 + Kale.PT5GiftR3 // ~It is practical, but I've seen prettier.~ 
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 


IF ~~ Kale.PT5GiftR1
SAY @212 // ~Something more? Damn, you're a picky one. Well, it's the only one you getting, so more ain't happening.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT5GiftR2
SAY @213 // ~'Course. A fine gift for a fine friend, I say mate.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT5GiftR3
SAY @214 // ~Prettier? Hey, not easy to combine the two. Not as talented as those fancy silkweavers from the rich cities. Not that I'll concede to them so quickly, maybe my next will be better.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Kale.PT6Brother
SAY @429 // ~Suppose that's a good question, there.~ 
IF ~Global("X3KaleQuestDone","GLOBAL",2)~ + Kale.PT6Brother1
IF ~Global("X3KaleQuestDone","GLOBAL",1)~ + Kale.PT6Brother2 
END 

IF ~~ Kale.PT6Brother1 
SAY @430 // ~He better not be wasting our aid. Would be a mighty shame of him if he did, more proof saving lives is really not worthwhile except for your own glory.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT6Brother2 
SAY @431 // ~Probably working his back off. Serves him right, wasting gold away like he did.~ 
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT7Stay 
SAY @432 // ~You expecting more adventures when this is over?~
IF ~GlobalGT("X3KaleAlora1","GLOBAL",3)~ + Kale.PT7Alora 
IF ~GlobalLT("X3KaleAlora1","GLOBAL",4)~ + Kale.PT7Normal 
END 

IF ~~ Kale.PT7Alora 
SAY @433 // ~Truth be told, I'd love to, really. Hopefully Alora does, too. I don't want to return to boring ol' Gullykin right now.~
= @434 // ~I'm sure ma will understand.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PT7Normal 
SAY @435 // ~Would love it, really. Gullykin is a boring old stew to me these days.~
= @436 // ~But let's finish our current one first, eh?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PLovers 
SAY @437 // ~I would never decline a romp from any sort of gal, can't help my charm you know, but ma would be livid if I entertained a long-term relationship with a different kind.~
= @438 // ~She's quite devout, and most families are very serious about children.~
++ @439 + Kale.P7Half // ~So, no then?~
++ @440 + Kale.P7Alora // ~Do you think Alora has?~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)~+ @441 + Kale.P7Look // ~What do you look for in someone, anyway?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.P7Half 
SAY @442 // ~Nope! But eh, wouldn't say no to it if the future says that's who I'm ending up with. Ma would want me happy in the end.~
= @443 // ~Got to be a gnome or dwarf though. I'm not being with someone nearly twice my height, I'd feel a lot less heroic.~ 
++ @440 + Kale.P7Alora // ~Do you think Alora has?~
+~GlobalLT("X3KaleAlora1","GLOBAL",4)~+ @441 + Kale.P7Look // ~What do you look for in someone, anyway?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.P7Alora 
SAY @452 // ~I didn't ask. Assumed no. You think she has? Nah, she hasn't. Don't get my blood all cold, will you?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.P7Look 
SAY @444 // ~Well, my dream halfling girl? Someone heroic, valiant, fearless. Would love a spouse that charges in battle side to side with you.~
++ @445 + Kale.P7Self // ~So...another halfling just like yourself.~
++ @446 + Kale.P7Paladin // ~So, a paladin of sorts?~
++ @447 + Kale.P7Dream // ~Good luck finding a halfling like that.~
+~Race(Player1,HALFLING)~+ @574 + Kale.P7Me // ~I think that sounds like me.~ 
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.P7Me 
SAY @575 // ~What if it was?~
++ @576 + Kale.P7Me1 // ~I'd be interested.~
++ @577 + Kale.P7Me2 // ~I'd be flattered.~
++ @578 + Kale.P7Me3 // ~I'd be a bit repulsed.~
END 

IF ~~ Kale.P7Me1 
SAY @579 // ~Interesting, interesting. We should talk about this more sometime. When we're not under so much danger constantly and could die in any moment, heh.~
IF ~~ EXIT // We're not pushing it past "interest" in BG:EE. Only haflings get this dialogue anyway.
END 

IF ~~ Kale.P7Me2 
SAY @580 // ~Flattered only? Well, I'll do a lot more flattering of you. When we're not under so much danger constantly and could die in any moment, heh.~
= @581 // ~For now, the road calls.~
IF ~~ EXIT 
END 

IF ~~ Kale.P7Me3 
SAY @582 // ~Repulsed. Talk about kicking a halfman where it hurts!~
= @583 // ~I'm going to walk a few paces away, pick up the little dignity I've got that isn't kicked.~
IF ~~ EXIT 
END 

 

IF ~~ Kale.P7Self 
SAY @448 // ~That sounds wonderful to me. Pity, I can't have a female version of myself.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.P7Paladin 
SAY @451 // ~Pfft. No one's ever heard of a halfling paladin. I doubt they even exist, mate. I think we're fine with heroes like myself, anyway.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.P7Dream
SAY @449 // ~Well, it is a dream halfling girl for a reason.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

/*Embellishment, adding globals to remove the conversation topics as it progresses. We can do this via local, as it only pertains to the creature, and it need not be saved.*/
IF ~~ Kale.PGullykin
SAY @359 // ~Well, it was settled not too long ago Right next to the ruins of the elven settlement of Firewine.~
= @360 // ~You can still feel a bit of the wild magic in the air from the destruction over there. Still, it's good farmland for us.~
+~Global("X3KaleGullyMage","LOCALS",0)~+ @361 DO ~SetGlobal("X3KaleGullyMage","LOCALS",1)~ + Kale.PTMage // ~Wild Magic? Mages destroyed Firewine?~
+~Global("X3KaleGullyLife","LOCALS",0)~+ @362 DO ~SetGlobal("X3KaleGullyLife","LOCALS",1)~ + Kale.PTLife // ~Did you live there all your life?~
+~Global("X3KaleGullyClose","LOCALS",0)~+ @363 DO ~SetGlobal("X3KaleGullyCloseness","LOCALS",1)~ + Kale.PTCloseness // ~Does the closeness to Firewine cause a lot of trouble?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PTMage 
SAY @364 // ~Aye. Story goes that a battle between them completely leveled the town and altered the very landscape. Crazy, eh?~
+~Global("X3KaleGullyLife","LOCALS",0)~+ @362 DO ~SetGlobal("X3KaleGullyLife","LOCALS",1)~ + Kale.PTLife // ~Did you live there all your life?~
+~Global("X3KaleGullyClose","LOCALS",0)~+ @363 DO ~SetGlobal("X3KaleGullyCloseness","LOCALS",1)~ + Kale.PTCloseness // ~Does the closeness to Firewine cause a lot of trouble?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PTLife 
SAY @365 // ~Long as I remember. Parents were from a caravan, but they got tired of it and settled down after Ma got round with child, so she says.~
+~Global("X3KaleGullyMage","LOCALS",0)~+ @361 DO ~SetGlobal("X3KaleGullyMage","LOCALS",1)~ + Kale.PTMage // ~Wild Magic? Mages destroyed Firewine?~
+~Global("X3KaleGullyClose","LOCALS",0)~+ @363 DO ~SetGlobal("X3KaleGullyCloseness","LOCALS",1)~ + Kale.PTCloseness // ~Does the closeness to Firewine cause a lot of trouble?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PTCloseness
SAY @366 // ~A bit. But most of us were smart to avoid it. Why invite danger to your home, eh?~
+~Global("X3KaleGullyMage","LOCALS",0)~+ @361 DO ~SetGlobal("X3KaleGullyMage","LOCALS",1)~ + Kale.PTMage // ~Wild Magic? Mages destroyed Firewine?~
+~Global("X3KaleGullyLife","LOCALS",0)~+ @362 DO ~SetGlobal("X3KaleGullyLife","LOCALS",1)~ + Kale.PTLife // ~Did you live there all your life?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PAlora
SAY @195 //~So you've noticed, have you? Not jealous, I hope.~
+~Gender(Player1,MALE)~+ @194 + Kale.PAloraR1A // ~Maybe I am.~ 
+~Gender(Player1,FEMALE)~+ @194 + Kale.PAloraR1B // ~Maybe I am.~ 
++ @196 + Kale.PAloraR2 // ~I'm happy for you, Kale.~
++ @198 + Kale.PAloraR3 // ~Certainly not. She could do better.~
++ @197 + Kale.PAloraR4 // ~Just don't let it be a distraction from our work.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PAloraR1A 
SAY @199 // ~Don't worry mate, you'll have that happiness someday, eh?~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Kale.PAloraR1B 
SAY @200 // ~Too slow. Did you think I'd wait around for you? I'm just pulling your leg, lass. You're a fine woman, you'll find your happiness.~
++ @197 + Kale.PAloraR4 // ~Just don't let it be a distraction from our work.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END

IF ~~ Kale.PAloraR2 
SAY @203 // ~I'm happy for me too, heh!~
++ @197 + Kale.PAloraR4 // ~Just don't let it be a distraction from our work.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END

IF ~~ Kale.PAloraR3 
SAY @204 // ~Hey! I take that personally. I'm a fine halfman for a halfwoman, I'll tell you.~
++ @197 + Kale.PAloraR4 // ~Just don't let it be a distraction from our work.~
++ @202 + Kale.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END

IF ~~ Kale.PAloraR4
SAY @205 // ~I won't, mate. I'll keep fully focused on every baddie you point a finger at, no fear!~
IF ~~ EXIT 
END 

IF ~~ Kale.PTips1
SAY @332 // ~Always have a good breakfast in the morning before you set out. Common sense, I say.~
IF ~~ EXIT 
END

IF ~~ Kale.PTips2
SAY @333 // ~Choose your wardrobe wisely. Looks matter in every way, even in battle.~
IF ~~ EXIT 
END

IF ~~ Kale.PTips3
SAY @334 // ~Try not to get drunk before a big fight. It's fun to try once though.~
IF ~~ EXIT 
END 

IF ~~ Kale.PTips4
SAY @541 // ~Don't look at the map. Seriously. It's a bloody blast getting lost!~
IF ~~ EXIT 
END 

IF ~~ Kale.PTips5
SAY @542 // ~Don't bother trying to help everyone. You matter most. If it ain't worth the reward, it ain't worth the risk.~
IF ~~ EXIT 
END 

IF ~~ Kale.PTips6
SAY @543 // ~Scented oils, mate. And give the hair a good scrub. You can get better clients if you smell and look nice.~
IF ~~ EXIT 
END 

IF ~~ FixString
SAY @604
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3KReset")~ EXIT 
END 

END 