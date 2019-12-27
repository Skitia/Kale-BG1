BEGIN X3KIRK 

CHAIN IF ~Global("X3KDealQuest","GLOBAL",1)~ THEN X3KIRK t1 
@0 // ~Leave me be, I ain't want to talk to you.~
END 
++ @5 EXTERN X3KIRK t1.1 // ~I want to talk to you Kirk, about your debt.~
++ @6 EXTERN X3KIRK t1.quick // ~It will be quick, I promise.~
++ @7 EXTERN X3KIRK t1.attack // ~You will talk to me, or we will have a problem.~

CHAIN X3Kirk t1.1 
@1 // ~You can go back to whoever sent you, and tell them they ain't getting a single piece of gold. Not a single blasted one, bloody cheats!~
END 
++ @8 EXTERN X3KIRK t1.attack // ~We're not returning empty handed.~
++ @9 EXTERN X3KIRK t1.reasonable // ~Be reasonable, what will it take for you to cooperate?~
++ @10 EXTERN X3KIRK t1.attack // ~Just give us the gold.~ 

CHAIN X3Kirk t1.quick 
@2 // ~Make it very bloody quick then.~
END 
++ @11 EXTERN X3KIRK t1.1 // ~You are Kirk, yes? We want to see if you will pay your debt up.~
++ @12 EXIT // ~Nevermind, we'll get out of your hair~
++ @13 EXTERN X3KIRK t1.1 // ~We're just here for the gold you owe. Make it easy, will you?~

CHAIN X3KIRK t1.reasonable 
@3 // ~What will it take for you to go away? You aren't getting anything. Leave before you regret it.~
END 
++ @14 EXTERN X3KIRK t1.attack // ~We aren't leaving until you hear us out.~
++ @15 EXTERN X3KIRK t1.attack // ~Seems we've no choice then, we'll take it from you by force.~
++ @16 EXTERN X3KIRK t1.attack // ~I'll enjoy this.~
++ @12 EXIT // ~Nevermind, we'll get out of your hair~

CHAIN X3KIRK t1.attack 
@4 // ~I thought the last guy they sent understood with his wounds. Seems I'll be making yours worse.~
DO ~Enemy()~
EXIT 

CHAIN IF ~!Global("X3KDealQuest","GLOBAL",1)~ THEN X3KIRK t2 
@0 // ~Leave me be, I ain't want to talk to you.~
EXIT 
