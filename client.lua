--[[
==========================================================================================================
 Main Features
==========================================================================================================
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
	  
]]

--========================================================================
-- These are SETTINGS which you COULD change, but ON OWN RISK ;)
--========================================================================
GPWS_Volume = 0.5								-- Setting: The Volume for GPWS and TCAS (Ground Proximity Warning System) and (Traffic Collision Avoidance System)
GPWS_LoopAlarmVolume = 0.3						-- Setting: The volume for the looped alarms (fire, Total TCAS Failure etc)
TCASSCanRadiusGround = 40.0						-- Setting: The "Radar Scan" radius size on ground for TCAS (PER scan circle!)
TCASSCanRadiusAir = 80.0						-- Setting: The "Radar Scan" Radius size in air for TCAS (PER scan cirle!)
TCASGroundDetectMovingOnly = false				-- Setting: If TCAS only responds to moving planes/vehicles on ground (even when it does have a pilot/driver in it!)
TCASGroundDetectGroundPersonelCARS = true		-- Setting: If TCAS will also detect ground vehicles (ONLY OFFICIAL AIRPORT VEHICLES!)
XNL_AircraftComputerDebugOutput = false			-- Setting: Proberbly not important for you ;) (when set to true it outputs some test strings to the F8 console for testing purposes)
XNL_PlanesAllowUseOfAircraftCarrier = true		-- Setting: Enable this one IF you have the aircraft carrier loaded and/or when you're using Bob74_IPL with the carrier enabled!
XNL_CreateAirportBlips = true					-- Setting: This will automatically create blips on the map for airports where the aircraft is allowed to land at (and remove it when getting out again)
XNL_ShowBlipShortRangeOnly = false				-- Setting: This setting will toggle the blips (IF set active above) to only show neaby (true) or always show them on the radar/map (true) (ONLY WHILE IN A PLANE!)
XNL_ShowAltitudeInformationAtBottom = true		-- Setting: If this script should draw altitude information and 'flight status/instructions' on the bottom right of the screen
XNL_AutoPilotSystemEnabled = true				-- Setting: If the autopilot system is/can be enabled for planes on which it's equiped (can be set PER plane in their settings bellow)
AutoPilotKeyName = "~INPUT_DROP_AMMO~"			-- [F10] Default, The "Display Name" for the AutoPilot Key  (Others here: https://docs.fivem.net/game-references/controls/)
AutoPilotKeyNumber = 57							-- [F10] Default, The "Key Number" for the AutoPilot Key	(Others here: https://docs.fivem.net/game-references/controls/)
XNL_GlideSlopeSupportOn = true					-- Setting: If [F10] can also be used during a CORRECT landing procedure to initiate 'Glide Slope' (automated landing in our instance)
XNL_GlideSlopeRadius = 130.0					-- The Detection Radius per radius (every landingstrip has 4 to 5 of them), increade to make detection sooner, decrease if they are conflicting to much (planes suddenly going to the runway next to it)
XNL_DisableDontSink = true						-- If you or your players are 'to annoyed' by the 'small don't sink issue bug' then you can disable it here

--=============================================================================================================================
-- Bellow are settings and angles per plane/aircraft or type,
-- YES this could have been WAY more efficient and or 'clean' coded or by using tables, config files, bla bla bla
-- I know that very well ;) I just made it simple like this so it's also EASIER TO USE for beginners and easier to just
-- "copy-paste" and add/adapt is easier to their own needs (also makes it easier for them to add more planes if they need to)
--=============================================================================================================================
--=============================================================================================================================
-- Settings for the shamal
-- Data is based on the Learjet 55 (But adapted a bit to suitable use for GTA V)
--=============================================================================================================================
XNL_PlaneShamalBankAngleLimit = 65.0			-- Setting: BankAngle limit for the Shamal
XNL_PlaneShamalSinkRateAngle = -30.0			-- Setting: Sinkrate (ANGLE) Limit for the Shamal
XNL_PlaneShamalSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the shamal
XNL_PlaneShamalV1Speed = 50.0					-- Setting: The Propper V1 speed needed for the shamal
XNL_PlaneShamal_GPWS_FirstWarning	= 200.0		-- Setting: First warning for "Terain"
XNL_PlaneShamal_GPWS_PanicWarning	= 180.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneShamal_GPWS_PullUPWarning	= 150.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneShamal_GPWS_CruiseHeightOK	= 700.0		-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneShamal_GPWS_CruiseHeightMax = 800.0	-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneShamal_PlayerToGround = 2.0			-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneShamal_TCAS_GPWS = true				-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneShamal_Recog_AP1 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneShamal_Recog_AP2 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneShamal_Recog_AP3 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneShamal_Recog_AP4 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneShamal_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneShamal_AllowAutoPilot = true			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneShamal_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)
--=============================================================================================================================
-- Settings for the Luxor and Luxor2 (And I PERSONALLY made them the same as the shamal)
-- looking at the handling between the shamal, luxor and luxor2 there are just some minor differences but
-- I litterally don't give a crap :P (On MY server they are just treated as 'rich guy' livery's that's it)
-- MINOR adjustment though: the Luxor's require a MALLER sinkrate angle due to the 'rich people on board'
-- needing more comfort :P
-- Data is based on the Learjet 55 (But adapted a bit to suitable use for GTA V)
--=============================================================================================================================
XNL_PlaneLuxorBankAngleLimit = 65.0				-- Setting: BankAngle limit for the Shamal
XNL_PlaneLuxorSinkRateAngle = -20.0				-- Setting: Sinkrate (ANGLE) Limit for the Shamal
XNL_PlaneLuxorSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the shamal
XNL_PlaneLuxorV1Speed = 50.0					-- Setting: The Propper V1 speed needed for the shamal
XNL_PlaneLuxor_GPWS_FirstWarning	= 200.0		-- Setting: First warning for "Terain"
XNL_PlaneLuxor_GPWS_PanicWarning	= 180.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneLuxor_GPWS_PullUPWarning	= 150.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneLuxor_GPWS_CruiseHeightOK	= 700.0		-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneLuxor_GPWS_CruiseHeightMax = 800.0		-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneLuxor_PlayerToGround = 2.0				-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneLuxor_TCAS_GPWS = true					-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneLuxor_Recog_AP1 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneLuxor_Recog_AP2 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneLuxor_Recog_AP3 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneLuxor_Recog_AP4 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneLuxor_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneLuxor_AllowAutoPilot = true			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneLuxor_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--=============================================================================================================================
-- Settings for the titan
-- Data is based on the Lockheed C-130 Hercules (But adapted a bit to suitable use for GTA V)
-- Note: Fly's in a flyzone 50m higher than the shamal's and 50m BELLOW the miljet's!
-- This one is an "extra difficulty plane" on our server since we have re-skinned it as a "UPS Plane"
-- which does short cargo trips between airports
--=============================================================================================================================
XNL_PlaneTitanBankAngleLimit = 60.0				-- Setting: BankAngle limit for the titan
XNL_PlaneTitanSinkRateAngle = -25.0				-- Setting: Sinkrate (ANGLE) Limit for the titan
XNL_PlaneTitanSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the titan
XNL_PlaneTitanV1Speed = 50.0					-- Setting: The Propper V1 speed needed for the titan
XNL_PlaneTitan_GPWS_FirstWarning	= 200.0		-- Setting: First warning for "Terain"
XNL_PlaneTitan_GPWS_PanicWarning	= 180.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneTitan_GPWS_PullUPWarning	= 150.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneTitan_GPWS_CruiseHeightOK	= 850.0		-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneTitan_GPWS_CruiseHeightMax = 950.0		-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneTitan_PlayerToGround = 2.0				-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneTitan_TCAS_GPWS = true					-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneTitan_Recog_AP1 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneTitan_Recog_AP2 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneTitan_Recog_AP3 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneTitan_Recog_AP4 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneTitan_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneTitan_AllowAutoPilot = true			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneTitan_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--=============================================================================================================================
-- Settings for the Jet
-- Data is based on the Lockheed C-130 Hercules (But adapted a bit to suitable use for GTA V)
-- Note: Fly's in a flyzone 250m higher than the Titans and thus 400m higher than the shamals
--=============================================================================================================================
XNL_PlaneJetBankAngleLimit = 35.0				-- Setting: BankAngle limit for the Jet
XNL_PlaneJetSinkRateAngle = -25.0				-- Setting: Sinkrate (ANGLE) Limit for the Jet
XNL_PlaneJetSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the Jet
XNL_PlaneJetV1Speed = 50.0						-- Setting: The Propper V1 speed needed for the Jet
XNL_PlaneJet_GPWS_FirstWarning	= 200.0			-- Setting: First warning for "Terain"
XNL_PlaneJet_GPWS_PanicWarning	= 180.0			-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneJet_GPWS_PullUPWarning	= 150.0			-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneJet_GPWS_CruiseHeightOK = 1200.0		-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneJet_GPWS_CruiseHeightMax = 1300.0		-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneJet_PlayerToGround = 10.0				-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneJet_TCAS_GPWS = true					-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneJet_Recog_AP1 = true					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneJet_Recog_AP2 = false					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneJet_Recog_AP3 = false					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneJet_Recog_AP4 = false					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneJet_Recog_AP5 = false					-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneJet_AllowAutoPilot = true				-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneJet_AllowGlideSlope = true				-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--=============================================================================================================================
-- Settings for the Nimbus
-- Data is based on the Learjet 55 since i could not find a really matching real plane (But adapted a bit to suitable use for GTA V)
-- Same Altitude as shamals
--=============================================================================================================================
XNL_PlaneNimbusBankAngleLimit = 65.0			-- Setting: BankAngle limit for the Nimbus
XNL_PlaneNimbusSinkRateAngle = -25.0			-- Setting: Sinkrate (ANGLE) Limit for the Nimbus
XNL_PlaneNimbusSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the Nimbus
XNL_PlaneNimbusV1Speed = 50.0					-- Setting: The Propper V1 speed needed for the Nimbus
XNL_PlaneNimbus_GPWS_FirstWarning	= 200.0		-- Setting: First warning for "Terain"
XNL_PlaneNimbus_GPWS_PanicWarning	= 180.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneNimbus_GPWS_PullUPWarning	= 150.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneNimbus_GPWS_CruiseHeightOK	= 700.0		-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneNimbus_GPWS_CruiseHeightMax = 800.0	-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneNimbus_PlayerToGround = 2.0			-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneNimbus_TCAS_GPWS = true				-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneNimbus_Recog_AP1 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneNimbus_Recog_AP2 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneNimbus_Recog_AP3 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneNimbus_Recog_AP4 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneNimbus_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneNimbus_AllowAutoPilot = true			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneNimbus_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--=============================================================================================================================
-- Settings for the Miljet
-- Data is based on the Learjet 55 since i could not find a really matching real plane (But adapted a bit to suitable use for GTA V)
-- fly's 200m ABOVE the shamal class and 200m BELLOW the Jet's 
--=============================================================================================================================
XNL_PlaneMiljetBankAngleLimit = 65.0			-- Setting: BankAngle limit for the Miljet
XNL_PlaneMiljetSinkRateAngle = -25.0			-- Setting: Sinkrate (ANGLE) Limit for the Miljet
XNL_PlaneMiljetSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the Miljet
XNL_PlaneMiljetV1Speed = 50.0					-- Setting: The Propper V1 speed needed for the Miljet
XNL_PlaneMiljet_GPWS_FirstWarning	= 200.0		-- Setting: First warning for "Terain"
XNL_PlaneMiljet_GPWS_PanicWarning	= 180.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneMiljet_GPWS_PullUPWarning	= 150.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneMiljet_GPWS_CruiseHeightOK	= 1000.0	-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneMiljet_GPWS_CruiseHeightMax = 1100.0	-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneMiljet_PlayerToGround = 2.5			-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneMiljet_TCAS_GPWS = true				-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneMiljet_Recog_AP1 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneMiljet_Recog_AP2 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneMiljet_Recog_AP3 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneMiljet_Recog_AP4 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneMiljet_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneMiljet_AllowAutoPilot = true			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneMiljet_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--=============================================================================================================================
-- Settings for the CargoPlane
-- Note: Fly's in the same flyzone as jets
--=============================================================================================================================
XNL_PlaneCargoPlaneBankAngleLimit = 45.0			-- Setting: BankAngle limit for the CargoPlane
XNL_PlaneCargoPlaneSinkRateAngle = -25.0			-- Setting: Sinkrate (ANGLE) Limit for the CargoPlane
XNL_PlaneCargoPlaneSinkRateSpeed = 50.0				-- Setting: UPPER sinkrate (SPEED) limit for the CargoPlane
XNL_PlaneCargoPlaneV1Speed = 50.0					-- Setting: The Propper V1 speed needed for the CargoPlane
XNL_PlaneCargoPlane_GPWS_FirstWarning	= 200.0		-- Setting: First warning for "Terain"
XNL_PlaneCargoPlane_GPWS_PanicWarning	= 180.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneCargoPlane_GPWS_PullUPWarning	= 150.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneCargoPlane_GPWS_CruiseHeightOK = 1200.0	-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneCargoPlane_GPWS_CruiseHeightMax = 1300.0	-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneCargoPlane_PlayerToGround = 7.0			-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneCargoPlane_TCAS_GPWS = true				-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneCargoPlane_Recog_AP1 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCargoPlane_Recog_AP2 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCargoPlane_Recog_AP3 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCargoPlane_Recog_AP4 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCargoPlane_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCargoPlane_AllowAutoPilot = true			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneCargoPlane_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--=============================================================================================================================
-- Settings for the (crop) Duster
-- Note: These fly insanely low at our server due to job requirements at the farms!
--=============================================================================================================================
XNL_PlaneCropDusterBankAngleLimit = 0.0				-- Setting: BankAngle limit for the CargoPlane
XNL_PlaneCropDusterSinkRateAngle = 0.0				-- Setting: Sinkrate (ANGLE) Limit for the CargoPlane
XNL_PlaneCropDusterSinkRateSpeed = 0.0				-- Setting: UPPER sinkrate (SPEED) limit for the CargoPlane
XNL_PlaneCropDusterV1Speed = 0.0					-- Setting: The Propper V1 speed needed for the CargoPlane
XNL_PlaneCropDuster_GPWS_FirstWarning	= 0.0		-- Setting: First warning for "Terain"
XNL_PlaneCropDuster_GPWS_PanicWarning	= 0.0		-- Setting: Second warning for "Terain, Terain, Terain"
XNL_PlaneCropDuster_GPWS_PullUPWarning	= 0.0		-- Setting: "Whoop Whoop Pullup warning height"
XNL_PlaneCropDuster_GPWS_CruiseHeightOK = 16.0		-- Setting: The Cruiseheight when it recognized that the takeoff has completed
XNL_PlaneCropDuster_GPWS_CruiseHeightMax = 100.0	-- Setting: The maximum Cruiseheight allowed/Advised before reaching other airspaces
XNL_PlaneCropDuster_PlayerToGround = 5.0			-- Setting: The height of the player to ground in this plane (a BIT more though!)
XNL_PlaneCropDuster_TCAS_GPWS = false				-- Setting: Determines if this plane acually uses the TCAS/GPSW system (audio)
XNL_PlaneCropDuster_Recog_AP1 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCropDuster_Recog_AP2 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCropDuster_Recog_AP3 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCropDuster_Recog_AP4 = true				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCropDuster_Recog_AP5 = false				-- Setting: If this plane recognizes this airport and/or is allowed to land there
XNL_PlaneCropDuster_AllowAutoPilot = false			-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)
XNL_PlaneCropDuster_AllowGlideSlope = true			-- Setting: IF this plane is allowed to use "Glide Slope" (Automated landing) (when meeting the right conditions!)

