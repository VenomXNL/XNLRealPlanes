<h1>License Notes</h1>

This script has been fully written from scratch by VenomXNL
FiveM Account: https://forum.fivem.net/u/VenomXNL/

I've spend a sh*tload of time to get it to function like
I wanted, spend lots of time on trial and errors. 
So PLEASE have decency and respect the small 'requests' in my license :) 


I won't put up all kinds of MIT, CC or what ever licenses etc here for
you to read and/or understand. Just some basic 'rules' which count as
my license and license limitations:

Limitations, You:
 - CAN NOT Claim that this script is yours or that you've made it
 - CAN NOT Make a small adaption and call it an "improved version" or "updated version"
 - CAN NOT EVER sell this script or include it in 'sold bundles'
 - CAN NOT Redistribute it elsewhere (I MYSELF will maintain the latest release version on MY github)
 - CAN NOT Re-upload your 'own version' without WRITTEN permission on my FiveM account!
 - CAN NOT Use it on servers which violate the FiveM ToS about making profits! (Yeah, aint I a bitch? :P)

However:
 - You CAN Implement it in your own game-mode/server
 - You CAN adapt/change it (OBVIOUSLY) to your own needs for your server (just NO re-uploading without permission)


<h1>Implementations into frameworks (Like ESX, vRP, EssentialMode or whatever is out there)</h1>

 So we can't redistribute it into our framework without permission?
 Yes you CAN implement AND redistribute it into frameworks, altough I would HIGHLY appreciate
 it that you would send me a message (PM or so) that you are using it in your framework so
 that I know that my script is of good use and being a useful resource
 
 What is MANDATORY though when implementing it in frameworks like ESX, vRP or any other,
 is that you DO PUT THE APPROPRIATE credits in the code at my rankbar scrip section(s)!

