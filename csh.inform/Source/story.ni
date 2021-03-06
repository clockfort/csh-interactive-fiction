"Computer Science House: Race To Grace" by Chris Lockfort.

The release number is 1.
The story creation year is 2012.
The story headline is "A Text-Based Adventure Game".
The story genre is "Simulation". The story description is "Step inside the zany text-adventure world of CSH. Written for CSH GameJam 2012.". 
Release along with an interpreter, source text, and a website.
Use American dialect, the serial comma, and no scoring.
Include Basic Screen Effects by Emily Short. [Specifically, using spacing/pausing/waiting/keygrab/screen clearing abilities]
[I believe all of the components of basic screen effects that I am using are the portable ones, not just the Z-Machine limited ones]

Chapter 1 - CSH

[General definitions necessary to construct later objects/rooms; only more complicated and reused objects appear in this header section]

Wall stripes are a kind of thing. [While normally you can do scenery from a room without direct thing inheritance, apparently you can't if you want to "in every" them.]
Plaques are a kind of thing.

Wall stripes are scenery. Understand "stripes", "DEC stripes", "colored stripes" as wall stripes. The description is "The stripes painted on the wall are odd bright shades of pink and purple, which you know ought to be quite ugly, something that perhaps only a 1970s-era DEC engineer could love. Somehow though, you find the pallet comforting.".

Plaques are scenery. Understand "plaque", "platter", "hard drive platter", "plaques", "platters", "hard drive platters", "wall plaques" as plaques. The description is "A careful examination of the platters reveals that they are being used as plaques, and have many signatures on them, presumably of past floor members.".

The windows are a kind of thing. Windows are scenery. Understand "window" as windows. The description is "It looks dreary outside. Typical Rochester.". [This is just in case - I plan on overriding this description upon most every placement]

A can of sunkist is a thing. Understand "can", "sunkist", "drink" as can of sunkist. 

Carry out taking the sunkist for the first time:
	say "Normally, you would tell a drink admin about this bad drop. But since you just fixed the machine, you decide it fair enough to just take this drink.".
	
[CD-Rs]
A CD-R is a kind of thing.  Understand "CD" as the CD-R. 
A CD-R can be blank or burned. Understand the blank property as describing the CD-R. Understand the burned property as describing the CD-R. A CD-R is usually blank.  
[Compiler-suggested method of dealing with kind-variant descriptions. I don't like it.]
Instead of examining a blank CD-R, say "It's a normal-looking CD-R. Upon examination of the ink on the back, you decide that it is blank.".
[Instead of examining a burned CD-R, say "It's a normal-looking CD-R. Upon examination of the ink on the back, you decide that it has already been burned.".]
Instead of examining a burned CD-R, say "It's a normal-looking CD-R. Upon examination, you see that it is a Linux Live CD.".

A CD-R label is a thing.
After examining something when the CD-R label is part of the noun:
	say "[the noun] is labeled as a linux live CD."

A console is a thing. Understand "console hooked up to the games server", "games server", "games server console", "games console", "games" as console. 

[Stickers]
A for-rectal-use-only sticker is a thing. Understand "sticker", "stickers", "for rectal use only sticker", "for rectal use only stickers" as for-rectal-use-only sticker. The description is "A small rectangular blue sticker that reads in bold, black, capital letters: 'For Rectal Use Only'.".
Instead of examining the for-rectal-use-only sticker for the first time:
		say "A small rectangular blue sticker that reads in bold, black, capital letters: 'For Rectal Use Only'. You decide to stop letting your mind wander as to what product line necessitated the manufacture of these stickers in the first place.".
Instead of tying the for-rectal-use-only sticker to something:
	now the for-rectal-use-only sticker is part of the second noun;
		say "You stick [the sticker] to [the second noun]."
Instead of tying something to the for-rectal-use-only sticker:
	try tying the for-rectal-use-only sticker to the noun. 
Instead of putting the for-rectal-use-only sticker on something:
	try tying the for-rectal-use-only sticker to the second noun. 
Understand the commands "stick" or "apply" as "tie".
Understand "peel [something]" or "peel off [something]" or "scrape [something]" or "scrape off [something]" as taking.
Instead of taking the for-rectal-use-only sticker:
	say "You try to scrape it off, but it's stuck fast."

[Random things that also need be defined before their use in rooms]
A couch is a kind of thing. 
Instead of taking the couch for the first time:
	say "A little Imps-director angel appears on your right shoulder, and gently reminds you that other people need to use the couches too. A little social-director devil appears on your left shoulder, and tells you (in no uncertain terms) that the Imps-director can suck it. Realizing that you couldn't lift the couch by yourself anyway, you decide to side with the Imps director with a smile. You stop trying to take the couch.".
Instead of taking the couch:
	say "It is too heavy to lift by yourself."
	
A media kiosk is a kind of thing. The description is "It's a half-assembled mess of cables in an oddly shaped box." It is fixed in place.
A projector is a kind of device. The description is "It's a fairly decent newish-looking 720p DLP projector firmly affixed to the ceiling." It is fixed in place.

A drink machine is a kind of device. A drink machine is usually fixed in place. A drink machine is usually switched on. The Big Drink Machine is a kind of drink machine.  The description is "A slightly beat up, old-looking vending machine. It's absolutely huge, and looks like it weighs a ton."
Instead of taking the drink machine for the first time:
	say "Are you joking?! It is far too heavy and cumbersome to be taken. Not even Guybrush Threepwood, mighty pirate, has space in his pants for such a monstrosity."

An air conditioner is a kind of thing. Understand "AC" as the air conditioner. Air conditioners are usually fixed in place.

A motor is a thing. The description is "It's a brushless DC motor.".

A battery is a thing. The description is "It's a small rechargable battery.".

An arduino is a thing. "It's a simple-to-use microcontroller rapid-prototype/development board.".

A solar-cell and charger is thing. The description is "A solar cell with a built in charge controller.".

[TODO: Add variant on/off description]
[Carry out switching off the light switch: 
	repeat with item running through adjacent rooms:
		now item is dark.

Carry out switching on the light switch: 
	repeat with item running through adjacent rooms:
		now item is lit.
]


[Verbs/Global Functions]
Understand "flip [something switched off]" as switching on. Understand "flip [something switched on]" as switching off. Understand "flip [something]" as switching on. 
Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something."). 	
Understand "xyzzy" as a mistake ("Nothing happens."). 
Understand "elbereth" as a mistake ("A good idea, but you haven't anything to engrave with.").
Using is an action applying to one visible thing. Understand "use [something]" as using.
Understand "use [motor]" as using.
Understand "use [arduino]" as using.
Understand "use [console]" as using.

Understand "use [something switched off]" as switching on.
Understand "use [something switched on]" as switching off.
The block giving rule is not listed in the check giving it to rules. 
Instead of taking inventory:
	say "You are carrying [a list of things carried by the player including contents][if the player is not carrying something] but an unbearable lightness of being[otherwise], and an unbearable lightness of being[end if]."

Understand "help" as a mistake ("Oh, have you not played interactive fiction before?[line break]Perhaps you should try typing in cardinal directions, or things like 'take item', 'talk to person', 'inventory', or 'eat sandwich'.")

[We're redefining these conversation-related built-ins]
Understand the commands "ask" and "tell" and "say" and "answer" and "talk" as something new.
Understand "ask [text]" or "tell [text]" or "answer [text]" or "say [text]" as a mistake ("[talk to instead]"). 
Instead of asking someone to try doing something:
	say "[talk to instead][paragraph break]". 
Instead of answering someone that something:
	say "[talk to instead][paragraph break]". 
To say talk to instead:
	say "(To communicate, TALK TO a character.)".
	
Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing. 
Instead of talking to a man:
	say "He just narrows his eyes at you until you stop talking.".
Instead of talking to a woman:
	say "You want to talk to this woman, but you are too afraid.".

A person can be approving or disapproving. A person is usually disapproving. 
 
[People]
A plate carrier is a thing. The description is "It's a Paraclete Hard Plate Carrier with cummerbund (whatever that means)."
Beekman is a man. "Beekman is spread out on one of the couches, watching [italic type]Sherlock[roman type] on his laptop. He's wearing a plate carrier with a 'Christian Beekman: Tactical Operator' tag on it." Understand "tactical beekman" as Beekman. Beekman wears a plate carrier. Beekman wears a name tag. The description of the name tag is "It reads, 'Christian Beekman: Tactical Operator'.". Understand "tag", "nametag" as the name tag.  Beekman wears a laptop. Understand "netbook", "alienware", "alienware netbook", "alienware laptop", "gaming laptop", "gaming netbook" as laptop. The description of the laptop is "It's a green alienware gaming netbook of some kind."
Instead of talking to Beekman:
	say "Beekman nods his head and makes gun shot noises absent-mindedly. He can't really hear you, he has his earbuds in while he's watching his show.".
	

Clockfort is a man. Understand "Chris", "Chris Lockfort", "Lockfort" as Clockfort. "Clockfort stares at you with narrowed eyes inbetween hurridly typing on various consoles."
Instead of talking to Clockfort:
	say "'Hiya! Don't worry about my voting for you, I'm already quite content with you, since you're playing my GameJam game.'[line break]";
	say "You give Clockfort a confused look.[line break]";
	say "He shrugs. 'Nevermind...'[line break]";
	now clockfort is approving;
	Say "[italic type]You have a feeling that Clockfort will approve of your being a member, since you're playing his game, whatever that means.[line break]On a related note, your fourth wall feels violated.[roman type]".
	
Cohoe is a man. Understand "Grant Cohoe", "Grant", "Co-ho-hoe" as Cohoe. "Cohoe looks relaxed."

Instead of talking to Cohoe:
	say "[if Cohoe is approving]Thanks for that CD! It worked out fairly well.[otherwise]Uggh. I can't find a live cd to fix this damn computer...[end if]".
Carry out giving CD-R to cohoe:
	say "Cohoe takes the CD gleefully. 'Oh, thanks! This should work. Consider my vote yours.'";
	now Cohoe is approving.

Grnt is a man. Understand "Kurtz","Grant Kurtz" as Grnt. "Grnt is here. He looks somewhat disheveled. Probably too much stress from doing evals work."

Ryan is a man. Understand "Brown", "RA", "Ryan Brown" as Ryan. "Ryan is here, looking tall and scary as usual. It's not his fault, but you notice he's leaking rainbows a bit. Must be an RA-thing."

Crawford is a man. "Crawford is here. He looks grumpy."
Instead of talking to Crawford for the first time:
	say "What the hell? Are you fucking deaf?[line break]I've told you a thousand times, I'll only vote for you to become a member if you do a project.[line break]You might try repairing Little Drink, I hear McGary fucked it up again. It needs a new motor and something to control it, I think. [line break]Look, here's an Arduino and a Motor Controller Shield. I'm way too cool to have one of these in my possession anyways.";
	now player is carrying the Arduino;
	say "Got an Arduino!".
Instead of talking to Crawford:
	say "What the hell? Are you fucking deaf? I've told you a thousand times, I'll only vote for you to become a member if you do a project.[if Crawford is approving]Oh, you fixed the little drink machine? Approved.[otherwise]You might try repairing Little Drink, I hear McGary fucked it up again. It needs a new motor and something to control it, I think.[end if]'".

Instead of talking to Grnt for the first time:
	say "Kurtz looks up at you excitedly. 'Hey! I'm trying to get rid of these damned 'For Rectal Use Only' stickers. I don't know why, but I bought a whole roll of them. Here, take one!' [line break]";
	say "Got one 'For-Rectal-Use-Only Sticker'. Lucky you.";
	say "'Oh, you want to know what it would take for me to vote you in as a member? Uhm, I'd be happy if you learned how to play one of CSHs games.[if grnt is approving]Oh, you know how to play nethack already! You're good by me then!'[otherwise]'[end if]";
	now player is carrying for-rectal-use-only sticker;
Instead of talking to Grnt:
	say "'Oh, you want to know what it would take for me to vote you in as a member? Uhm, I'd be happy if you learned how to play one of CSHs games.[if grnt is approving] Oh, you know how to play nethack already! You're good in my books then![end if]'".

Sam is a man. Understand "ManSam","Man Sam", "Sam Lucidi" as Sam.
Instead of talking to Sam:
	say "'Hello! [if sam is approving]Haha, what you did to Cohoe and Clockfort over there in the server room was hilarious. Nice job.'[otherwise]It's easy to get my vote. Just do something to fuck with the RTPs being all serious over there in the server room and my vote is yours.'[end if]"

Howland is a woman. "Howland is here, busily fiddling with what appears to be some infrared LEDs and some infrared detectors." Understand "Alex", "Alexandra", "History" as Howland. 
Instead of talking to Howland for the first time:
	say "You open your mouth to talk to Howland, but before you get the words out, she goes into a lengthy history story.[line break]";
	say "She starts to explain, 'Well, Dan Lee and Darren once were out in Rochester proper, when...'[line break]";
	say "You fall asleep.[line break](Press any key)[line break]";
	wait for any key;
	say "Your eyes flutter open again. 'And then James Kieliszek wrote this piece of software that...'[line break]";
	say "Your eyelids weigh down again.[line break](Press any key)[line break]";
	wait for any key;
	say "You stir from your siesta. 'But that was when Brenner figured out that the male prostitute was actually...'[line break]";
	say "Despite the story being interesting, it's length gets to you, and you find yourself falling back asleep.[line break](Press any key)[line break]";
	wait for any key;
	say "You awake semi-refreshed from your standing-up nap. '... and that's how an entire photo hunt team met my mother!' finished Alex.";
	now Howland is approving;
	say "[italic type]You have a feeling that Howland will approve of your being a member, since you've sat through her rather lengthy story lecture.[roman type]".

Hammerstein is a man. Understand "Julian", "Julian Hammerstein" as Hammerstein.
Instead of talking to Hammerstein:
	say "[if Hammerstein is approving]Nice job, dude. You've got my vote.[otherwise]Uh, do a major project. Then we can talk. I can't think of anything for you to do, though. Maybe ask someone else?[end if]".
	
Centra is a man. Understand "Ben Centra", "Ben", "Centratary", "Financial" as Centra.
Instead of talking to Centra:
	say "[if Centra is approving]Thanks for that soda! It really hit the spot.[otherwise]Ugghh, I'm really thirsty for a Sunkist and Little Drink is broken. Lame.[end if]".
Carry out giving can of sunkist to centra:
	say "'Oh wow! Thanks! You definitely have my vote!'";
	now centra is approving.
	
When play begins:
	say "Your mission, should you choose to accept it, is to get all of the members of Eboard to agree to vote you in as a CSH member. They've all seen you around these last couple of weeks, but they're all still on the fence about the matter. Perhaps you could try to pry out of them exactly what they'd like to see you do before becoming a member?".
	
every turn:
	if grnt is approving and ryan is approving and crawford is approving and clockfort is approving and cohoe is approving and howland is approving and sam is approving and hammerstein is approving,
	end the story saying "Congratulations! You got all of the eboard members to agree that you would make a good member.";

[Pre-room inheritance constructs]
[Halls]
Hall is a kind of room. Understand "halls" as hall. 
Wall stripes are in every hall.
Plaques are in every hall.
[Light switches are in every hall.] [Had major problems with light switches in this inheritance pattern; couldn't wire them easily to only affect the room they were in, in a generic coding fashion :-/]


[Rooms]

[Lounge]
The Lounge is a room. "A large common room with lots of windows. To the east lies the main hallway."
In the lounge are six couches, a projector, a media kiosk, [a big-screen TV,] windows, and Beekman.
The lounge is west of the North Side Hallway. 
Sherlock is scenery in the lounge.
Instead of examining windows when player is in the lounge:
	Say "The windows look out over the NRH quad. It's a gray, dreary mist outside, just like every other day in Rochester.".
Instead of examining Sherlock when player is in the lounge:
	Say "Yes, Benedict Cumberbatch [italic type]is[roman type] one sexy fellow."
	
[Elevator Lobby]
The Elevator Lobby is a room. "A large room that connects the two halves of floor with both each other and the outside world. A drably-colored billboard decorates one wall. This central room opens up to both the south and north sides of floor."
The Elevator Lobby is south of the North Side Hallway.
A billboard is scenery in the elevator lobby. "It looks like the RA has made some half-enthused effort to print and tack up ResLife-approved community signage. It's boring. You feel dumber for having read it." It is fixed in place.

[End of the North Side Hallway]
The End of the North Side Hallway is a hall. "The end of the north-side hallway. To the north, you see the door marked 'ARG room'. To the east, you can see the L Hallway, which is somewhat ill-lit."
In the End of the North Side Hallway is a Big Drink Machine, and a CD-R.  The CD-R is burned.
The End of the North Side Hallway is north of the North Side Hallway.

[North Side Hallway]
The North Side Hallway is a hall. "The hallway is rather bright and cheery, and the sunlight plays nicely on a few brightly colored stripes that run the length of the wall, occasionally interspersed with giant hard drive platters. To the west is the lounge. To the north, the end of this hallway, and to the south, the elevator lobby.".

[L Hallway]
The L Hallway is hall. "A wretched hive of scum and villainy. To the east lies the end of this hallway, and to the south, the project room."
The L Hallway is east of the End of the North Side Hallway.
The L Hallway is dark.
The light switch is a switched off device in the L Hallway. It is fixed in place. Understand "switch", "switches", "light", "lights" as a light switch.
Carry out switching off the light switch: now the L Hallway is dark.
Carry out switching on the light switch:
	now the L Hallway is lit;
	now ryan is approving;
	say "[italic type]You have a feeling that Ryan will now approve of your being a member, since you've forced the L to be just a bit more social.[roman type]".
After deciding the scope of the player when the location is The L Hallway: place the light switch in scope.
The Project Room is south of the L Hallway.

[End of the L Hallway]
The End of the L Hallway is a room. "Bleak. Forboding. Stripey. Hallway-y. The research room is to the South. West goes back towards the sane part of floor."
The End of the L Hallway is east of the L Hallway.


[ARG Room / Server Room]
The ARG/Server Room is a room. "The ARG/Server room is full of a mix of old and older servers. It's kind of cold. There are four air conditioners lining the north side of the room where the windows ought to be. It looks like someone has hooked up a console into the games server."
The ARG/Server Room is north of the End of the North Side Hallway.
There are four air conditioners in the ARG/Server Room.
There is a console in the ARG/Server Room.



[One-time portal to Nethack World]
Instead of using the console for the first time:
	say "You step up the console hooked directly up to the games server. Upon closer examination, it looks like some odd conglomeration of an 80s-era serial console and some nearly equally outdated 90s-era virtual reality technology.[line break]
	You see that someone has already opened [italic type]Nethack[roman type]. You start to play, when you hear a loud, raspy chuckle behind you.[line break]You feel a stabbing sensation as a needle is forcefully shoved into the side of your neck.[line break][line break]You black out...";
	pause the game;
	change the printed name of DL1SR to "Dungeon Level 1 - Starting Room";
	move player to DL1SR.
Instead of using the console:
	say "You start to play Nethack again. Everything looks SO boring now. You stop playing."

A server is a kind of device. A server is usually switched on.
There are servers in the ARG/Server room.
Clockfort is in the ARG/Server room. Cohoe is in the ARG/Server room.

Instead of switching off the server for the first time:
	Say "You feel a satisfying click at the end of the power button's motion, and the noise level in the room softens to a more reasonable level as the whirring of fans and whining hard drives comes to a stop.";
	Say "Clockfort and Cohoe freak out and frantically scramble to get the server back up.";
	Say "[italic type]You have a feeling that Sam will now approve of your being a member, since you've adequately fucked with the RTPs.[roman type]";
	now sam is approving.
Instead of switching off the server:
	Say "No, you and Sam have already had your fun with the RTPs. Let's not be too mean.".
	

[Software Room]
The Software Room is a room. "The software room seems to be a somewhat misnamed sort of library.". In the software room are two couches, a coffee table, and some board games. 
The T is east of the software room. Ryan is in the Software Room. Sam is in the Software Room. Centra is in the software room.

[Project Room]
The Project Room is a room. "The project room is a rather cramped room full of wood working and miscellaneous equipment. A pleasant light streams in from the two windows in the back of the room." There are windows in the project room. Hammerstein is in the project room.
Instead of examining windows when player is in the project room:
	Say "These windows look out over the NRH 20-minute parking lot. Not much interesting going on outside, as usual.".

[Research Room]
The Research Room is a room. "This room is packed to the gills with random electronics junk and half-finished (and half-baked) projects. You could really only find something of use in here if you knew what you were looking for beforehand." Howland is in the Research Room. The motor is in the research room.
The Research Room is south of the End of the L Hallway.

[South-Side Hallway]
The South-Side Hallway is a hall. "It's a hallway, complete with the now-familiar stripes and platters. The User Center to the west, and the T is further south." The South-Side Hallway is south of the Elevator Lobby.

[User Center]
The User Center is a room. The User Center is west of the South-Side Hallway. "A well-windowed room with a working mess spread out over an extensive amount of table space."
Grnt is in the user center. Crawford is in the user center.

[The T]
The T is a hall. The T is south of South-Side Hallway. "The end of the South-Side Hallway. You see the Command Center to the south, and the software room to the west." 
Little drink is a drink machine in the T.
A Little drink can be motored or unmotored. Little drink is unmotored.
A Little drink can be arduinoed or unarduinoed. Little drink is unarduinoed. [It's a word. Shut up.]
A little drink can be working or unworking. Little drink is unworking.

Instead of using the motor in the T:
	say "You insert the motor into little drink, with a loud thunk as you drop the heavy part into place.";
	now little drink is motored;
	if little drink is motored and little drink is arduinoed and little drink is unworking,
		say "Little drink jumps back to life![line break]It spits out a can of sunkist.";
		remove motor from play;
		now little drink is working;
		now crawford is approving;
		now hammerstein is approving;
		now can of sunkist is in the T;
		Say "[italic type]You have a feeling that Crawford and Hammerstein will now approve of your being a member, since you've now completed a project.[roman type]".
Instead of using the arduino in the T:
	say "You insert the arduino into little drink. It's not much, but it's better than nothing.";
	now little drink is arduinoed;
	if little drink is motored and little drink is arduinoed and little drink is unworking,
		say "Little drink jumps back to life![line break]It spits out a can of sunkist.";
		remove arduino from play;
		now little drink is working;
		now crawford is approving;
		now hammerstein is approving;
		now can of sunkist is in the T;
		Say "[italic type]You have a feeling that Crawford and Hammerstein will now approve of your being a member, since you've now completed a project.[roman type]".
		
[
every turn:
	say "Debug: [if little drink is arduinoed]A[end if][if little drink is motored]M[end if][if little drink is working]W[end if]";
] [WTF. It keeps dropping through my and statement even though it shouldn't]
[if grnt is approving and ryan is approving and crawford is approving and clockfort is approving and cohoe is approving and howland is approving and sam is approving and hammerstein is approving,]
[every turn: 
	say "Debug: [if grnt is approving]grnt[end if] [if ryan is approving]ryan[end if] [if crawford is approving]crawford[end if] [if clockfort is approving]clockfort[end if] [if cohoe is approving]cohoe[end if] [if howland is approving]howland[end if] [if sam is approving]sam[end if] [if hammerstein is approving]hammerstein[end if]".
]

Chapter 2 - The World Below

The Corner store is a room. Understand "whore" or "corner whore" or "store" as The Corner Store.

Chapter 3 - "And Then, One Day... I got in."
[This is the NetHack/hallucination level]

[NetHack items that must be defined pre-room creation]
A stair is a kind of door. A stair is always open. A stair is never openable.


[Extreme apologies for this and all of the other difficult to read room names and automated pre-enterance room name swapping. Originally I called this 'Dungeon Level 1 - Starting Room', however extremely often in other complex statements the compiler would equate this with the subtraction of one room and another room due to both the number and the minus sign.]
The DL1SR is a room. "A drab stone-hewn rectangular room. The pungent stench of mildew emanates from the wet dungeon walls. There is an opening to the west."
Understand "where are the cheetos" as a mistake ("They're right next to you!"). 	
 
The pet kitten is an animal in DL1SR. The description of the pet kitten is "Your lovable cute grey tamed pet kitten."
Petting is an action applying to one visible thing. Understand "pet [something]" as petting.
Instead of petting a kitten:
	say "It purrs. You can't help but smile."

The staircase is a stair. It is above the DL1SR and below the ESCAPE_DUNGEON_META_LEVEL.

The ESCAPE_DUNGEON_META_LEVEL is a room above the DL1SR.


Instead of using the staircase in DL1SR:
	say "You feel like your god would be most displeased should you escape the dungeon. You decide against this brazen act of defiance."
Instead of going up to the ESCAPE_DUNGEON_META_LEVEL from DL1SR:
	say "You feel like your god would be most displeased should you escape the dungeon. You decide against this brazen act of defiance."
	
The DL1R3 is a room.
The DL1R4 is a room. 
The DL1R2 is a room. "A dully-lit room. Exits are to the east, north, and south."
DL1R2 is west of DL1SR.
DL1R2 is south of DL1R3.
DL1R2 is north of DL1R4.

Instead of going north to DL1R3 from DL1R2:
	change the printed name of DL1R3 to "Dungeon Level 1 - Generic Room";
	move pet kitten to DL1R3;
	say "As you enter the room, you walk in on a surly looking gnome anxiously examining a curious-looking metal wand.";
	say "He shrugs, and zaps the wand at you.";
	say "It was a wand of death. You die.";	
	pause game;
	say "You snap out of it. It appears that the hallucinogenic effects of whatever drug you were dosed with are wearing off. You're back in the real world... you think.";
	remove scroll from play;
	now Grnt is approving;
	say "[italic type]You have a feeling that Grnt will now approve of your being a member, since you succesfully played a game of NetHack.[roman type]";
	move player to ARG/Server Room.
	
Carry out going south to DL1R4 from DL1R2 for the first time:
	change the printed name of DL1R4 to "Dungeon Level 1 - Generic Room";
	move pet kitten to DL1R4;
	say "As you enter the room, you stumble over the corpse of a kobold. You look up just in time to see a monstrous six foot long giant soldier ant with cold, extrusive eyes look up from atop its mandibles from the corpse of another farther off-Kobold, a fresher kill than the one at your feet.";
	say "You turn to flee, but the ant is already upon you and it looks like it brought company. You can barely make out another pair of soldier ants furtively scuttling towards you in the dimly lit background.";
	say "It hits! It hits! It bites!";
	say "You die.";
	pause game;
	say "You snap out of it. It appears that the hallucinogenic effects of whatever drug you were dosed with are wearing off. You're back in the real world... you think.";
	remove scroll from play;
	now Grnt is approving;
	say "[italic type]You have a feeling that Grnt will now approve of your being a member, since you succesfully played a game of NetHack.[roman type]";
	move player to ARG/Server Room.
		
There is a scroll in DL1R2. 
Understand "read [something]" as reading. Reading is an action applying to one thing, requiring light. 

Instead of reading a scroll:
	say "That was a scroll of earth!";
	say "The ceiling rumbles above you!";
	say "You are hit by a boulder!";
	say "You die.";
	pause game;
	say "You snap out of it. It appears that the hallucinogenic effects of whatever drug you were dosed with are wearing off. You're back in the real world... you think.";
	remove scroll from play;
	now Grnt is approving;
	say "[italic type]You have a feeling that Grnt will now approve of your being a member, since you succesfully played a game of NetHack.[roman type]";
	move player to ARG/Server Room.

Instead of examining a scroll:
	say "That was a scroll of earth!";
	say "The ceiling rumbles above you!";
	say "You are hit by a boulder!";
	say "You die.";
	pause game;
	say "You snap out of it. It appears that the hallucinogenic effects of whatever drug you were dosed with are wearing off. You're back in the real world... you think.";
	remove scroll from play;
	now Grnt is approving;
	say "[italic type]You have a feeling that Grnt will now approve of your being a member, since you succesfully played a game of NetHack.[roman type]";
	move player to ARG/Server Room.
	
Carry out going west to DL1R2 from DL1SR for the first time:
	change the printed name of DL1R2 to "Dungeon Level 1 - Generic Room";
	say "You displace your pet kitten.";
	move pet kitten to DL1R2.