--========================================================================================
-- These variables remember the current values for the plane which the player has entered
-- Changing these here does NOT have ANY effect, neither do the values listed here,
-- these will be instantly changed upon entering one of the supported aircrafts
--========================================================================================
XNL_CurrentPlaneBankAngleLimit = 65.0	-- BankAngle Limit for the detected plane
XNL_CurrentPlaneSinkRateAngle = -15.0	-- Sinkrate (ANGLE) Limit for the detected plane
XNL_CurrentPlaneSinkRateSpeed = 50.0	-- UPPER sinkrate (SPEED) limit for the detected plane
XNL_CurrentV1Speed = 50.0				-- The Propper V1 speed needed for takeoff for the detected plane
GPWS_CruiseHeightOK	= 250.0				-- The Cruiseheight when it recognized that the takeoff has completed for the detected aircraft
GPWS_CruiseHeightMax = 250.0			-- The 'maximum' Cruiseheight for the detected aircraft (before entering/leaving other airspaces)
GPWS_FirstWarning	= 200.0				-- First warning for "Terain" for the detected aircraft
GPWS_PanicWarning	= 180.0				-- Second warning for "Terain, Terain, Terain" for the detected aircraft
GPWS_PullUPWarning	= 150.0				-- "Whoop Whoop Pullup warning height" for the detected aircraft
XNL_CurrentPlaneRecogAP1 = false		-- If the current plane recognizes this airport and/or is allowed to land there
XNL_CurrentPlaneRecogAP2 = false		-- If the current plane recognizes this airport and/or is allowed to land there
XNL_CurrentPlaneRecogAP3 = false		-- If the current plane recognizes this airport and/or is allowed to land there
XNL_CurrentPlaneRecogAP4 = false		-- If the current plane recognizes this airport and/or is allowed to land there
XNL_CurrentPlaneRecogAP5 = false		-- If the current plane recognizes this airport and/or is allowed to land there
XNL_CurrentPlane_AllowAutoPilot = false	-- Setting: IF this plane is allowed to use autopilot (when meeting the right conditions!)