<h1>Implementations or 'moduled versions' for gamemodes</h1>

 I'm I for example allowed to "just make an ESX version" as 'addon' for ESX and then
 publish it for ESX users?
 
 NO! You will NEED PERMISSION to do so! 
 WHY? Well simple: Since I want to prevent the forums and releases section from flooding
 with all kinds of 'alternate versions' of my script like for example:
 - XNLRankBar (original)
 - XNLRankBar [ESX Addon]
 - XNLRankBar [vRP Addon]
 - XNLRankBar [EsMode Addon]
 - XNLRankBar [MyFramework Addon]
 
 etc etc etc,
 
 This will just causes a freaking mess on the forum and impossible to decently
 maintain script. So IF there is (ENOUGH!) need/requests for an addon for one of the
 frameworks (and the framework itself doesn't want or refuses to implement it) THEN
 ONE other developer/scripter can get permission to adapt the code to make it compatible
 for that framework, but ONLY ON REQUEST.
 

Demo video: https://www.youtube.com/watch?v=-rthVdez_T0&feature=youtu.be

<h1> Main Features</h1>

	- GPWS (Ground Proximity Warning System)
		- 3 level Ground Warning system (GPWS)
			- To low, Terain
			- Terain, Terain, Terain
			- Whoop Whoop, Pull up
		- 'Bank Angle' (Defined per plane type according 'official regulations!')
		- Stall/Stickshaker sound and registration (for Point rewarding etc)
		- 'Sink Rate' message when decending to much/steep/fast while landing
		- V1 message when achieving "V1" (the takeoff speed REQUIRED for a vald takeoff in my version though!)
		- "Ring, Ring" (Bells) alarm on heavy engine damage/fire
		- "Decision Height" announcement when achieving the required cruising altitude for the current airplane
		- "Don't Sink" message when decending during takeoff (losing altitude)
		- 2 levels of (landing)Gear messages
			- "To Low Gear" warning on first detection
			- Continous Landing Gear beep when ignoring the "To Low Gear" message and continueing to decent

	- "Glide Slope" Automated Landing for certain plane models
		- When making the approach correctly AND having having completed a full takeoff (incudling going to 'decision height')
		  you will get the option to press [F10] and activate 'glide slope', The "Aircraft Computer" will then take over the landing
		  and proceed to land.
		- Using "Glide Slope" is only possible when you have your landing gear deployed, don't have (to much)
		  damage and when you're the main pilot
		- I'm 100%!! aware that this is NOT what glide slope actually is and what it's for, but it's a 'nice fitting' sound effect
		  to add a bit more dimension to the game itself. If you are 'to annoyed and whiny' that it's not correct or 'real enough'
		  then please be my guest and replace the ogg with something you would like to use ;) :P For my server and players it's a
		  good fit for some extra dimension to the flying experiance in GTA (and that's all i've made this mod for)
		- "Glide Slope" can be deactivated again (if it goes 'roque' or handles incorrect, which IS possible since it's GTA AI) by
		  pressing [F10] again
		- So to add: YES it will help landing in 90% of the cases, BUT if you didn't approached 'decently enough', to fast or 'to angled'
		  it CAN still f*ck up big time and even crash, it's still 'game AI' over which I/we don't have full control.
		- The use of "Glide Slope" is also registred by the script and will report back when it reports XNL_OnPlayerFlightCompleted,
		  so you can 'deduct points or XP/RP' for example during pilot missions if the player didn't landed manually.

		  
	- TCAS (Traffic Collision Avoidance System)
		- "TCAS Test Pass" Check/Message when plane is 'okay' and allowed for take off (not much to no damage)
		- "TCAS Test Fail BEEP" Check/Message when plane is (slighly) damaged and it's NOT adviced to fly it!
		- "TCAS Test Fail BEEP" followed by non stop "Beep, Beep, Beep": Plane is TO damaged to fly and should DEFINITLY not be used!
			- NOTE: This "Beep, beep, beep..." only happens when starting the plane or on ground, 
			  when sustaining damage mid air it will NOT trigger/activate this alarm
		- "Traffic, Traffic" when detecting planes, helicopters or OFFICIAL (LS) Airport Vehicles in it's path or behind it
			- It will ONLY detect vehicles which are occupied! So you won't go 'bonkers' due to parked planes and such
			- It will only trigger/activate while you are moving/taxiing (standing still/holding does not cause warning)
		- "Climb, climb now" when detecting a plane or helicopter infront or behind it which is LOWER than the player
		- "Decend, Decend Now" when detecting a plane or helicopter infront or behind it which is HIGHER than the player
		- "Clear Of Conflict" is called out when TCAS has detected that either the ground or air conflict has been resolved
		- If TCAS detects a fail, it will NOT call out TCAS alerts on the runway or in flight either!

	- 24 additional Custom sound effects (to GTA) optimized and well
		- Sounds are from original recordings from a Boeing Cockpit during test procedures
		- Sounds are optimized for bandwidth performance (24 ogg sound effects which are all together bellow 1MB! (980kb))
		- Sound effects are as much as possible normalized (same volume level)
		- All sound effects are 'optimally' edited to reduce/remove any white noise from the microphone and surrounding
		  during recording as much as possible to.
	  
	- "Dedicated Airspaces"
		- Different aircraft models and types will have their own 'assigned airspace'
			- Crop Duster Plane						16	 - 100M
			- Helicopters							50	 - 500M
			- Smaller "Private Planes"				650  - 750M
			- Shamal, Luxor, Luxor2 and Nimbus:		700  - 800M
			- Titan									850  - 950M
			- Miljet								1000 - 1100M	
			- Jet & CargoPlane						1200 - 1300M
	
			Smaller "Private Planes" Include: Dodo, Cuban800, Mammatus, Velum and Velum2
		- IF you keep the Altitude and 'flight instructions' text enabled at the bottom right of the screen,
		  it will also tell you if you are in your designated airspace, if you are above or bellow it, and it will
		  also show if you need to keep climbing (after take off)
		  
	- Automatic Map-Blips per airport
		- Can be turned on and off by a simple variable
		- Can set PER plane/aircraft type (supported by this script) if it is allowed to land there and thus should show the blip
		- Blips can be set to only show when near them or always show them on the mini map (ONLY when in a plane ofcourse)
		- Blips will automatically be removed when leaving the aircraft
		- Every blip has it's own color so it's much easier to keep them appart during flights
		
	- Airports have their own zone/radius and are recognized as 'allowed to land zone'
		- These can be enabled and disabled PER aircraft or aircraft type (in the settings)
		- Radius can easily be changed in the lua file also
		- When you set an airport to 'not allowed' for a certain plane, GPWS will not recognize it as an 'landable zone' either
	
	- Optional support for the Aircraft carrier 
		- You will need to have it enabled on your game/map (with example by using Bob74_IPL)
		- Setting on variable to true will enable the blip and landing zone recognition by GPWS for the allowed planes there
	
	- Autopilot models
		- Players can use autopilot mode when they are at the correct cruising altitude
		- Gears have to be rectracted, aircraft damage (engine) has to be bellow 500 to use
		- ONLY the pilot can use the autopilot function
		- When using autopilot the GPWS warnings and TCAS will be IGNORED!
			- BUT IF there is a co-pilot he/she WILL still hear/get the warnings though!
				- This CAN be solved by syncing the auto pilot state over network through the server
				  but I DECIDED ON PURPOSE not to do so, since for MY server it's unneeded extra data being sent
				  which we don't need anyway (so it's NOT important if that data is synced for us!)
				  Since when doing co-op missions as pilots, our co-pilot will NOT be punished for pilot errors anyway!
		- Auto pilot will fly at it's assigned cruising altitude to the waypoint set on the map, then when reaching it
		  it will keep circling that location.
		- Keys and key (display) name are easily changable in the settings variables
		- Autopilot ability can be enabled/disabler PER plane type defined in this script
		- Autopilot can also be fully disabled in the script entirely if you want to
				
		Some important notes on the autopilot: It's a fully AI controlled system (by using an exsiting game/engine native!)
		which also means it CAN behave a bit erratic from time to time by making sudden turns or making the 'holding circle'
		insanely large! Although we have tested MANY parameters and came to the conclusion that the current settings work
		best for a fairly decent and stable flight. Although please do keep in mind that the autopilot IS capable of flying
		into stuff if for some weird reason it's path becomes obstructed (by modded buildings or when it has for some unknown
		reason decended to much (decending SHOULD NOT happen though!). The autopilot will also NOT take TCAS messages into account
		and will just IGNORE them, so you will still need to monitor your plane like a real pilot should!
		
	All (SUPPORTED!) planes (which are the 'commercial ones') have TCAS and GPWS and all have their own flight data which it responds to,
	like banking angles, assigned flight altitude, sink rates etc. Military aircrafts such as the jet DO NOT have my system included
	(but you could easily add them yourself if needed) since we do not use military aircrafts or weaponized aircrafts at all on our server.
		
	REALISM NOTE: Of course it's not nearly as realistic as a flight simulator (NOT AT ALL even), BUT it does give a much more enhanced
	experiance to flying in GTA, plus it adds alot more 'effect' and 'feeling' to flight missions or on roleplay servers. Especially
	since it also includes assigned airspaces, allowed airports for certain groups etc.
		
	Please do note that TCAS ONLY supports "Climb, Climb now" and "Decend, Decend Now" messages to 'avoid collision', however it does
	NOT take in account your current flying altitude so it might declare 'Decend now" while you are already 'near crashing' altitude!
	TCAS does NOT detect or 'avoid' side crashes (but it SHOULD report to the player comming from your side that it should either
	decend or climb). Neither does it cover 'crossing situations' like it would in Real Life. AND NOPE TCAS will NOT always give
	'smart advice' but often it did proven effective during our testing phase, so far even that it has prevented multiple crashes
	with our AI air traffic several times on instances where we REALLY didn't noticed them on time. And YUP it DID saved our plane,
	so even though it's limited it definitly has effect haha.
	
	GPWS does report if the user has landed, and if it has detected you're on (or NEAR) an airport, BUT it does NOT detect if you used
	the appropiate landing direction or if you even landed ON the landingstrip. This WOULD be possible by doing A LOT of scans and such
	for detection on roads, in radius searches etc. But I did NOT WANTED that since it's also much more resourche intensive, and would
	make this mod MUCH more work and give it a 'near flight simulator' effect (which would require MUCH more other details to be included).
	I just want(ed) to add a BIT more realism to flying in GTA for role-playing and the flight missions and jobs we have on our server,
	and that is what worked out very well and even got expanded to much more 'detail' than I originally planned on doing (AGAIN :P)
	
	Known "bugs/issues"
	- Sometimes it happens that the "Aircraft Computer" will notify you with "Don't sink, Don't sink" during take off (meaning you
	  should not decent while taking off) while you didn't even did so. This happens because the plane for example just registered a (much)
	  lower altitude suddenly due to flying over a building for example. If this issue 'bugs you' then you can easily disable the don't sink
	  message in the settings bellow :)
	
	- However this isn't a bug, I will note it here since lots of people don't seem to understand how the game AI works and how 'limited' it
	  is to interact with surroundings or the AI actions (not limited in general obviously but it is if you need to do SUPER speciffic things):
	  Sometimes the A.I. of the autopilot or "Glide Slope" CAN go bonkers, it didn't happend AT ALL with us anymore after finetuning on the
	  autopilot, but the "Glide Slope" AI CAN sometimes decide to make completly ridicilous moves, turns or irresponsible actions (or in the
	  MOST EXTREME cases even cause an crash or death). No idea why, and it's IMPOSSIBLE to get full control over this. BUT if YOU do a decent
	  approach and stay a bit within the set limits of approach, you should be perfectly fine and no issues will happen :)
	  
