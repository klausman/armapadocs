---
title: Mission testing checklist
weight: 2
---

## Technical

- Make sure you have implemented the framework into your mission correctly and
  that JIP and (if desired) the spectate screen are working as intended.
  - Also make sure you give players enough gear and medical supplies and/or the
    ability to resupply.
  - Use our framework\! It will handle all of this for you.
- Test if the mission runs on our server.
  - The mission working locally on your PC is not enough. There might be issues
    that you don’t see, such as script locality (your client is also the server
    so it will have access to all the server side scripts, on the dedicated
    server this will change) or mod differences (you might have additional mods
    loaded that may break the mission on the server).
- Test your scripts.
  - If you have added your own scripts or especially if you use a script from
    another source than our framework make sure and test that it works and does
    not loop. A looping script might cause desync, bad frames or even the
    mission/server to crash.
  - If you’re using a script from the framework that has recently been added
    you should also test it, as it might still not run perfectly.
- Make sure you have set the respawn markers for each side (`respawn_west`,
  etc.)
- Do not inhibit Zeus functionality in case something in your mission goes
  wrong and the admin needs to fix it.
- If you have changed Addon settings (e.g. InstaDeath, Advanced Medical),
  test them a lot and make sure you tell the host and/or players about your
  different settings.
- Ensure your mission name applies the PA mission naming conventions:
  - `pa_gamemode#players_name_version.mapname.pbo`
  - Game modes are `CO`, `TvT`, `Z` depending on what your mission entails.
  - Spaces between words are replaced by underscores (`_`).
  - Colons between words are replaced by dashes (`-`).
  - Do not use capitalization in your mission name.
  - Example: Your mission on Altis is a coop mission for 50 people and it is
    called Banana Hamster. You are currently sitting on version 3.1.6 of it.
    Your mission name should be `pa_co50_banana_hamster_v3-1-6.Altis.pbo`
- Make sure the FPS are at least playable.
  - This will behave differently on your self-hosted sessionthan on the server,
    so if your FPS are bad in when editing they might not be bad in on server
    because you will not have to host as client and server at the same time.
  - This is also true the other way around, at event time there are a lot more
    active entities (players) in the mission, plan and accommodate for that.

## Player slots, loadouts and equipment

- Make sure there are enough slots for all the players (Potentially setting up
  at least Charlie squad for slotting). It's a good idea to have one more squad
  in the mission than on the Reddit signup post, so walk-ins will always have
  room. You may still have to add extra slots during the signup period.
- Check the equipment for all player classes.
  - Make sure that each slot has a working radio and find somebody else to test
    talking on the radio and switching radio channels.
  - Make sure all issued weapons have the right ammo, both for the loadouts and
    any kind of resupplies you are planning. The DMs or ARs having the wrong
    ammo can be very disruptive!
- Make sure there is enough transportation for all the players (could have
  extra at respawn or placed around map).
  - If you add new squads because of a lot of people signing up for the event
    your mission is played in, be sure to also add extra transportation.

## Balancing and AI

- Check triggers and enemy spawns.
  - Check all the triggers and spawns!
  - Check enemy respawns as well if you use a respawn system for them
- Try and balance player and enemy numbers.
  - Try to keep the number of simultaneously active AI as low as possible
  - Consider adding more AI when adding more players to your mission
- Gauge the time the mission is going to take.
  - Make sure you have active AI for the whole duration for the mission
  - Make sure active AI stop at some point (when an objective is clear, for
    example).
- Balance player equipment around assets.
  - For example, if players are intended to evacuate with vehicles they should
    have the ability to at least repair the tyres in case of an accident.
  - Full repair and rearm capabilities are usually a good idea if players use
    vehicles.
- Give players counters to enemy assets.
  - If the AI has tanks, the players need AT.
  - If the AI has jets and helicopters, the players need decent AA.
  - Similarly, give players a good counter to enemy counters: A ton of enemy AA
    is no fun for your helicopter pilots, but might pose a decent threat for
    your fastmovers.
- Make sure there is a decent mission ending that will allow the mission to end
  - Do not use an end of mission trigger, give people time to RTB/take event
    group photos.
  - Make sure there is a definitive end that the CO can establish, give RTB
    possibility (or another way to collect players and take a group photo),
    talk to CO about when to end the mission beforehand (\>event host
    guidelines).
