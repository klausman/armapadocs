---
title: PA Medical Guide
weight: 1
---
## Introduction and Overview

With the latest release of ACE (v3.13, released 2020-01-01), the medical system
has changed drastically. From a code point of view, it was a rewrite from
scratch.

The main motivation of the ACE Devs was to clean up the internal states ACE
would track, as well as getting rid of the distinction of Basic and Advanced
Medical systems, in order to make the code cleaner, while at the same time
providing more fine-grained settings for players and mission makers.

The new setup allows for a gradual setup somewhere between the old Basic and
Advanced systems, though it is not a 100% match. Oriskana and I have tried to
tweak the settings to make them as close to the old Basic Medical setup we
used, but it's not perfect. Hence this document to explain the changes.

## Specific changes

In the UI, the medical menu (and the smaller popup version of it) are now
extremely useful tools that will tell you the severity of wounds not just by
how intense the color is, but also by the hue: lighter wounds look yellow,
heavier wounds are an intense red.

The biggest difference is that the old bleedout timer does not exist anymore,
and that rapid bleedout can now cause death in a matter of minutes. There is
nothing in the settings that would allow us to change this, short of making
bleeding a non-issue at all, which we obviously don't want.

That said, bleed-out is now the #1 killer. While with the default settings,
cardiac arrest would kill a player in thirty seconds, we have bumped that to
fifteen minutes, as otherwise, a major gunshot wound would almost always be
fatal, even if the medic is standing next to you as you go down. *Side note:
yes, that is what happens in the real world, but we're aiming for fun here,
not as-realistically-horrifying-as-possible.*

In the context of bleeding, tourniquets now are very important for everyone,
grunts and medics alike. They give you valuable time to treat bleeding limbs,
and thus make death by bleedout much less likely. They also make getting
someone back up easier, as high blood loss affects wakeup chances and the
usefulness of both epinephrine and morphine.

Also, both epinephrine and morphine work differently. Epinephrine is no longer
the "pop one and you're up" magic stick. Instead, it bumps up the heart rate
for ten seconds, and increases the frequency of the wakeup checks (they
normally only happen every 15 seconds). For patients in cardiac arrest perform
CPR until you get a pulse, then administer epinephrine if you can. If you
can't, keep doing CPR. Regularly check the pulse of the patient while they are
unconscious.

Morphine has also lost a lot of magic. Its effects happen over a much longer
time (typically 10-30 minutes). Thus it makes almost no sense to use several of
them at the same time, unless you're about to pass out from the pain. There is
usually no point in giving morphine to an unconscious patient.

## Non-medic players

For treating yourself:

- If any of your arms or legs is bleeding-red, apply tourniquets *first*.
  Putting tourniquets on yellow limbs is usually not necessary. Note that
  tourniquets are reusable, so when you remove one, it goes back to your
  inventory.
- If your head or torso are bleeding, bandage them quickly.
- Bandage arms/legs and remove tourniquets. Note that tourniquets start causing
  pain if left on for more than 5 minutes (sooner if you have more than one
  applied).
- Manage your pain using Morphine. Space doses out by at least 3-5 minutes.

For treating somebody else:

- Tourniquet red limbs
- Bandage head and torso until no longer bleeding
- Bandage limbs until no longer bleeding, remove tourniquets
- Check pulse. Note that you will never find a pulse on a tourniquet-ed limb for
  obvious reasons. If there no pulse, perform CPR. Repeat until the patient
  has a stable pulse (recheck frequently if they stay unconscious!) or a medic
  arrives and then follow their instructions.

Again, there is usually no point in giving morphine to an unconscious patient.

## Medics

The main differences between a medic and a grunt are that the medic has more
actions available:

- Checking heart rate and blood pressure will give you exact numbers. The
  normal/healthy values for those are 80 (heart rate) and 120/80 (blood
  pressure).
- You can administer epinephrine
- You can give IVs, including to yourself

The treatment of individuals who are down is as illustrated above, with the
added bonus of being able to use epinephrine to increase wake-up-chances, and
IVs to counteract blood loss (which helps with vitals as well).

Your main other responsibility is triage (deciding who to treat first and
how) and coordinating help from the grunts (they can help with bandaging, CPR
and so on). You will also likely carry more tourniquets and bandages than the
average grunt, so you can hand them out. Ideally put them in your backpack at
mission start, so everyone can access them without your help.

Here's a table that maps the medical menu strings to the actual blood loss,
which will be handy for medics to decide how many trnasfusions of what size
to give:

Base blood volume is 6 liters.

The patient has lost…|Liters lost
---|---|
…some blood|<=0.9
…a lot of blood|<=1.8
…a large amount of blood|<=2.4
…a critical amount of blood|>2.4

Losing more than half the base amount (i.e. 3 liters) is always fatal.

## Mission Makers

For mission makers there are two parts to the new medical system: changes to
loadouts and the like to have a consistent difficulty/deadliness level, and
new settings you can change in your mission to make things more or less
deadly. This section only covers the first, the latter will be another
write-up.

### Equipment changes

All of the old equipment is still there, but its functionality changes
slightly. Bandages still work exactly the same, but we *think* more are needed
on average. Play-testing will give us more data. The changed items are:

- Morphine: now works *much* slower and less efficiently. Give the grunts and
  medics the same number as before, but keep an eye on it and plan for
  resupplies.
- Epinephrine: not guaranteed to work as well as it did, so increase numbers
  given to medics. If you don't change medical settings, grunts can't use
  them, but the medic can use epinephrine from a patient's inventory.
- IVs: medics now can give themselves IVs. Not much of a change for the
  mission maker, but a huge deal for player medics.

*Most critically,* giving tourniquets to everyone is an **absolute must.** I
recommend giving grunts 4 or 5 of them, and 10 or more to the medics. Without
tourniquets, there will be a lot of unconsciousness and death in your mission.
While tourniquets are reusable, they also are very light, so having more than
you need is a good thing.