--========================================================================
-- These are variables used BY the script, just don't mess with them 
-- if you don't know what or why you are doing that ;) 
-- They are explained but should ONLY be altered in the script itself!
--========================================================================
XNLPlayerRef = GetPlayerPed(-1)					-- NOT effective here since it will FAIL if you ONLY call it here due to the game still loading on first login!
XNL_AircraftComputerOn = false					-- Turns the "Aircraft Computer" on or off (BY the threads/scripts, DO NOT modify it here!)
XNL_AircraftComputerRunning = false				-- Registers if the 'Aircraft Computer' is running (and prevents multiple thread instances)
XNL_AircraftComputerSoundcardStarted = false	-- Registers if the 'Aircraft Computer Soundcard' is running (and prevents multiple thread instances)
XNL_PlayerAircraftHeight = 1.8					-- To tell the script what hight to 'deduct' from the to ground measurements (ALSO maintained per aircraft by scripts!)
XNL_PlaneHasTCASGPWS = true						-- Remembers IF the current plane/aircraft has TCAS/GPWS support
XNL_PlaneRectractableGears = true				-- Remembers IF the current plane/aircraft can retract it's gears (only needed for two in my server/case)
XNL_PlaneFirstTakeOff = false					-- Remembers if it's the first take off for this flight
XNL_PlaneFirstStart = false						-- Remembers if it's a first or fresh start for the plane
XNL_TCASReady = false							-- remembers If TCAS is ready
XNL_V1Declared = false							-- Remembers if it declared V1
XNL_EngineAlarm = false							-- Remembers if Engine Alarm has been activated
XNL_EngineAlarm2 = false						-- Remembers if Engine Alarm 2 has been activated
XNL_StallAlarm = false							-- Remembers if Stall Alarm has been activated
XNL_GearsAlarm = false							-- Remembers if Gears To Low alarm (BEEPER!) has been activated
XNL_StartOtherAlarms = false					-- Tells IF TCAS has booted and is ready for other alarms
XNL_V1Ignored = false							-- Remember if the player ignored V1 and taken off before V1 declaration
XNL_TakeOffCompleted = false					-- This tells the system that it has completed take off procedure
XNL_RestartFlight = false						-- Tells the system internally if it needs to restart the flight statistics (when a flight has been aborted of not fully done as it should (skipping V1, landing before reaching cruising altitude etc)
XNL_GroundTrafficConflict = false				-- Remembers if TCAS found an Ground Conflict
XNL_AirConflict = false							-- Remembers if TCAS found an Air Conflict
XNL_TCASFailed = false							-- Remembers if TCAS failed to start (on plane damage during starting or takeoff)
AirportTakeoff = 0								-- Remembers from which (registred) airport the player has taken off
AirportLanded = 0								-- remembers on which (registred) airport the player has landed
LastAirPortSeen = 0								-- Remembers which was the last airport that was recognized by TCAS
TCASScanPos = 1									-- Used to determine/set the current 'radarping' of TCAS (Does several in one "scan round")
TCASScanRoundComplete = false					-- This is true when it has completed scanning all positions (front and rear)
TCASConflictsFoundA = 0							-- How many conflicts where found IN AIR during one scan round
TCASConflictsFoundG = 0							-- How many conflicts where found ON GROUND during one scan round
TCASClearScans = 6								-- How many FULL clear of conflict scans it has done AFTER an conflict (delays the "clear of conflict" to be sure)
TCASInsctruction = 0							-- Remembers the last instruction it gave (Climb or Decent) to prevent alternating messages
TCASConflictCalledout = false					-- Remembers that it did actually gave TCAS instructions over audio (to prevent "random" "Clear of conflicts" while it didn't called a conflict)
XNL_LastMaxAltDurTakeOff = 0.0					-- Remembers the last max altitude during takeoff procedure (checked by the "Don't Sink" message during takeoff)
XNL_PlayerPilotOrCoPilot = 0					-- Remembers if the player is a pilot (1), co-pilot (2) or normal Passenger (0)
XNL_PlaneHudText = ""							-- This is the 'buffer' for the altitude and 'flight instruction' text at the bottom right of the screen
AP1_Blip = nil									-- The Refrence/Handle to the blip for the set airport on this blip (so we can remove it when getting out of the aircraft)
AP2_Blip = nil									-- The Refrence/Handle to the blip for the set airport on this blip (so we can remove it when getting out of the aircraft)
AP3_Blip = nil									-- The Refrence/Handle to the blip for the set airport on this blip (so we can remove it when getting out of the aircraft)
AP4_Blip = nil									-- The Refrence/Handle to the blip for the set airport on this blip (so we can remove it when getting out of the aircraft)
AP5_Blip = nil									-- The Refrence/Handle to the blip for the set airport on this blip (so we can remove it when getting out of the aircraft)
XNL_AutoPilotActive = false						-- Remembers if the Autopilot is activated or not (IF it's enabled and supported by the aircraft!)
CurrentAircraftHasGlideSlope = false			-- Remembers if the current aircraft has "glide slope" (NEVER use it on helicopters!!!!)

--===============================================================================================================
-- These are all variables which are rememberd by the script because WE use these on OUR server to reward XP for 
-- good flights and give bonuses to players whom achieve pilot missions with minimum error(s)
-- You could "rip all these out" (and from the sections which use them) or you could also use them in such a way
-- when using my "XNL_OnPlayer events" :)
--===============================================================================================================
DontSinkFaultTakeOff = false	-- Remembers if the player caused "Don't Sink" warning during takeoff
BankAngleFaultTakeOff = false	-- Remembers if the player caused "Bank Angle" warning during takeoff
StallFaultTakeOff = false		-- Remembers if the player (nearly) caused a stall during takeoff
FaultFlightTerain1 = false		-- Remembers if the player caused a 'level 1' terrain warning during flight	(First Warning)
FaultFlightTerain2 = false		-- Remembers if the player caused a 'level 2' terrain warning during flight (Second warning)
FaultFlightTerain3 = false		-- Remembers if the player caused a 'level 3' terrain warning during flight (Closest To Ground)
FaultFlightBank	= false			-- Remembers if the player caused "Bank Angle" warning DURING FLIGHT (this one is NOT checked during takeoff!)
FaultFlightSinkRate	= false		-- Remembers if the player caused "Sink Rate" warning while landing
FaultFlightGears1 = false		-- Remembers if the player caused "To Low Gears" warning while landing (Forgot landing gear) (Warning level 1!)
FaultFlightGears2 = false		-- Remembers if the player caused "BEEEEEEEEEP" warning while landing (Forgot landing gear AND ignored "To Low Gears" warning) (Warning level 2!)
FaultFlightStall = false		-- Remembers if the player caused "StickShaker" warning during flight (Stalling)
HasUsedAutoPilot = false		-- Remembers if the player has used the Autopilot during a flight (can be used to deduct points/XP for example on missions)
HasUsedGlideSlope = false		-- Remembers if the player has used the Glide Slope during landing (can be used to deduct points/XP for example on missions)
PrevGlideSlopeDetect = 0		-- Remembers if it has previously (on the last thread loop) seen a glideslope and uses that to show the "Press [F10] for glide slope" message or not

function XNL_OnPlayerTakeoffComplete(V1ProperlyDeclared, NumberOfPilotErrors)
	-- NumberOfPilotErrors returns a value of error (TYPES) caused by the player during take off
	-- on my server we deduct a certain amount of percentage of the total XP/RP received depending
	-- on the pilot errors made or not (This is just an example on how you could use this funtion)
	if V1ProperlyDeclared then
		-- Use this if you want to do something special/extra if the player completed takeoff
		-- while waiting for the correct V1 speed
	else
		-- and here if they did NOT waited for propper V1 speed
		-- On my server we for example give a (huge) fine to (licenced commercial pilots)
		-- whom don't use the "official protocols"
	end
end

function XNL_OnPlayerEnterAircraft()
	-- Triggered when the player enters an aircraft (supported by this script!)
end

function XNL_OnPlayerTakeOffAborted()
	-- This one is called when the player has aborted the take off before reaching cruising altitude
end

function XNL_OnPlayerIllegalFlightComplete()
	-- This one is called when the player lands on a different (or no) airport than taken off from
	-- without first achieving his/her assigned flight altitude
end

function XNL_OnPlayerFlightCompleted(TakeOffFrom, LandedAt, TotalPilotErrors, PlayerUsedAutopilot)
	-- This one is called after completing a flight (including landing and stopping the plane)
	-- TakeOffFrom = the number of the airfield where the player took off from
	-- LandedAt = the number of the airfield where the player landed at
	-- TotalPilotErrors = Number of errors made during flight and landing (NOT including takeoff errors (that one has it's own function))
	-- PlayerUsedAutopilot = Tells if the player has used autopilot during the last flight (can be used to deduct points/xp)
end

function XNL_OnPlayerCrashedIntoWater()
	-- Well the name says it all ;) (When the player crashed the plane into water)
end

function XNL_OnPlayerDied()
	-- When the player died in the plane
end

function XNL_OnPlayerIllegallyBailedCommercialAircraft()
	-- Triggered when the player bails/jumps out his/her aircraft during flight
	-- NO MATTER THE STATE OR DAMAGE OF THE PLANE!!!
	-- Since it's ALWAYS illegal to just 'bail from' commercial aircrafts in CoE!
end

function XNL_OnPlayerDestoyedAircraft()
	-- Triggered when the player destroyed the aircraft in ANY cirumstance:
	-- Death, exploding, flown into ground, into buildings, mid air crash, shot down, chopped of the wings while taxiing,
	-- Only crashed into water has it's own function, even if the player could eat the plane, it would be called here (good luck trying that though :P)
end

function XNL_OnPlayerNormalExitAircraft()
	-- This one will be triggered on a normal exit of the aircraft (well it SHOULD only trigger
	-- this function if i didn't forgot or f*cked something up :P)
end


--========================================================================
-- This "section" is used to show 'popup messages' on the top left
-- of the screen, also known as "helper text"
--========================================================================
function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	EndTextCommandDisplayHelp(0, 0, true, 4000) 
end

--========================================================================
-- Begin Of The "Sound Driver" using a NUIMessage through HTML file
--========================================================================
function PlaySoundLocally(soundFile, soundVolume)
	-- Do not allow playback of (new) audio if the "Aircraft Computer Soundcard" is turned off!
    if not XNL_AircraftComputerSoundcardStarted then return end
    SendNUIMessage({
        transactionType     = 'playSound',
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end

function PlaySoundLoop(SndChannel, soundFile, soundVolume)
	-- Do not allow playback of (new) audio if the "Aircraft Computer Soundcard" is turned off!
    if not XNL_AircraftComputerSoundcardStarted then return end
	SendNUIMessage({
        transactionType     = SndChannel,
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end

function StopSoundLoop(SndChannel)
    SendNUIMessage({
        transactionType     = SndChannel,
        transactionFile     = 'XNLNone',
        transactionVolume   = 0.0
    })
end

XNL_PlaneSoundList = {}
function IsSoundInPlaybacklist(table,key)
    return table[key] ~= nil
end


function RunSoundArray()
		-- Here we stop/prevent a 'next' error when the audio file has already been removed from the playlist queue
		-- by TCAS or GPWS itself (while at the same time this loop already 'planned it for use')
		if unexpected_condition then 
			if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Playback Already Removed from Queue") end
		end

		for _,v in pairs(XNL_PlaneSoundList) do

			if v ~= nil then
				if not XNL_AircraftComputerSoundcardStarted then
					break
				end
				PlaySoundLocally(v.File, GPWS_Volume)
				if v.Name == "TCASGroundTraffic" or v.Name == "TCASClimbNOW" or v.Name == "TCASClimbNOW" then
					TCASConflictCalledout = true
				end
				if IsSoundInPlaybacklist(XNL_PlaneSoundList, v.Name) then
					XNL_PlaneSoundList[v.Name] = nil
				end
				Wait(v.Duration)
				
				-- This makes sure that the engine fire alarm or "do no take off alarm"
				-- will ONLY happen when the TCAS system check has reported it's status
				if v.File == "17" or v.File == "10" then
					XNL_StartOtherAlarms = true
				end
			else
				--[[
				IF for some reason the playback item has been removed before it got processed we'll just
				just ignore it (instead of making the script crash :P)
				ALTHOUGH: SOMETIMES it WILL still 'try to crash' by causing an error that the 'next' call caused an
				index error. This however is VERY explainable:
				
				Let's say we have two sounds added to the list: Bank angle (duration 2400ms) and then 'pull up' (Dur: 800ms).
				Then while playing 'bank angle' the pull up situation has been resolved so it would not need to play it anymore...
				the 'pull up warning script' will then remove itself from the queue again, BUT if it was already in the list which
				had enumerated itself here, it will cause an 'invalid next call' since either the item does not exists anymore or the
				index has now been 'invalidated'.
				
				So to work around this i've decided to use a pcall (KINDA similair to an try catch exception in C# / Visual Basic).
				Which will just give a 'return false' effect when it happens. It's NOT the most clean way though but it proves to be working
				well. The only (SMALL/SHORT code) way to avoid it is to only play the frist item in the list every loop and then remove it,
				BUT this will prevent 'follow up sounds' to be played from the queue, meaning that if you have "Whoop whoop pull up" and
				"Bank Angle" added nonstop due to flying like a limping dodo (THE BIRD, not the GTA PLANE :P) it would often only
				call out "Bank Angle" due to it's duration length for example. Now it does keep loopting through the loop with an 'jump out exception'
				from time to time (not to often AT ALL, this is tested very well and long (nearly during all testing we had the 'exception popup' on to
				see when it happens and how often)
				
				YES it could be done more effeciently and cleaner, but that would have required much more code, a "handling system" for the sound queue,
				and to be honest: I could not care less since "this small side feature" on our server is just an 'extra addition' to the realism feeling
				and not a crucial part i would like to spend weeks on develepment and testing on to 'exclude every possible exception' ;) :)
				
				and that's why i've used PCALL to call this function with a 'status return' 
				]]
				break
			end
		end
end

function XNL_RunAircraftComputerSoundcard()
	if XNL_AircraftComputerSoundcardStarted then return end
	XNL_AircraftComputerSoundcardStarted = true					-- Register start of the Aircraft Computer 'Soundcard'
	Citizen.CreateThread(function()
		while XNL_AircraftComputerOn do
			Wait(0)
			if not pcall(RunSoundArray) then
				if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Audio file already removed from queue") end
			end
		end
	XNL_AircraftComputerSoundcardStarted = false				-- Register Shutdown of the Aircraft Computer 'Soundcard'
	XNL_SoundcardDisableAudioLoops()
	end)
end

-- This function is called on 'shutdown' of the Aircraft Computer's Soundcard Shutdown
-- and shutsdown audio loops which are currently active (like fire alarms etc),
-- else they will resume when dieing in the plane and respawning for example.
function XNL_SoundcardDisableAudioLoops()
	if XNL_EngineAlarm then
		XNL_EngineAlarm = false
		StopSoundLoop("stopLoop")
	end

	if XNL_EngineAlarm2 then
		XNL_EngineAlarm2 = false
		StopSoundLoop("stopLoop2")
	end

	if XNL_StallAlarm then
		XNL_StallAlarm = false
		StopSoundLoop("stopLoop3")
	end
	
	if XNL_GearsAlarm then
		XNL_GearsAlarm = false
		StopSoundLoop("stopLoop4")
	end
	
	if pcall(XNL_SoundCardFlushQueue) then
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Soundcard queue flushed") end
	end
end

function XNL_SoundCardFlushQueue()
	for _,v in pairs(XNL_PlaneSoundList) do
		XNL_PlaneSoundList[v.Name] = nil
	end
end
--========================================================================
-- End Of The "Sound Driver" using a NUIMessage through HTML file
--========================================================================

--========================================================================
-- This Thread is used to draw the Altitude and flight instructions on the
-- bottom right of the screen, this is done in it's OWN thread to prevent
-- flicker and performance issues!
--========================================================================
function XNL_RunPlaneHudText()
	Citizen.CreateThread(function()
		while XNL_AircraftComputerOn do
			Wait(0)
			if XNL_PlaneHudText ~= "" then
				drawTxt(0.5, 0.955, 0.55, XNL_PlaneHudText .. "        ", 255, 255, 255, 255)
			end
		end
	end)
end

--========================================================================
-- This section is used to read the aircraft settings per type/models
-- here you can also add support for other models
--========================================================================
function GetCurrentAircraftSetting(EntityModel)
	if EntityModel == GetHashKey('shamal') then
		XNL_CurrentPlaneBankAngleLimit 	= XNL_PlaneShamalBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneShamalSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneShamalSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneShamalV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneShamal_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneShamal_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneShamal_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneShamal_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneShamal_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneShamal_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneShamal_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneShamal_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneShamal_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneShamal_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneShamal_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneShamal_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneShamal_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneShamal_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Shamal, plane settings loaded") end 
		return true
	end

	if EntityModel == GetHashKey('luxor') or  EntityModel == GetHashKey('luxor2') then
		XNL_CurrentPlaneBankAngleLimit 	= XNL_PlaneLuxorBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneLuxorSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneLuxorSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneLuxorV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneLuxor_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneLuxor_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneLuxor_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneLuxor_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneLuxor_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneLuxor_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneLuxor_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneLuxor_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneLuxor_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneLuxor_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneLuxor_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneLuxor_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneLuxor_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneLuxor_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Luxor or Luxor2, plane settings loaded") end 
		return true
	end

	if EntityModel == GetHashKey('titan') then
		XNL_CurrentPlaneBankAngleLimit	= XNL_PlaneTitanBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneTitanSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneTitanSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneTitanV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneTitan_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneTitan_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneTitan_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneTitan_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneTitan_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneTitan_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneTitan_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneTitan_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneTitan_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneTitan_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneTitan_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneTitan_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneTitan_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneTitan_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Titan, plane settings loaded") end 
		return true
	end

	if EntityModel == GetHashKey('jet') then
		XNL_CurrentPlaneBankAngleLimit	= XNL_PlaneJetBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneJetSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneJetSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneJetV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneJet_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneJet_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneJet_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneJet_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneJet_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneJet_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneJet_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneJet_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneJet_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneJet_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneJet_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneJet_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneJet_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneJet_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Jet, plane settings loaded") end 
		return true
	end

	if EntityModel == GetHashKey('cargoplane') then
		XNL_CurrentPlaneBankAngleLimit	= XNL_PlaneCargoPlaneBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneCargoPlaneSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneCargoPlaneSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneCargoPlaneV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneCargoPlane_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneCargoPlane_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneCargoPlane_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneCargoPlane_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneCargoPlane_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneCargoPlane_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneCargoPlane_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneCargoPlane_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneCargoPlane_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneCargoPlane_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneCargoPlane_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneCargoPlane_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneCargoPlane_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneCargoPlane_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Cargoplane, plane settings loaded") end 
		return true
	end
	
	
	
	if EntityModel == GetHashKey('nimbus') then
		XNL_CurrentPlaneBankAngleLimit 	= XNL_PlaneNimbusBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneNimbusSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneNimbusSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneNimbusV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneNimbus_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneNimbus_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneNimbus_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneNimbus_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneNimbus_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneNimbus_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneNimbus_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneNimbus_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneNimbus_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneNimbus_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneNimbus_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneNimbus_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneNimbus_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneNimbus_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Nimbus, plane settings loaded") end 
		return true
	end

	if EntityModel == GetHashKey('miljet') then
		XNL_CurrentPlaneBankAngleLimit 	= XNL_PlaneMiljetBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneMiljetSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneMiljetSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneMiljetV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneMiljet_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneMiljet_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneMiljet_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneMiljet_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneMiljet_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneMiljet_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneMiljet_TCAS_GPWS
		XNL_PlaneRectractableGears		= true
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneMiljet_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneMiljet_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneMiljet_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneMiljet_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneMiljet_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneMiljet_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneMiljet_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected Miljet, plane settings loaded") end 
		return true
	end

	if EntityModel == GetHashKey('duster') then
		XNL_CurrentPlaneBankAngleLimit 	= XNL_PlaneCropDusterBankAngleLimit
		XNL_CurrentPlaneSinkRateAngle 	= XNL_PlaneCropDusterSinkRateAngle
		XNL_CurrentPlaneSinkRateSpeed 	= XNL_PlaneCropDusterSinkRateSpeed
		XNL_CurrentV1Speed 				= XNL_PlaneCropDusterV1Speed
		GPWS_CruiseHeightOK				= XNL_PlaneCropDuster_GPWS_CruiseHeightOK
		GPWS_CruiseHeightMax 			= XNL_PlaneCropDuster_GPWS_CruiseHeightMax
		GPWS_FirstWarning				= XNL_PlaneCropDuster_GPWS_FirstWarning
		GPWS_PanicWarning				= XNL_PlaneCropDuster_GPWS_PanicWarning
		GPWS_PullUPWarning				= XNL_PlaneCropDuster_GPWS_PullUPWarning
		XNL_PlayerAircraftHeight		= XNL_PlaneCropDuster_PlayerToGround
		XNL_PlaneHasTCASGPWS			= XNL_PlaneCropDuster_TCAS_GPWS
		XNL_PlaneRectractableGears		= false
		XNL_CurrentPlaneRecogAP1 		= XNL_PlaneCropDuster_Recog_AP1
		XNL_CurrentPlaneRecogAP2 		= XNL_PlaneCropDuster_Recog_AP2
		XNL_CurrentPlaneRecogAP3 		= XNL_PlaneCropDuster_Recog_AP3
		XNL_CurrentPlaneRecogAP4 		= XNL_PlaneCropDuster_Recog_AP4
		XNL_CurrentPlaneRecogAP5 		= XNL_PlaneCropDuster_Recog_AP5
		XNL_CurrentPlane_AllowAutoPilot = XNL_PlaneCropDuster_AllowAutoPilot
		CurrentAircraftHasGlideSlope    = XNL_PlaneCropDuster_AllowGlideSlope
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected (crop) duster, plane settings loaded") end 
		return true
	end
	
	-- This section supports ALL helicopters except the ones that I have EXCLUDED here!
	-- This is because we (ON MY SERVER) do want helicopters to show that they are within their airspaces
	-- but DO NOT want them to use GPWS or TCAS
	if IsThisModelAHeli(EntityModel) then
		XNL_CurrentPlaneBankAngleLimit 	= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_CurrentPlaneSinkRateAngle 	= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_CurrentPlaneSinkRateSpeed 	= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_CurrentV1Speed 				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		GPWS_CruiseHeightOK				= 50.0	
		GPWS_CruiseHeightMax 			= 500.0
		GPWS_FirstWarning				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		GPWS_PanicWarning				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		GPWS_PullUPWarning				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_PlayerAircraftHeight		= 1.5
		XNL_PlaneHasTCASGPWS			= false
		XNL_PlaneRectractableGears		= false
		XNL_CurrentPlaneRecogAP1 		= true		-- On MY server the helicopters are allowed to recognize and land at all airports (including the Carriership)
		XNL_CurrentPlaneRecogAP2 		= true
		XNL_CurrentPlaneRecogAP3 		= true
		XNL_CurrentPlaneRecogAP4 		= true
		XNL_CurrentPlaneRecogAP5 		= true
		XNL_CurrentPlane_AllowAutoPilot = false		-- DO NOT!!!! EVER! Enable this variable for helicoptes! Helicopters need a DIFFERENT NATIVE to be called
													-- for 'autopilot/flight tasks!' calling the plane native for 'autopilot' will instantly crash the game!!!!
		CurrentAircraftHasGlideSlope    = false		-- Same as for auto pilot and for the same reasons to: DO NOT EVER!!! ENABLE THIS ONE FOR HELICOPTERS!!!
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected ANY helicopter, settings loaded") end 
		return true
	end
	
	-- This section supports smaller planes JUST TO SHOW THEIR ALTItUDE AND THEIR AIRSPACE!
	-- THESE DO NOT! HAVE GPSW OR TCAS!!
	if EntityModel == GetHashKey('dodo') or EntityModel == GetHashKey('cuban800') or EntityModel == GetHashKey('mammatus') 
		or EntityModel == GetHashKey('velum') or EntityModel == GetHashKey('velum2') then
		XNL_CurrentPlaneBankAngleLimit 	= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_CurrentPlaneSinkRateAngle 	= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_CurrentPlaneSinkRateSpeed 	= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_CurrentV1Speed 				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		GPWS_CruiseHeightOK				= 550.0	
		GPWS_CruiseHeightMax 			= 650.0
		GPWS_FirstWarning				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		GPWS_PanicWarning				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		GPWS_PullUPWarning				= 0.0		-- NON FUNCTIONAL HERE, But just here to PREVENT nil error if someone makes an error during script editing!
		XNL_PlayerAircraftHeight		= 1.5
		XNL_PlaneHasTCASGPWS			= false
		XNL_CurrentPlaneRecogAP1 		= true		
		XNL_CurrentPlaneRecogAP2 		= true
		XNL_CurrentPlaneRecogAP3 		= true
		XNL_CurrentPlaneRecogAP4 		= true
		XNL_CurrentPlaneRecogAP5 		= false		-- our small 'private planes' are NOT allowed at the aircraft carrier
		XNL_CurrentPlane_AllowAutoPilot = false		-- the small 'private planes' on our server are not equiped with a autopilot!
		CurrentAircraftHasGlideSlope    = false		-- the small 'private planes' on our server are not equiped with a glide slope!
		-- This is required to recognize the smaller planes which do not have rectractable landinggear, else the HUD item at
		-- the bottom right will keep saying: "In Landing Mode" while flying since you can't retract the landing gears!
		if EntityModel == GetHashKey('dodo') or EntityModel == GetHashKey('mammatus') then
			XNL_PlaneRectractableGears	= false
		else
			-- If not listed above the plane does have landing gear
			XNL_PlaneRectractableGears	= true
		end
		if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Detected ANY helicopter, settings loaded") end 
		return true
	end
	
	if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Did not detected a supported aircraft") end 
	return false
end


--========================================================================
-- This "section" is used to show the instructions/altitude at the bottom
-- right of the screen
--========================================================================
function drawTxt(x, y, scale, text, r, g, b, a)
    SetTextFont(1)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEntry("STRING")
    AddTextComponentString(text)
	SetTextRightJustify(true)
    DrawText(x, y)
end

XNL_PlayerPilotOrCoPilot = 0
--========================================================================
-- This is the 'scanner' which keeps checking IF the player is in a 
-- suported airplane or helicopter.
--========================================================================
Citizen.CreateThread(function()
	while true do
		Wait(550)
		XNLPlayerRef = GetPlayerPed(-1)
		
		if not XNL_AircraftComputerOn and not XNL_CheckedCurrentVehicle then
			-- This section detects if: The player is in ANY vehicle, if the player is NOT dead and if the plane is 'drivable' (useable):
			if IsPedSittingInAnyVehicle(XNLPlayerRef) and not IsEntityDead(XNLPlayerRef) then
				XNLPlaneRef = GetVehiclePedIsIn(XNLPlayerRef, false)
				
				PedSeat1 = GetPedInVehicleSeat(XNLPlaneRef, -1)
				PedSeat2 = GetPedInVehicleSeat(XNLPlaneRef, 0)
				
				XNL_PlayerPilotOrCoPilot = 0										-- Regular Passenger
				if PedSeat1 == XNLPlayerRef then XNL_PlayerPilotOrCoPilot = 1 end	-- Pilot
				if PedSeat2 == XNLPlayerRef then XNL_PlayerPilotOrCoPilot = 2 end	-- Co-Pilot
				
				--if GetEntityModel(XNLPlaneRef) == GetHashKey('jet') then
				XNLPlaneModel = GetEntityModel(XNLPlaneRef)
				if (IsThisModelAPlane(XNLPlaneModel) or IsThisModelAHeli(XNLPlaneModel)) and not IsEntityInWater(XNLPlaneRef) and IsVehicleDriveable(XNLPlaneRef, false) and XNL_PlayerPilotOrCoPilot > 0 then
					if GetCurrentAircraftSetting(XNLPlaneModel) then
						XNL_OnPlayerEnterAircraft()
						XNL_AircraftComputerOn = true
						XNL_RunAircrafComputer()
						XNL_RunAircraftComputerSoundcard()
						if XNL_ShowAltitudeInformationAtBottom then XNL_RunPlaneHudText() end
					end
				end
				
				if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Current vehicle checked if supported, Aircraft scanner disabled for now") end 
				XNL_CheckedCurrentVehicle = true
			end
		end
		
		if XNL_CheckedCurrentVehicle and not IsPedSittingInAnyVehicle(XNLPlayerRef) then
			if XNL_AircraftComputerDebugOutput then print("XNL Real Planes: Aircraft detector re-enabled") end 
			XNL_CheckedCurrentVehicle = false
		end


		if XNL_AircraftComputerOn then
			local PlayerInAircraft = true
			if IsPedSittingInAnyVehicle(XNLPlayerRef) then 
				XNLPlaneRef = GetVehiclePedIsIn(XNLPlayerRef, false)	
				XNLPlaneModel = GetEntityModel(XNLPlaneRef)

				if not IsThisModelAPlane(XNLPlaneModel) and not IsThisModelAHeli(XNLPlaneModel) then PlayerInAircraft = false end
			else
				PlayerInAircraft = false
			end
			
			EventAlreadyHandled = false
			OnPlayerEventCalled = false
			--====================================================================
			-- Checks which are done while the player is (still) in an Aircraft
			--====================================================================
			if PlayerInAircraft then
				-- This one HAS to be above detecting if the plane has been destroyed!
				-- Else it will not detect it since the plane will be 'instantly' destroyed
				-- upon hitting water!
				if IsEntityInWater(XNLPlaneRef) then
					if not OnPlayerEventCalled then 
						XNL_OnPlayerCrashedIntoWater() 
						OnPlayerEventCalled = true
						EventAlreadyHandled = true
						XNL_AircraftComputerOn = false
					end
				end
			
				-- Detects if the plane is (still) in a drivable/flyable state (aka Not destroyed)
				if not IsVehicleDriveable(XNLPlaneRef, false) then
					if not OnPlayerEventCalled then 
						XNL_OnPlayerDestoyedAircraft() 
						OnPlayerEventCalled = true
						EventAlreadyHandled = true
						XNL_AircraftComputerOn = false
					end
				end
			
				-- Detects if the player isn't dead
				if IsEntityDead(XNLPlayerRef) then
					if not OnPlayerEventCalled then 
						XNL_OnPlayerDied() 
						OnPlayerEventCalled = true
						EventAlreadyHandled = true
						XNL_AircraftComputerOn = false
					end
				end

			end
			
			--====================================================================
			-- Checks which are done when the player left the Aircraft
			--====================================================================
			if not PlayerInAircraft and not EventAlreadyHandled then
				-- If the player has crashed into water (Which SHOULD be detected by detecting the plane in water!
				-- but I've included it here to just as an 'extra failsafe'!)
				-- DO NOTE that we HAVE to check this one before doing the HeightAboveGround check
				-- where we detect if the player has bailed during flight. This because when in water
				-- it often also returns 'quite a large' distance to ground (which is actually the 'bottom' of the water)!
				if IsEntityInWater(XNLPlayerRef) then
					if not OnPlayerEventCalled then 
						XNL_OnPlayerCrashedIntoWater() 
						OnPlayerEventCalled = true
					end
				end

				if IsEntityDead(XNLPlayerRef) then
					if not OnPlayerEventCalled then 
						XNL_OnPlayerDied() 
						OnPlayerEventCalled = true
					end
				end

				-- If the player has bailed an (commercial) aircraft illegally
				-- Since it's NOT allowed to bail/jumpout Commercial aircrafts (DUH!)
				if GetEntityHeightAboveGround(XNLPlayerRef) > 8.0 then
					if not OnPlayerEventCalled then 
						XNL_OnPlayerIllegallyBailedCommercialAircraft() 
						OnPlayerEventCalled = true
					end
				end
				
				-- This will be called if all others have not been triggered and SHOULD be a normal
				-- plane exit, IF this is NOT the case please report this as a bug, since I then might have
				-- forgotten an "event checking" procedure
				if not OnPlayerEventCalled then 
					XNL_OnPlayerNormalExitAircraft() 
					OnPlayerEventCalled = true
				end
					
				-- Since we've detected that the player is no longer in the aircraft, we should now also
				-- deactivate the Aircraft Computer Interface for the player
				XNL_AircraftComputerOn = false
			end
				--if GetEntityModel(XNLPlaneRef) == GetHashKey('jet') then
		end
		
	end
end)

XNL_GlideSlopeActive = false

--========================================================================
-- The "Aircraft Computer" Section, which is only ran when/while the 
-- player is inside a supported Aircraft AND also is the pilot or co-pilot
--========================================================================
function XNL_RunAircrafComputer()
	if XNL_AircraftComputerRunning then return end	-- Making sure we don't/can't start the Aircraft Computer Thread twice
	XNL_AircraftComputerRunning = true				-- Register start of Aircraft Computer

	if XNL_CreateAirportBlips then
		if XNL_CurrentPlaneRecogAP1 then
			AP1_Blip = AddBlipForCoord(-1239.7822265625, -2735.1452636719, 14.167478561401)
			SetBlipSprite(AP1_Blip, 307)
			SetBlipAsShortRange(AP1_Blip, XNL_ShowBlipShortRangeOnly)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Los Santos International")
			EndTextCommandSetBlipName(AP1_Blip)
			SetBlipColour(AP1_Blip, 46) -- Bright Yellow
		end

		if XNL_CurrentPlaneRecogAP2 then
			AP2_Blip = AddBlipForCoord(-2068.2585449219, 3072.6149902344, 33.394451141357)
			SetBlipSprite(AP2_Blip, 307)
			SetBlipAsShortRange(AP2_Blip, XNL_ShowBlipShortRangeOnly)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Zancudo")
			EndTextCommandSetBlipName(AP2_Blip)
			SetBlipColour(AP2_Blip, 26) -- Light Blue Blip
		end
		
		if XNL_CurrentPlaneRecogAP3 then
			AP3_Blip = AddBlipForCoord(1284.8814697266, 3069.2094726563, 41.133293151855)
			SetBlipSprite(AP3_Blip, 307)
			SetBlipAsShortRange(AP3_Blip, XNL_ShowBlipShortRangeOnly)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Sandy Shores Airfield")
			EndTextCommandSetBlipName(AP3_Blip)
			SetBlipColour(AP3_Blip, 8) -- Pink Blip
		end
	
		if XNL_CurrentPlaneRecogAP4 then
			AP4_Blip = AddBlipForCoord(2056.8903808594, 4771.2094726563, 41.089538574219)
			SetBlipSprite(AP4_Blip, 307)
			SetBlipAsShortRange(AP4_Blip, XNL_ShowBlipShortRangeOnly)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("McKenzie Airfield")
			EndTextCommandSetBlipName(AP4_Blip)
			SetBlipColour(AP4_Blip, 1) -- Red Blip
		end

		if XNL_CurrentPlaneRecogAP5 and XNL_PlanesAllowUseOfAircraftCarrier then
			AP5_Blip = AddBlipForCoord(3061.6437988281, -4708.6459960938, 15.261425971985)
			SetBlipSprite(AP5_Blip, 307)
			SetBlipAsShortRange(AP5_Blip, XNL_ShowBlipShortRangeOnly)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("McKenzie Airfield")
			EndTextCommandSetBlipName(AP5_Blip)
			SetBlipColour(AP5_Blip, 69) -- Mint/Bright Green Blip
		end
	end

	Citizen.CreateThread(function()
		-- Just setting these to an 'insanely high' distance by default to prevent a  overflow or 'nil refrence' 
		-- happening if the airport isn't allowed to be detected by the current aircraft the player is in.
		DistanceToAP1 = 9000.0
		DistanceToAP2 = 9000.0
		DistanceToAP3 = 9000.0
		DistanceToAP4 = 9000.0
		DistanceToAP5 = 9000.0
		while XNL_AircraftComputerOn do
			Wait(80)
			if IsPedSittingInAnyVehicle(XNLPlayerRef) then
				XNLPlaneRef = GetVehiclePedIsIn(XNLPlayerRef, false)	
					XNLPlaneModel = GetEntityModel(XNLPlaneRef)
					if IsThisModelAPlane(XNLPlaneModel) or IsThisModelAHeli(XNLPlaneModel) then
					
						-- We use this variable later on to 'disable' tcas and GPWS for helicopters
						-- but we DO want to make a 'custom' part which shows altitude on bottom right
						XNLAircraftIsHeli = IsThisModelAHeli(XNLPlaneModel)
						
						-- Landing Gear States: 0 = Deployed, 1 = Closing, 3 = Opening, 4 = Retracted]
						XNLPlaneLandGearState = GetVehicleLandingGear(XNLPlaneRef)
						XNLPlaneYRoll = GetEntityRotation(XNLPlaneRef).y
						XNLPlaneXRoll = GetEntityRotation(XNLPlaneRef).x
						NearXNLAirport = false
						local XNLPlaneX, XNLPlaneY, XNLPlaneZ = table.unpack(GetEntityCoords(XNLPlaneRef))
						local CurrentTotalGroundLevel = GetEntityHeightAboveGround(XNLPlaneRef) - XNL_PlayerAircraftHeight
						if CurrentTotalGroundLevel < 0 then CurrentTotalGroundLevel = 0 end
						local CurrentSpeed = GetEntitySpeed(XNLPlaneRef)
						local MaxSpeedPlane = GetVehicleMaxSpeed(XNLPlaneRef)
						local EngineHealth = GetVehicleEngineHealth(XNLPlaneRef)
						local AirCraftEngineOn = IsVehicleEngineOn(XNLPlaneRef)
						local AircraftHeading = GetEntityHeading(XNLPlaneRef)
						local TakenOff = false
						local AboveWater = GetWaterHeight(XNLPlaneX, XNLPlaneY, CurrentTotalGroundLevel, CurrentTotalGroundLevel)
						local GlideSlopeNrDetected = 0

						LastAirPortSeen = 0
	
						-- Recognizing distances to the (by MY server supported airports), you can ofcourse with a bit of scripting add your additional locations or mod airports :)
						if XNL_CurrentPlaneRecogAP1 then DistanceToAP1 = Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1239.7822265625, -2735.1452636719, 14.167478561401) end	-- Los Santos International
						if XNL_CurrentPlaneRecogAP2 then DistanceToAP2 = Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2068.2585449219, 3072.6149902344, 33.394451141357) end		-- Zancudo 
						if XNL_CurrentPlaneRecogAP3 then DistanceToAP3 = Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 1284.8814697266, 3069.2094726563, 41.133293151855) end		-- Sandy Shores Airfield
						if XNL_CurrentPlaneRecogAP4 then DistanceToAP4 = Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 2056.8903808594, 4771.2094726563, 41.089538574219) end		-- McKenzie Airfield/TP Industries
						if XNL_CurrentPlaneRecogAP5 and XNL_PlanesAllowUseOfAircraftCarrier then DistanceToAP5 = Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 3061.6437988281, -4708.6459960938, 15.261425971985) end		-- The Aircraft Carrier (AS ENABLED BY BOB74_IPL!)
						-- Uncomment this line and make 'follow-up numbers' to add more airports or 'allowed to land locations': 
						--DistanceToAP6 = Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 0.0, 0.0, 0.0)		-- My Own Airport/Mod Airport
	
						DistanceTest = 0.0
						-- These ranges are 'kinda large' but that's to make it possible to make a decent decend during landing
						-- in several cases we've had that it caused the 'terain pullup message' while landing correctly at one
						-- of the airfields.. HOWEVER: McKenzie airport is is a 'pain in the ass' to land normally ("according realism protocol")
						-- But lets face it: Anyone attempting to land an COMMERCIAL airplane on a runway that short, must be bonkers and giving
						-- the finger to laws and regulations anyway :P
						if DistanceToAP1 < 1200.0 and XNL_CurrentPlaneRecogAP1 then 	-- Radius of 1200 units to (center of) Los Santos Airport
							NearXNLAirport = true 
							LastAirPortSeen = 1			-- Los Santos International
							DistanceTest = DistanceToAP1
						end
	
						if DistanceToAP2 < 1200.0 and XNL_CurrentPlaneRecogAP2 then 	-- Radius of 1200 units to (center of) Zancudo
							NearXNLAirport = true 
							LastAirPortSeen = 2			-- Zancudo
							DistanceTest = DistanceToAP2
						end
	
						if DistanceToAP3 < 1100.0 and XNL_CurrentPlaneRecogAP3 then 	-- Radius of 1100 units to (center of runways) Sandy Shores
							NearXNLAirport = true 
							LastAirPortSeen = 3			-- Sandy Shores
							DistanceTest = DistanceToAP3
						end
	
						if DistanceToAP4 < 1000.0 and XNL_CurrentPlaneRecogAP4 then 	-- Radius of 1000 units to (center of "runway") McKenzie Airfield
							NearXNLAirport = true 
							LastAirPortSeen = 4			-- McKenzie Airfield
							DistanceTest = DistanceToAP4
						end

						if DistanceToAP5 < 1000.0 and XNL_CurrentPlaneRecogAP5 and XNL_PlanesAllowUseOfAircraftCarrier then 	-- Radius of 1000 units to (center of) Aircraft Carrier
							NearXNLAirport = true 
							LastAirPortSeen = 5			-- Aircraft Carrier
							DistanceTest = DistanceToAP5
						end
						
						-- Question: But what if I want TCAS/GPWS to 'recognize' my own (addon/mod) airport which is not inside the bounds of the original ones?
						-- Well very simple just add your own un-commenting this section bellow, and make sure to also add your own cordinates above this 'detection list'
						
						--if DistanceToAP6 < 1000.0 then 	-- Radius of 800 units to (center of "runway") McKenzie Airfield
						--	NearXNLAirport = true 
						--	LastAirPortSeen = 6			-- My Own Airport/Mod Airport
						--end
	
						-- People can ONLY use our "Glide Slope" system IF: 
						--  - They are near an airport (on which their plane is allowed to land)
						--	- GlideSlope in general is activated on the server
						--	- The current aircraft has glideslope
						--	- If it's the main pilot (co-pilot CAN NOT activate it)
						--	- If the landing gear has already been deployed
						--	- If they had a proper take off (see "glide slope" as an 'extra bonus here' from taking off properly)
						--	- The plane isn't damaged (to much)
						if NearXNLAirport and XNL_GlideSlopeSupportOn and CurrentAircraftHasGlideSlope and XNL_PlayerPilotOrCoPilot == 1 and XNLPlaneLandGearState == 0 and XNL_TakeOffCompleted and EngineHealth >= 500.0 then
							-- Los Santos International GlideSlope Support (Well okay "Automated Landing Support :P")
							if LastAirPortSeen == 1 then
								GlideSlopeDetected = false
								-- Runway 30L Los Santos International
								if AircraftHeading > 40 and AircraftHeading < 70 then
									if Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 							 -671.54479980469, -3331.2412109375, 45.33084487915) <  XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -578.70782470703, -3384.8061523438, 60.777194976807) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -490.57550048828, -3432.4833984375, 75.595977783203) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -359.71542358398, -3514.7939453125, 72.23152923584) <  XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if GlideSlopeDetected then GlideSlopeNrDetected = 1 end
								end

								-- Runway 30L Los Santos International
								if AircraftHeading > 45 and AircraftHeading < 85 then
									GlideSlopeDetected = false -- Resetting it here (JUST IN CASE something went wrong!)
									if Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -733.31793212891, -3502.8515625, 46.637001037598) < 150.0 then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -616.52429199219, -3564.5930175781, 51.153205871582) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -527.63171386719, -3614.2980957031, 52.964157104492) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -484.33477783203, -3642.5051269531, 69.43677520752 ) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if GlideSlopeDetected then GlideSlopeNrDetected = 2 end
								end

								-- Runway 12R Los Santos International
								if AircraftHeading > 230 and AircraftHeading < 255 then
									GlideSlopeDetected = false -- Resetting it here (JUST IN CASE something went wrong!)
									if Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 							 -1958.1989746094, -2784.6809082031, 34.592105865479) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2074.8696289063, -2721.7072753906, 45.991912841797) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2191.5483398438, -2663.4475097656, 76.091445922852) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2292.12109375, -2613.2297363281, 94.791198730469 ) <  XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if GlideSlopeDetected then GlideSlopeNrDetected = 3 end
								end

								
								-- Runway 12L Los Santos International
								if AircraftHeading > 225 and AircraftHeading < 255 then
									GlideSlopeDetected = false -- Resetting it here (JUST IN CASE something went wrong!)
									if Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 							 -1871.7650146484, -2639.73046875, 37.009746551514  ) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2008.5875244141, -2564.244140625, 47.860404968262 ) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2109.7338867188, -2508.3874511719, 75.359992980957) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -2228.8508300781, -2433.4938964844, 97.259658813477) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if GlideSlopeDetected then GlideSlopeNrDetected = 4 end
								end

								-- Runway 21 Los Santos International
								if AircraftHeading > 130 and AircraftHeading < 160 then
									GlideSlopeDetected = false -- Resetting it here (JUST IN CASE something went wrong!)
									if Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 							 -1289.1368408203, -2128.4494628906, 28.697801589966) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1261.2579345703, -2072.6455078125, 34.697784423828) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1233.8258056641, -2017.7062988281, 43.097663879395) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1171.2860107422, -1892.4467773438, 70.69775390625 ) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1110.7231445313, -1866.3800048828, 82.697792053223 )< XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if GlideSlopeDetected then GlideSlopeNrDetected = 5 end
								end
							end

							-- Zancudo GlideSlope Support (Well okay "Automated Landing Support :P")
							if LastAirPortSeen == 2 then
								-- Only one direction (AND NOT THE pop group! :P) which is from 'inland' to zanduco (NOT from sea side to zancudo!)
								if AircraftHeading > 40 and AircraftHeading < 70 then
									GlideSlopeDetected = false -- Resetting it here (JUST IN CASE something went wrong!)
									if Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, 							 -1895.5281982422, 2794.2136230469, 55.311275482178  ) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1823.8094482422, 2755.3659667969, 63.511157989502 ) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1761.5828857422, 2721.6599121094, 69.111114501953) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if not GlideSlopeDetected and Vdist(XNLPlaneX, XNLPlaneY, XNLPlaneZ, -1680.1961669922, 2677.5754394531, 94.810699462891) < XNL_GlideSlopeRadius then GlideSlopeDetected = true end
									if GlideSlopeDetected then GlideSlopeNrDetected = 6 end
								end
							end

						end
	
	
						
						-- This is "re entering" or "restarting" the plane (engine)
						if CurrentSpeed < 1.0 and CurrentTotalGroundLevel <= XNL_PlayerAircraftHeight  and (not AirCraftEngineOn or XNL_RestartFlight) and not XNLAircraftIsHeli and XNL_PlaneHasTCASGPWS then
							XNL_StartOtherAlarms = false
							XNL_PlaneFirstStart = true
							XNL_TCASReady = false
							XNL_PlaneFirstTakeOff = false
							V1Declared = false
							XNL_V1Ignored = false
							XNL_TakeOffCompleted = false
							XNL_LastMaxAltDurTakeOff = CurrentTotalGroundLevel
							XNL_RestartFlight = false
							TCASInsctruction = 0
							TCASClearScans = 6
							TCASConflictCalledout = false
							BankAngleFaultTakeOff = false
							DontSinkFaultTakeOff = false
							StallFaultTakeOff = false
							FaultFlightTerain1 = false	
							FaultFlightTerain2 = false	
							FaultFlightTerain3 = false	
							FaultFlightBank	= false		
							FaultFlightSinkRate	= false	
							FaultFlightGears1 = false	
							FaultFlightGears2 = false	
							FaultFlightStall = false
							AirportTakeoff = LastAirPortSeen
							AirportLanded = 0
							XNL_AutoPilotActive = false
							HasUsedAutoPilot = false
							HasUsedGlideSlope = false
							XNL_GlideSlopeActive = false
						end
		
						if XNL_PlaneFirstStart and not XNL_TCASReady and not XNLAircraftIsHeli and XNL_PlaneHasTCASGPWS then
							if  AirCraftEngineOn and CurrentSpeed < 1.0 and CurrentTotalGroundLevel < XNL_PlayerAircraftHeight then
								if EngineHealth > 800.0 and XNLPlaneLandGearState == 0 then
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASReady") then
										XNL_PlaneSoundList["TCASReady"] = {Name = "TCASReady", File = "10", Duration = 2200}
										XNL_TCASFailed = false
									end
								else
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASFail") then
										XNL_PlaneSoundList["TCASFail"] = {Name = "TCASFail", File = "17", Duration = 2630}
										XNL_TCASFailed = true
									end
								end
								XNL_TCASReady = true
								XNL_PlaneFirstTakeOff = true
								V1Declared = false
								XNL_StartOtherAlarms = false
								XNL_TakeOffCompleted = false
								TCASConflictCalledout = false
								XNL_LastMaxAltDurTakeOff = CurrentTotalGroundLevel 
								TCASInsctruction = 0
								BankAngleFaultTakeOff = false
								DontSinkFaultTakeOff = false
								StallFaultTakeOff = false
								FaultFlightTerain1 = false	
								FaultFlightTerain2 = false	
								FaultFlightTerain3 = false	
								FaultFlightBank	= false		
								FaultFlightSinkRate	= false	
								FaultFlightGears1 = false	
								FaultFlightGears2 = false	
								FaultFlightStall = false	
								AirportTakeoff = LastAirPortSeen
								AirportLanded = 0
								XNL_AutoPilotActive = false
								HasUsedAutoPilot = false
								HasUsedGlideSlope = false
								XNL_GlideSlopeActive = false
							end
						end
					
						XNL_PlaneCurGear = GetVehicleCurrentGear(XNLPlaneRef)
						if not XNLAircraftIsHeli then -- Make sure this section only works for airplanes!
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel < 6.0  then
								XNL_PlaneHudText = "Grounded"
							end
	
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel < 6.0 and CurrentSpeed > 1.0 and CurrentSpeed < 30.0 then
								if XNL_PlaneCurGear > 0 then
									XNL_PlaneHudText = "Grounded - Taxiing"
								else
									XNL_PlaneHudText = "Grounded - Reversing"
								end
							end
							
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel < 6.0 and CurrentSpeed > 1.0 and XNL_PlaneCurGear == 0 then
									XNL_PlaneHudText = "Grounded - Reversing"
							end
	
							
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel < 6.0 and CurrentSpeed >= 30.0 and XNL_PlaneCurGear > 0 then
								if not XNL_PlaneHasTCASGPWS then
									XNL_PlaneHudText = "Grounded - High Speed"
								else
									XNL_PlaneHudText = "Grounded - Taking off"
								end
							end
	
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel > 6.0 then
								if not XNL_PlaneHasTCASGPWS and CurrentTotalGroundLevel > GPWS_CruiseHeightOK then
									XNL_TakeOffCompleted = true
								end
								XNL_PlaneHudText = "~b~".. roundInt(CurrentTotalGroundLevel, 1)  .. "m ~o~Taking off - Climb to Cruise Altitude"
							end
						end

						if (XNL_TakeOffCompleted and CurrentTotalGroundLevel > XNL_PlayerAircraftHeight) or XNLAircraftIsHeli then
							if (XNLPlaneLandGearState == 4 or XNLPlaneLandGearState == 3) or XNLAircraftIsHeli or not XNL_PlaneRectractableGears then
								if CurrentTotalGroundLevel >= GPWS_CruiseHeightOK and  CurrentTotalGroundLevel <= GPWS_CruiseHeightMax then
									XNL_PlaneHudText = "~b~".. roundInt(CurrentTotalGroundLevel, 1)  .. "m ~g~Altitude ok"
								end
	
								if CurrentTotalGroundLevel < GPWS_CruiseHeightOK then
									if XNLAircraftIsHeli and CurrentTotalGroundLevel <= XNL_PlayerAircraftHeight then
										XNL_PlaneHudText = "~w~Grounded"
									else
										XNL_PlaneHudText = "~b~".. roundInt(CurrentTotalGroundLevel, 1)  .. "m ~r~Bellow Cruise altitude!"
									end
								end
	
								if CurrentTotalGroundLevel > GPWS_CruiseHeightMax then
									XNL_PlaneHudText = "~b~".. roundInt(CurrentTotalGroundLevel, 1)  .. "m ~r~Above Cruise altitude!"
								end
							else
								XNL_PlaneHudText = "~b~".. roundInt(CurrentTotalGroundLevel, 1)  .. "m ~b~In Landing Mode"
							end
						end
						
						-- This section is also ONLY for airplanes!
						if not XNLAircraftIsHeli then
							if XNL_TakeOffCompleted and CurrentTotalGroundLevel <= 10.0 and CurrentTotalGroundLevel > XNL_PlayerAircraftHeight then
								XNL_PlaneHudText = "~b~".. roundInt(CurrentTotalGroundLevel, 1)  .. "m ~b~Touching down"
							end
	
							if XNL_TakeOffCompleted and CurrentTotalGroundLevel <= XNL_PlayerAircraftHeight then
									if not XNL_PlaneHasTCASGPWS then
										XNL_TakeOffCompleted = false
									else
										XNL_PlaneHudText = "~b~Landed"
									end
							end
	
							
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel > XNL_PlayerAircraftHeight  and XNL_PlaneHasTCASGPWS and not AboveWater and not XNL_DisableDontSink then
								if CurrentTotalGroundLevel < XNL_PlayerAircraftHeight and CurrentSpeed < 5.0 then
									XNL_LastMaxAltDurTakeOff = CurrentTotalGroundLevel
								end
								
								if CurrentTotalGroundLevel > XNL_LastMaxAltDurTakeOff then
									XNL_LastMaxAltDurTakeOff = CurrentTotalGroundLevel
								end
			
								-- DON'T SINK warning (which is for losing altitude during takeoff)
								if CurrentTotalGroundLevel < XNL_LastMaxAltDurTakeOff - 8.0 then
									DontSinkFaultTakeOff = true
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSDontSink") then
										XNL_PlaneSoundList["GPWSDontSink"] = {Name = "GPWSDontSink", File = "22", Duration = 1800}
									end
								else
									if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSDontSink") then
										XNL_PlaneSoundList["GPWSDontSink"] = nil
									end
								end
							else
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSDontSink") then
									XNL_PlaneSoundList["GPWSDontSink"] = nil
								end
							end
		
							--=====================================================================================================
							-- Begin TCAS (Traffic Collision Avoidance System) section
							--=====================================================================================================
							if not XNL_TCASFailed and XNL_PlaneHasTCASGPWS then -- If TCAS failed to start/detected damage it will NOT notify of TCAS warnings!
								ShowTCASRadarScans = false
								-- TCAS GROUND TRAFFIC Scans WHILE moving the plane!
								if CurrentSpeed > 2.0 and CurrentTotalGroundLevel <= XNL_PlayerAircraftHeight then
									local NDcoords    = GetEntityCoords(XNLPlaneRef)
									TCASConflictsFoundA = 0				-- Make sure ground TCAS doesn't trigger again mid air
									XNL_AirConflict = false   -- Make sure ground TCAS doesn't trigger again mid air
			
									TCASScanDist = 30
									local NDforward   = GetEntityForwardVector(XNLPlayerRef)
															
									if TCASScanPos == 1 or TCASScanPos == 4 then		-- Front and Rear Close
										TCASScanDist = 30
									elseif TCASScanPos == 2 or TCASScanPos == 5 then	-- Front and Rear Mid
										TCASScanDist = 60
									elseif TCASScanPos == 3 or TCASScanPos == 6 then	-- Front and Rear Far
										TCASScanDist = 80
									end
									
									TCASScanPos = TCASScanPos + 1
									if TCASScanPos > 6 then 
										TCASScanPos = 1
										TCASScanRoundComplete = true
									end
									
									local NDx, NDy, NDz   = table.unpack(NDcoords + NDforward * TCASScanDist)
									local rNDx, rNDy, rNDz   = table.unpack(NDcoords - NDforward * TCASScanDist)
									PilotFound = false
									
									--cDx, cDy, cDz = 0.0, 0.0, 0.0
									if TCASScanPos < 4 then
										if ShowTCASRadarScans then DrawMarker(1, NDx, NDy, NDz, 0, 0, 0, 0, 0, 0, TCASSCanRadiusGround, TCASSCanRadiusGround, 1.5001, 255, 0, 0, 180, 0, 0, 0,0) end
										PilotFound = AnyPedInAircraft(NDx, NDy, NDz, TCASSCanRadiusGround, TCASGroundDetectMovingOnly, TCASGroundDetectGroundPersonelCARS)
									else 
										if ShowTCASRadarScans then DrawMarker(1, rNDx, rNDy, rNDz, 0, 0, 0, 0, 0, 0, TCASSCanRadiusGround, TCASSCanRadiusGround, 1.5001, 255, 0, 0, 180, 0, 0, 0,0) end
										PilotFound = AnyPedInAircraft(rNDx, rNDy, rNDz, TCASSCanRadiusGround, TCASGroundDetectMovingOnly, TCASGroundDetectGroundPersonelCARS)
									end
			
									--local vehicle = GetClosestVehicle(NDx, NDy, NDz, 40.0, 0, 18719 )
									if PilotFound then --IsNearOccupiedAircraft(NDx, NDy, NDz, 50, false) then
										TCASConflictsFoundG = TCASConflictsFoundG + 1
									end
									
									if TCASScanRoundComplete then
										if TCASConflictsFoundG > 1 then
											XNL_GroundTrafficConflict = true
											TCASClearScans = 0
											if IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTrafficClear") then
												XNL_PlaneSoundList["TCASGroundTrafficClear"] = nil
											end
			
											if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTraffic") then
												XNL_PlaneSoundList["TCASGroundTraffic"] = {Name = "TCASGroundTraffic", File = "11", Duration = 1750}
											end
			
										else
											if TCASClearScans < 6 then TCASClearScans = TCASClearScans + 1 end
											if TCASClearScans == 6 then
												if IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTraffic") then
													XNL_PlaneSoundList["TCASGroundTraffic"] = nil
												end
				
												if XNL_GroundTrafficConflict == true then
													if TCASConflictCalledout == true then
														if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTrafficClear") then
															XNL_PlaneSoundList["TCASGroundTrafficClear"] = {Name = "TCASGroundTrafficClear", File = "7", Duration = 1950}
														end
													end
													TCASConflictCalledout = false
													XNL_GroundTrafficConflict = false
												end
											end
										end
									
										TCASScanRoundComplete = false
										TCASConflictsFoundG = 0
									end
								end
			
			
								if CurrentSpeed > 2.0 and CurrentTotalGroundLevel >= 10.0 then
									TCASConflictsFoundG = 0				-- Make sure ground TCAS doesn't trigger again mid air
									XNL_GroundTrafficConflict = false   -- Make sure ground TCAS doesn't trigger again mid air
			
									
									local NDcoords    = GetEntityCoords(XNLPlaneRef)
									
									TCASScanDist = 30
									local NDforward   = GetEntityForwardVector(XNLPlayerRef)
															
									if TCASScanPos == 1 or TCASScanPos == 6 then		-- Front and Rear Close
										TCASScanDist = 70
									elseif TCASScanPos == 2 or TCASScanPos == 7 then	-- Front and Rear Mid
										TCASScanDist = 140
									elseif TCASScanPos == 3 or TCASScanPos == 8 then	-- Front and Rear Far
										TCASScanDist = 210
									elseif TCASScanPos == 4 or TCASScanPos == 9 then	-- Front and Rear Far
										TCASScanDist = 280
									elseif TCASScanPos == 5 or TCASScanPos == 10 then	-- Front and Rear Far
										TCASScanDist = 350
									end
									
									TCASScanPos = TCASScanPos + 1
									if TCASScanPos > 10 then 
										TCASScanPos = 1
										TCASScanRoundComplete = true
									end
									
									local NDx, NDy, NDz   = table.unpack(NDcoords + NDforward * TCASScanDist)
									local rNDx, rNDy, rNDz   = table.unpack(NDcoords - NDforward * TCASScanDist)
									PilotFoundAlt = 0
									
									--cDx, cDy, cDz = 0.0, 0.0, 0.0
									if TCASScanPos < 6 then
										if ShowTCASRadarScans then DrawMarker(1, NDx, NDy, NDz, 0, 0, 0, 0, 0, 0, TCASSCanRadiusAir, TCASSCanRadiusAir, 1.5001, 255, 0, 0, 180, 0, 0, 0,0) end
										PilotFoundAlt = AnyPedInAircraftAlt(NDx, NDy, NDz, TCASSCanRadiusAir, TCASSCanRadiusAir)
									else
										if ShowTCASRadarScans then DrawMarker(1, rNDx, rNDy, rNDz, 0, 0, 0, 0, 0, 0, TCASSCanRadiusAir, TCASSCanRadiusAir, 1.5001, 255, 0, 0, 180, 0, 0, 0,0) end
										PilotFoundAlt = AnyPedInAircraftAlt(rNDx, rNDy, rNDz, TCASSCanRadiusAir, TCASSCanRadiusAir)
									end
			
									--local vehicle = GetClosestVehicle(NDx, NDy, NDz, 40.0, 0, 18719 )
									if PilotFoundAlt > 0 then --IsNearOccupiedAircraft(NDx, NDy, NDz, 50, false) then
										TCASConflictsFoundA = TCASConflictsFoundA + 1
									end
									
									if TCASScanRoundComplete then
										if TCASConflictsFoundA > 0 then
											XNL_AirConflict = true
											TCASClearScans = 0
											if IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTrafficClear") then
												XNL_PlaneSoundList["TCASGroundTrafficClear"] = nil
											end
			
											if TCASInsctruction == 0 then TCASInsctruction = PilotFoundAlt end
											
											if TCASInsctruction == 1 then -- ACENT
												if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASClimbNOW") then
													XNL_PlaneSoundList["TCASClimbNOW"] = {Name = "TCASClimbNOW", File = "8", Duration = 2200}
												end
											end
			
											if TCASInsctruction == 2 then  -- DECENT
												if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASDecentNow") then
													XNL_PlaneSoundList["TCASDecentNow"] = {Name = "TCASDecentNow", File = "9", Duration = 2520}
												end
											end
										else
											if TCASClearScans < 6 then TCASClearScans = TCASClearScans + 1 end
											if TCASClearScans == 6 then
												TCASInsctruction = 0
												if IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTraffic") then
													XNL_PlaneSoundList["TCASGroundTraffic"] = nil
												end
												
												if IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASClimbNOW") then
													XNL_PlaneSoundList["TCASClimbNOW"] = nil
												end
			
												if IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASDecentNow") then
													XNL_PlaneSoundList["TCASDecentNow"] = nil
												end
				
												if XNL_AirConflict == true then
													if TCASConflictCalledout == true then
														if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASGroundTrafficClear") then
															XNL_PlaneSoundList["TCASGroundTrafficClear"] = {Name = "TCASGroundTrafficClear", File = "7", Duration = 1950}
														end
													end
													TCASConflictCalledout = false
													XNL_AirConflict = false
												end
											end
										end
									
										TCASScanRoundComplete = false
										TCASConflictsFoundA = 0
									end
								end
							end
							--=====================================================================================================
							-- End of TCAS (Traffic Collision Avoidance System) section
							--=====================================================================================================

							--=====================================================================================================
							-- "GlideSlope" Toggling mode (Auto Landing/Landing Support) ONLY FOR PLANES!!!! NOT FOR HELICOPTERS!
							-- HELICOPTERS WILL MAKE THE GAME CRASH IF YOU TRY TO USE THIS NATIVE ON THEM!!!!
							--=====================================================================================================
							if PrevGlideSlopeDetect ~= GlideSlopeNrDetected and not GlideSlopeDelayActive and XNL_PlayerPilotOrCoPilot == 1 then
								PrevGlideSlopeDetect = GlideSlopeNrDetected
								if GlideSlopeNrDetected > 0 then
									DisplayHelpText("Automatic Glide Slope: ~n~Press " .. AutoPilotKeyName .. " to engage.")
									GlideSlopeDelay()
								end
							end
							
							if XNL_PlayerPilotOrCoPilot == 1 and GlideSlopeNrDetected > 0 and not AutoPilotDelayActive then
								if IsControlPressed(0, AutoPilotKeyNumber) then
									if not XNL_GlideSlopeActive then
											-- Runway 30R Los Santos International
											if GlideSlopeNrDetected == 1 then TaskPlaneLand(XNLPlayerRef, XNLPlaneRef, -944.08721923828, -3175.4035644531, 13.951797485352, -1211.2023925781, -3021.1779785156, 13.988622665405) end
											-- Runway 30L Los Santos International
											if GlideSlopeNrDetected == 2 then TaskPlaneLand(XNLPlayerRef, XNLPlaneRef, -1015.9371948242, -3328.49609375, 13.987154960632, -1308.6403808594, -3159.6342773438, 13.944442749023) end

											-- Runway 12R Los Santos International
											if GlideSlopeNrDetected == 3 then TaskPlaneLand(XNLPlayerRef, XNLPlaneRef, -1621.0546875, -2979.1828613281, 13.987594604492, -1300.5179443359, -3164.3552246094, 13.987669944763) end

											-- Runway 12L Los Santos International
											if GlideSlopeNrDetected == 4 then TaskPlaneLand(XNLPlayerRef, XNLPlaneRef, -1553.873046875, -2823.3256835938, 14.001617431641, -1322.3289794922, -2956.9755859375, 13.989463806152) end

											-- Runway 21 Los Santos International
											if GlideSlopeNrDetected == 5 then TaskPlaneLand(XNLPlayerRef, XNLPlaneRef, -1357.6005859375, -2247.2133789063, 13.968578338623, -1496.3876953125, -2487.9694824219, 13.97553062439) end

											-- Runway at Zandudo
											if GlideSlopeNrDetected == 6 then TaskPlaneLand(XNLPlayerRef, XNLPlaneRef, -2035.1810302734, 2874.1303710938, 32.828636169434, -2425.7612304688, 3099.9943847656, 32.926719665527) end
											
											DisplayHelpText("Automatic Glide Slope: Engaged~n~Press " .. AutoPilotKeyName .. " to disengage.")
											if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "GlideSlopeOn") then
												XNL_PlaneSoundList["GlideSlopeOn"] = {Name = "GlideSlopeOn", File = "24", Duration = 950}
											end
											
											XNL_GlideSlopeActive = true
											AutoPilotDelay()
											HasUsedGlideSlope = true
											GlideSlopeDelay()
											GlideSlopeDelayActive = true -- Putting it here just to prevent Glide Slope from showing directly (bellow) again that it has disengaged
																		 -- it SHOULD not happen though, but either this script has ran "to fast" a few times or the other thread (GlideSlopeDelay)
																		 -- has ran 'to slow' which caused it not on time to 'report back' that glide slope was just activated
									end
								end
							end

							if XNL_PlayerPilotOrCoPilot == 1 and XNL_GlideSlopeActive and not AutoPilotDelayActive and not GlideSlopeDelayActive then
								if IsControlPressed(0, AutoPilotKeyNumber) then
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "AutoPilotOff") then
										XNL_PlaneSoundList["AutoPilotOff"] = {Name = "AutoPilotOff", File = "3", Duration = 3080}
									end
								
									ClearPedTasks(XNLPlayerRef)
									DisplayHelpText("Automatic Glide Slope: Disengaged")
									XNL_GlideSlopeActive = false
									AutoPilotDelay()
								end
							end
							
							--=====================================================================================================
							-- Auto Pilot Toggling Section
							--=====================================================================================================
							if XNL_CurrentPlane_AllowAutoPilot and not AutoPilotDelayActive and XNL_AutoPilotSystemEnabled and XNL_PlayerPilotOrCoPilot == 1 and GlideSlopeNrDetected == 0 then
								AutoPilotAllowed = true
								if IsControlPressed(0, AutoPilotKeyNumber) then
									if not XNL_AutoPilotActive then
										-- If the altitude is to high or low then give an error (that it's not allowed to start autopilot)
										if (CurrentTotalGroundLevel < GPWS_CruiseHeightOK or CurrentTotalGroundLevel > GPWS_CruiseHeightMax) and AutoPilotAllowed then
											DisplayHelpText("Autopilot: Correct cruising altitude required!")
											AutoPilotAllowed = false
										end 
	
										-- If the landing gear is deployed, do not allow autopilot
										if AutoPilotAllowed and (XNLPlaneLandGearState ~= 4 or not XNL_PlaneRectractableGears) then
											DisplayHelpText("Autopilot: Not allowed when landing gear is deployed")
											AutoPilotAllowed = false
										end

										-- If the aircraft has (to much) damage to use GPSW/TCASE
										if AutoPilotAllowed and EngineHealth <= 500.0  then
											DisplayHelpText("Autopilot: GPWS Sensors Damage, Can't Initiate!")
											AutoPilotAllowed = false
										end
										
										if (CurrentTotalGroundLevel < GPWS_CruiseHeightOK or CurrentTotalGroundLevel > GPWS_CruiseHeightMax) and AutoPilotAllowed then
											DisplayHelpText("Autopilot: Correct cruising altitude required!")
											AutoPilotAllowed = false
										end 
										
										local success = false
										local blipFound = false
										local blipIterator = GetBlipInfoIdIterator()
										local blip = GetFirstBlipInfoId(8)
										cx = 0.0
										cy = 0.0
										cz = 0.0
										while DoesBlipExist(blip) do
											if GetBlipInfoIdType(blip) == 4 then
												cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())) --GetBlipInfoIdCoord(blip)
												blipFound = true
												break
											end
											blip = GetNextBlipInfoId(blipIterator)
										end
										
										if AutoPilotAllowed and not blipFound then
											DisplayHelpText("Autopilot: No destination set (Waypoint)")
											AutoPilotAllowed = false
										end
										
										if AutoPilotAllowed then
											--================================================================================================
											-- Special Notice:
											-- What the hell I'm EXACTLY doing with the TaskPlaneMission native?
											-- Well I don't know either whahah, it seems like that the FiveM documentation:
											-- https://runtime.fivem.net/doc/natives/#_0x23703CD154E83B88
											-- As well as the RAGE:MP documenation make no sense at all:
											-- https://wiki.rage.mp/index.php?title=Player::taskPlaneMission
											--
											-- Well okay, they both DO make sense but it just doesn't seem to do exactly as
											-- expected, it seems to give the middle finger to min and max altitudes,
											-- it seems to totally ignore the angular drag or it specifically wants an
											-- actual targer (ped or vehicle) to follow to actually behave like it should,
											-- but with just cordinates it can go okay for a long time and then suddenly it
											-- goes either completely numb, wonkey or haywire (or all three at the same time hahhaha)
											-- After a VERY LONG time of trial and error and LOTS of testing and attempts (and deaths :P)
											-- I finally found the "correct parameters" to use, to make it fly in circles when it reached
											-- it's destination AND to actually staying at it's required altitude without SUDDENLY making
											-- kamikaze dives into buildings (or even a different player which it randomly decided to
											-- kill at one point by actually flying right into the ground on top of him :S)
											-- These settings seem to work properly for what I MYSELF want it to do (Fly towards the
											-- waypoint and then circle it until the player takes back control again, while staying at
											-- the assigned altitude)
											--
											-- So if you decide to mess with these settings: You're ON YOUR OWN, and I will NOT help you!
											-- NOT kidding here, it's completly bogus how erratic some of these parameter can INSTANTLY
											-- turn out to behave while flying perfectly normal for over 1.5hour straight before that :S
											-- This one DOES stay stable and even has been testes with a 12+ hours non-stop "holding pattern"
											-- flight, so "we approve this one" haha :P
											--================================================================================================
											MissionFlag = 4
											AngularDrag = 100.0 -- Trust me: the FiveM NativeDB say's it's angular drag which will make the plane turn
																-- slower, well what about it being something about Physics instead? Since setting it to 0.0 will 
																-- LITTERALLY make the plane float mid-air and make it drop down straight VERY slowly :S
											--TaskPlaneMission(XNLPlayerRef, XNLPlaneRef, 0, 0, cx, cy, 100.0, MissionFlag, AngularDrag, 0, 0, MaxAlt, MinAlt)
											TaskPlaneMission(XNLPlayerRef, XNLPlaneRef, 0, 0, cx, cy, GPWS_CruiseHeightOK + 50.0, MissionFlag, AngularDrag, 100.0, 190.0, 2000.0, 400.0)
											
											DisplayHelpText("Autopilot: Engaged~n~Press " .. AutoPilotKeyName .. " to disengage autopilot.")
											if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "AutoPilotOn") then
												XNL_PlaneSoundList["AutoPilotOn"] = {Name = "AutoPilotOn", File = "21", Duration = 1600}
											end
											XNL_AutoPilotActive = true
											HasUsedAutoPilot = true
											AutoPilotDelay()
										end
									else
										if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "AutoPilotOff") then
											XNL_PlaneSoundList["AutoPilotOff"] = {Name = "AutoPilotOff", File = "3", Duration = 3080}
										end
									
										ClearPedTasks(XNLPlayerRef)
										DisplayHelpText("Autopilot: Disengaged~n~Press " .. AutoPilotKeyName .. " to (re-)engage autopilot.")
										XNL_AutoPilotActive = false
										AutoPilotDelay()
									end

								end
							end
		
							
							-- Make sure we achieve a PROPER V1 while STILL ON THE GROUND but 'driving' at takeoff speed!
							if CurrentSpeed >= XNL_CurrentV1Speed and not XNL_V1Ignored and XNL_PlaneFirstTakeOff and not V1Declared and CurrentTotalGroundLevel <= XNL_PlayerAircraftHeight  and XNL_PlaneHasTCASGPWS then
								if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "V1") then
									XNL_PlaneSoundList["V1"] = {Name = "V1", File = "14", Duration = 700}
								end
								V1Declared = true
							end
			
							-- Restarting of flight from TCAS Test (just in case a player NEEDS to abort
							-- after V1 (which SHOULD never happen though!), for example when an AI plane suddenly
							-- decides to land on your RW. BUT it does NOT restart after completing an entire flight
							-- because we then want to trigger a different event.
							if V1Declared and not XNL_V1Ignored and CurrentSpeed < 5 and not XNL_TakeOffCompleted  and XNL_PlaneHasTCASGPWS then
								AirportLanded = LastAirPortSeen
								if AirportLanded ~= AirportTakeoff then
									XNL_OnPlayerIllegalFlightComplete()		-- When the player has landed on a differrent airport but did NOT follow flight heights etc
								else
									XNL_OnPlayerTakeOffAborted() 			-- When the player has aborted the flight and landed on the SAME airport as taken off from
								end
								V1Declared = false
								XNL_RestartFlight = true
							end
												
							if XNL_V1Ignored and CurrentSpeed < 5 and not XNL_TakeOffCompleted  and XNL_PlaneHasTCASGPWS then
								AirportLanded = LastAirPortSeen
								if AirportLanded ~= AirportTakeoff then
									XNL_OnPlayerIllegalFlightComplete()		-- When the player has landed on a differrent airport but did NOT follow flight heights etc
								else
									XNL_OnPlayerTakeOffAborted() 			-- When the player has aborted the flight and landed on the SAME airport as taken off from
								end
								XNL_V1Ignored = false
								V1Declared = false
								XNL_RestartFlight = true
							end
		
							-- Detects if the player has landed 'normally' after also completed the TakeOff Procedure
							-- this SHOULD indicate 'normal landings'
							if XNL_TakeOffCompleted and CurrentSpeed < 5 and CurrentTotalGroundLevel <= XNL_PlayerAircraftHeight  and XNL_PlaneHasTCASGPWS then
								AirportLanded = LastAirPortSeen
								TotalFlightErrors = 0
								if FaultFlightTerain1 then TotalFlightErrors = TotalFlightErrors + 1 end
								if FaultFlightTerain2 then TotalFlightErrors = TotalFlightErrors + 1 end
								if FaultFlightTerain3 then TotalFlightErrors = TotalFlightErrors + 1 end
								if FaultFlightBank	then TotalFlightErrors = TotalFlightErrors + 1 end
								if FaultFlightSinkRate	then TotalFlightErrors = TotalFlightErrors + 1 end
								if FaultFlightGears1  then TotalFlightErrors = TotalFlightErrors + 1 end
								if FaultFlightGears2 then TotalFlightErrors = TotalFlightErrors + 1 end 
								if FaultFlightStall then TotalFlightErrors = TotalFlightErrors + 1 end
								XNL_OnPlayerFlightCompleted(AirportTakeoff, AirportLanded, TotalFlightErrors, HasUsedAutoPilot, HasUsedGlideSlope)
								
								-- This section sets the 'computers' ready for a new flight (path)
								XNL_TakeOffCompleted = false
								XNL_V1Ignored = false
								V1Declared = false
								XNL_RestartFlight = true
							end
							
							
							
							-- If the player ignored V1 takeoff speed
							if CurrentSpeed >= XNL_CurrentV1Speed and not XNL_V1Ignored and XNL_PlaneFirstTakeOff and not V1Declared and CurrentTotalGroundLevel > XNL_PlayerAircraftHeight  and XNL_PlaneHasTCASGPWS then
								XNL_V1Ignored = true
							end
			
							-- TakeOff Completed an 'on-route' with normal flight patern now
							if not XNL_TakeOffCompleted and CurrentTotalGroundLevel >= GPWS_CruiseHeightOK and XNL_PlaneHasTCASGPWS then
								XNL_TakeOffCompleted = true
								local TotalFaultsDuringTakeOff = 0
								if DontSinkFaultTakeOff then TotalFaultsDuringTakeOff = TotalFaultsDuringTakeOff + 1 end
								if BankAngleFaultTakeOff then TotalFaultsDuringTakeOff = TotalFaultsDuringTakeOff + 1 end
								if StallFaultTakeOff then TotalFaultsDuringTakeOff = TotalFaultsDuringTakeOff + 1 end
								
								XNL_OnPlayerTakeoffComplete(V1Declared, TotalFaultsDuringTakeOff)
								if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "CruisingAltReached") then
									XNL_PlaneSoundList["CruisingAltReached"] = {Name = "CruisingAltReached", File = "23", Duration = 1000}
								end
								
								if XNL_CurrentPlane_AllowAutoPilot and  XNL_AutoPilotSystemEnabled and XNL_PlayerPilotOrCoPilot > 0 then
									DisplayHelpText("Autopilot availible by pressing " .. AutoPilotKeyName)
								end
							end
							
							if XNLPlaneLandGearState == 4 and CurrentTotalGroundLevel > 5.0 and CurrentSpeed > 2.0 and XNL_TakeOffCompleted and not NearXNLAirport  and XNL_PlaneHasTCASGPWS and not XNL_AutoPilotActive and not XNL_GlideSlopeActive then
								if CurrentTotalGroundLevel < GPWS_FirstWarning and CurrentTotalGroundLevel > GPWS_PanicWarning then
									FaultFlightTerain1 = true -- Remembers if the player caused a 'level 1' terrain warning
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSFirst") then
										XNL_PlaneSoundList["GPWSFirst"] = {Name = "GPWSFirst", File = "13", Duration = 1600}
									end
								else
									if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSFirst") then
										XNL_PlaneSoundList["GPWSFirst"] = nil
									end
								end
			
								if CurrentTotalGroundLevel < GPWS_PanicWarning and CurrentTotalGroundLevel > GPWS_PullUPWarning then
									FaultFlightTerain2 = true -- Remembers if the player caused a 'level 2' terrain warning
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSSecond") then
										XNL_PlaneSoundList["GPWSFirst"] = {Name = "GPWSSecond", File = "12", Duration = 1250}
									end
								else
									if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSSecond") then
										XNL_PlaneSoundList["GPWSSecond"] = nil
									end
								end
			
								if CurrentTotalGroundLevel < GPWS_PullUPWarning then
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSPull") then
										XNL_PlaneSoundList["GPWSPull"] = {Name = "GPWSPull", File = "4", Duration = 1700}
									end
								else
									if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSPull") then
										XNL_PlaneSoundList["GPWSPull"] = nil
									end
								end
							else
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSPull") then
									XNL_PlaneSoundList["GPWSPull"] = nil
								end
							
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSThird") then
									XNL_PlaneSoundList["GPWSThird"] = nil
								end
							
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSSecond") then
									XNL_PlaneSoundList["GPWSSecond"] = nil
								end
			
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GPWSFirst") then
									XNL_PlaneSoundList["GPWSFirst"] = nil
								end
							end
			
							if NearXNLAirport and CurrentTotalGroundLevel < 80.0 and XNLPlaneLandGearState ~= 0 and XNL_TakeOffCompleted  and XNL_PlaneHasTCASGPWS and not XNL_AutoPilotActive and not XNL_GlideSlopeActive then
								FaultFlightGears1 = true -- Remembers that the player caused a 'To Low Gears' warning during landing
								if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "GearLow") then
									XNL_PlaneSoundList["GearLow"] = {Name = "GearLow", File = "2", Duration = 1400}
								end
							else
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "GearLow") then
									XNL_PlaneSoundList["GearLow"] = nil
								end
							end
							
							if ((XNLPlaneYRoll > XNL_CurrentPlaneBankAngleLimit) or (XNLPlaneYRoll < -XNL_CurrentPlaneBankAngleLimit)) and XNL_PlaneHasTCASGPWS and not XNL_AutoPilotActive and not XNL_GlideSlopeActive then
								if not XNL_TakeOffCompleted then
									BankAngleFaultTakeOff = true  -- Detects if the player made a bank angle 'error' during takeoff
								else
									FaultFlightBank = true		  -- Detects if the player made a bank angle 'error' during flight
								end
								
								if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "BankAngle") then
									XNL_PlaneSoundList["BankAngle"] = {Name = "BankAngle", File = "1", Duration = 1850}
								end
							else
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "BankAngle") then
									XNL_PlaneSoundList["BankAngle"] = nil
								end
							end
			
							-- The "Sink Rate" warning when decending to fast and steep during landing
							-- NOTE that we don't want to hear this one during a takeoff and diving down (suddenly)
							if (XNLPlaneLandGearState == 0 or NearXNLAirport) and XNL_TakeOffCompleted  and XNL_PlaneHasTCASGPWS and not XNL_GlideSlopeActive then 
								if XNLPlaneXRoll <= XNL_CurrentPlaneSinkRateAngle and CurrentSpeed >= XNL_CurrentPlaneSinkRateSpeed then
									
									FaultFlightSinkRate = true
									
									if not IsSoundInPlaybacklist(XNL_PlaneSoundList, "SinkRate") then
										XNL_PlaneSoundList["SinkRate"] = {Name = "SinkRate", File = "5", Duration = 900}
									end
								else
									if IsSoundInPlaybacklist(XNL_PlaneSoundList, "SinkRate") then
										XNL_PlaneSoundList["SinkRate"] = nil
									end
								end
							else
								if IsSoundInPlaybacklist(XNL_PlaneSoundList, "SinkRate") then
									XNL_PlaneSoundList["SinkRate"] = nil
								end
							end
							
							if XNL_StartOtherAlarms  and XNL_PlaneHasTCASGPWS then
							-- THIS ALARM WILL ONLY SOUND WHEN THE PLANE HAS NOT TAKEN OFF YET!
							-- THIS is the DO NOT TAKE OFF (It's NOT a bug!!!)
							-- This is TCAS advising AGAINST using the plane due to (severe) damage (beep, beep, beep, beep... which it will keep doing!)!
							if (EngineHealth < 650.0 and not TakenOff) then
								if XNL_TCASReady == true and not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASReady") and not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASFail") then
									if not XNL_EngineAlarm then
										XNL_EngineAlarm = true
										PlaySoundLoop("playLoop", "20", GPWS_LoopAlarmVolume)
									end
								end
							else
								if XNL_EngineAlarm then
									XNL_EngineAlarm = false
									StopSoundLoop("stopLoop")
								end
							end
		
							-- This alarm will sound on total engine failure (engine fire) (aka: HEAVILY f*cked up airplane)
							if EngineHealth <= 500.0 then
								if XNL_TCASReady == true and not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASReady") and not IsSoundInPlaybacklist(XNL_PlaneSoundList, "TCASFail") then
									if not XNL_EngineAlarm2 then
										XNL_EngineAlarm2 = true
										PlaySoundLoop("playLoop2","16", GPWS_LoopAlarmVolume)
									end
								else
									if XNL_EngineAlarm2 then
										XNL_EngineAlarm2 = false
										StopSoundLoop("stopLoop2")
									end
								end
							else
								if XNL_EngineAlarm2 then
									XNL_EngineAlarm2 = false
									StopSoundLoop("stopLoop2")
								end
							end
		
							-- This is the sound of the 'stick shaker' aka: Plane Stall warning
							if CurrentTotalGroundLevel > 80 and CurrentSpeed < 20.0 then
								if not XNL_TakeOffCompleted then 
									StallFaultTakeOff = true 	-- Remembers if the player (nearly) caused a plane stall during takeoff
								else
									FaultFlightStall = true		-- Remembers if the player (nearly) caused a plane stall during flight
								end
	
								if not XNL_StallAlarm then
									XNL_StallAlarm = true
									PlaySoundLoop("playLoop3","18", GPWS_LoopAlarmVolume)
								end
							else
								if XNL_StallAlarm then
									XNL_StallAlarm = false
									StopSoundLoop("stopLoop3")
								end
							end
							
							-- This is the continuous beep that plays when TO LOW to the ground and STILL
							-- not having your landing gears deployed (and thus even ignoring the 'to low gear' warning)
							if NearXNLAirport and CurrentTotalGroundLevel < 50.0 and XNLPlaneLandGearState ~= 0 and XNL_TakeOffCompleted then
								FaultFlightGears2 = true	-- Remembers if the player caused a "BEEEEEEEP" error due to forgetting landing gears AND ignoring 'To Low Gears" during landing
								if not XNL_GearsAlarm then
									XNL_GearsAlarm = true
									PlaySoundLoop("playLoop4","6", GPWS_LoopAlarmVolume)
								end
							else
								if XNL_GearsAlarm then
									XNL_GearsAlarm = false
									StopSoundLoop("stopLoop4")
								end
							end
						else
							if XNL_EngineAlarm2 then
								XNL_EngineAlarm2 = false
								StopSoundLoop("stopLoop2")
							end
						
							if XNL_EngineAlarm then
								XNL_EngineAlarm = false
								StopSoundLoop("stopLoop")
							end
		
							if XNL_StallAlarm then
								XNL_StallAlarm = false
								StopSoundLoop("stopLoop3")
							end
		
							if XNL_GearsAlarm then
								XNL_GearsAlarm = false
								StopSoundLoop("stopLoop4")
							end
						end
						end

						if XNL_AircraftComputerOn then
							--DisplayHelpText("Speed:" .. roundInt(CurrentSpeed, 2) .. "~n~Xr:" .. roundInt(XNLPlaneXRoll, 2) .. "~n~Yr:" .. roundInt(XNLPlaneYRoll,2) .. "~n~Alt:" .. roundInt(tonumber(CurrentTotalGroundLevel),2) .. "~n~Head:" .. roundInt(GetEntityHeading(XNLPlayerRef),2) .. "~n~GlideSl: " .. GlideSlopeNrDetected)
						end

					end
			else
				if XNL_EngineAlarm2 then
					XNL_EngineAlarm2 = false
					StopSoundLoop("stopLoop2")
				end
			
				if XNL_EngineAlarm then
					XNL_EngineAlarm = false
					StopSoundLoop("stopLoop")
				end
			
				if XNL_StallAlarm then
					XNL_StallAlarm = false
					StopSoundLoop("stopLoop3")
				end
			
				if XNL_GearsAlarm then
					XNL_GearsAlarm = false
					StopSoundLoop("stopLoop4")
				end
			
			end
		end
		XNL_AircraftComputerRunning = false					-- Register shutdown of Aircraft Computer

		-- Here we remove the blips that have been drawn on the map
		-- IF they are enabled and exist of course ;)
		if XNL_CreateAirportBlips then
			if DoesBlipExist(AP1_Blip) then
				RemoveBlip(AP1_Blip)
			end
			if DoesBlipExist(AP2_Blip) then
				RemoveBlip(AP2_Blip)
			end
			if DoesBlipExist(AP3_Blip) then
				RemoveBlip(AP3_Blip)
			end
			if DoesBlipExist(AP4_Blip) then
				RemoveBlip(AP4_Blip)
			end
			if DoesBlipExist(AP5_Blip) then
				RemoveBlip(AP5_Blip)
			end
		
		end
	end)
end

AutoPilotDelayActive = false
function AutoPilotDelay()
	Citizen.CreateThread(function()
		AutoPilotDelayActive = true
		Wait(4000)
		AutoPilotDelayActive = false
	end)
end

GlideSlopeDelayActive = false
function GlideSlopeDelay()
	Citizen.CreateThread(function()
		GlideSlopeDelayActive = true
		Wait(4000)
		GlideSlopeDelayActive = false
	end)
end


-- A quick and simple function to 'round numbers' in Lua,
-- I use this function for displaying the Altitude when it's enabled
function roundInt(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

--========================================================================
-- The well known and very often used entity enumerator by IllidanS4
-- yet again adapted for own use, Used by TCAS to detect ped's in vehicles
-- nearby on ground and in air.
-- Original: 
-- https://gist.github.com/IllidanS4/9865ed17f60576425369fc1da70259b2
--========================================================================
local entityEnumerator = {
  __gc = function(enum)
    if enum.destructor and enum.handle then
      enum.destructor(enum.handle)
    end
    enum.destructor = nil
    enum.handle = nil
  end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
  return coroutine.wrap(function()
    local iter, id = initFunc()
    if not id or id == 0 then
      disposeFunc(iter)
      return
    end
    
    local enum = {handle = iter, destructor = disposeFunc}
    setmetatable(enum, entityEnumerator)
    
    local next = true
    repeat
      coroutine.yield(id)
      next, id = moveFunc(iter)
    until not next
    
    enum.destructor, enum.handle = nil, nil
    disposeFunc(iter)
  end)
end

function EnumeratePeds()
  return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

-- This function scans for Peds, Aircrafts and airport vehicles on the ground for TCAS and reports them back as "Traffic"
function AnyPedInAircraft(X, Y, Z, Radius, MovingOnly, DetectGroundPersonel)
	FoundPeds = 0
	for Ped in EnumeratePeds() do
		if DoesEntityExist(Ped) then
			local PedPosition = GetEntityCoords(Ped, false)
			if Vdist(X, Y, Z, PedPosition.x, PedPosition.y, PedPosition.z) <= Radius then
				if Ped ~= GetPlayerPed(-1) then
					if MovingOnly then
						if GetEntitySpeed(Ped) > 2.0 then -- If we only want to check for moving personel then check for the rest of the requirements, else ignore them when standing still
							-- Make sure it doesn't give false reports when it detects a players
							-- which is also in the same plane (either co-pilot or passenger!)
							if IsPedSittingInAnyVehicle(Ped) then
								if GetVehiclePedIsIn(Ped, false) == XNLPlaneRef then return false end
							end
							
							if IsPedInAnyPlane(Ped) then return true end
							if IsPedInAnyHeli(Ped) then return true end
							
 							if DetectGroundPersonel then
								if IsPedSittingInAnyVehicle(Ped) then
									XNLGroundModelFound = GetEntityModel(GetVehiclePedIsIn(Ped, false))
								-- XNL and custom Vehicles 
								if XNLGroundModelFound == GetHashKey('xnladmincar') then return true end	-- You don't need these (is for my server's custom admin and developer cars)
								if XNLGroundModelFound == GetHashKey('xnldevelcar') then return true end	-- You don't need these (is for my server's custom admin and developer cars)
								if XNLGroundModelFound == GetHashKey('xnldevelcar2') then return true end	-- You don't need these (is for my server's custom admin and developer cars)

								-- Emergency Vehicles
								if XNLGroundModelFound == GetHashKey('firetruck') then return true end		-- We do allow firetrucks since we have yellow firetrucks at the airport, uncomment for NOT detecting them!
								if XNLGroundModelFound == GetHashKey('ambulance') then return true end		-- We do allow ambulances since we have special airport ambulances at the airport, uncomment for NOT detecting them!
								if XNLGroundModelFound == GetHashKey('dilettante2') then return true end	-- We do allow the Partol (security car) since we use it for airport security

								-- Official Airport vehicles
								if XNLGroundModelFound == GetHashKey('ripley') then return true end			-- The Ripley
								if XNLGroundModelFound == GetHashKey('airtug') then return true end			-- The Airtug

								-- Addon/"ported" Vehicles
								if XNLGroundModelFound == GetHashKey('xnlferoci2') then return true end		-- The FlyUs Feroci Converted to GTA V for my server
								if XNLGroundModelFound == GetHashKey('xnlperennial2') then return true end	-- The FlyUs Perennial Converted to GTA V for my server
								
								-- Additional airport vehicles we use on our server at the airport for missions (and thus registred/allow as airport vehicle)
								if XNLGroundModelFound == GetHashKey('caddy3') then return true end			-- We do allow this one since we use it for baggae hauling and other RP missions
								if XNLGroundModelFound == GetHashKey('forklift') then return true end		-- We do allow the forklift since we have a 'special livery' for airport one
								if XNLGroundModelFound == GetHashKey('airbus') then return true end			-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'

								-- Trucks we allow, for example for (re-)fueling missions/jobs!
								if XNLGroundModelFound == GetHashKey('packer') then return true end			-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'
								if XNLGroundModelFound == GetHashKey('phantom') then return true end		-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'
								if XNLGroundModelFound == GetHashKey('phantom3') then return true end		-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'
								
								-- Mail Vans (we use them for Airmail pickup missions)
								if XNLGroundModelFound == GetHashKey('boxville2') then return true end		-- The Go Postal Mail Van
								if XNLGroundModelFound == GetHashKey('boxville4') then return true end		-- The Post Op Mail Van 
								end
							end
						end
					else
						-- Make sure it doesn't give false reports when it detects a players
						-- which is also in the same plane (either co-pilot or passenger!)
						if IsPedSittingInAnyVehicle(Ped) then
							if GetVehiclePedIsIn(Ped, false) == XNLPlaneRef then return false end
						end

						if IsPedInAnyPlane(Ped) then return true end
						if IsPedInAnyHeli(Ped) then return true end
					
 						if DetectGroundPersonel then
							if IsPedSittingInAnyVehicle(Ped) then
								XNLGroundModelFound = GetEntityModel(GetVehiclePedIsIn(Ped, false))
								-- XNL and custom Vehicles 
								if XNLGroundModelFound == GetHashKey('xnladmincar') then return true end	-- You don't need these (is for my server's custom admin and developer cars)
								if XNLGroundModelFound == GetHashKey('xnldevelcar') then return true end	-- You don't need these (is for my server's custom admin and developer cars)
								if XNLGroundModelFound == GetHashKey('xnldevelcar2') then return true end	-- You don't need these (is for my server's custom admin and developer cars)

								-- Emergency Vehicles
								if XNLGroundModelFound == GetHashKey('firetruck') then return true end		-- We do allow firetrucks since we have yellow firetrucks at the airport, uncomment for NOT detecting them!
								if XNLGroundModelFound == GetHashKey('ambulance') then return true end		-- We do allow ambulances since we have special airport ambulances at the airport, uncomment for NOT detecting them!
								if XNLGroundModelFound == GetHashKey('dilettante2') then return true end	-- We do allow the Partol (security car) since we use it for airport security

								-- Official Airport vehicles
								if XNLGroundModelFound == GetHashKey('ripley') then return true end			-- The Ripley
								if XNLGroundModelFound == GetHashKey('airtug') then return true end			-- The Airtug

								-- Addon/"ported" Vehicles
								if XNLGroundModelFound == GetHashKey('xnlferoci2') then return true end		-- The FlyUs Feroci Converted to GTA V for my server
								if XNLGroundModelFound == GetHashKey('xnlperennial2') then return true end	-- The FlyUs Perennial Converted to GTA V for my server
								
								-- Additional airport vehicles we use on our server at the airport for missions (and thus registred/allow as airport vehicle)
								if XNLGroundModelFound == GetHashKey('caddy3') then return true end			-- We do allow this one since we use it for baggae hauling and other RP missions
								if XNLGroundModelFound == GetHashKey('forklift') then return true end		-- We do allow the forklift since we have a 'special livery' for airport one
								if XNLGroundModelFound == GetHashKey('airbus') then return true end			-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'

								-- Trucks we allow, for example for (re-)fueling missions/jobs!
								if XNLGroundModelFound == GetHashKey('packer') then return true end			-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'
								if XNLGroundModelFound == GetHashKey('phantom') then return true end		-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'
								if XNLGroundModelFound == GetHashKey('phantom3') then return true end		-- We do allow the AIRbus on certain area's of the airport for passenger unloading on 'low budget and small flights'
								
								-- Mail Vans (we use them for Airmail pickup missions)
								if XNLGroundModelFound == GetHashKey('boxville2') then return true end		-- The Go Postal Mail Van
								if XNLGroundModelFound == GetHashKey('boxville4') then return true end		-- The Post Op Mail Van 
							end
						end
					end
				end
			end
		end
	end
	return false
end


-- This function scans for Peds and aircrafts in the air and uses a different method than on the ground
function AnyPedInAircraftAlt(X, Y, Z, Radius)
	FoundPeds = 0
	for Ped in EnumeratePeds() do
		if DoesEntityExist(Ped) then
			local PedPosition = GetEntityCoords(Ped, false)
			if Vdist(X, Y, Z, PedPosition.x, PedPosition.y, PedPosition.z) <= Radius then
				if Ped ~= GetPlayerPed(-1) then
					if IsPedInAnyPlane(Ped) or IsPedInAnyHeli(Ped) then
						-- Make sure it doesn't give false reports when it detects a players
						-- which is also in the same plane (either co-pilot or passenger!)
						if GetVehiclePedIsIn(Ped, false) ~= XNLPlaneRef then 
							if PedPosition.z < Z then return 1 end -- ACCEND
							return 2 -- DECENT
						end
					end
				end
			end
		end
	end
	return 0
end
--========================================================================
-- End of Entity Enumerator
--========================================================================
