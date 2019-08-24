---
title: Reddit post template
weight: 8
---

Here is the reddit post template for missions with PA:

[Template](template.txt)

## Instructions

The reddit post serves multiple purposes:

- Information about the mission
- Assignment of slots before event time
- A place to ask clarifications about the mission itself

The format is inspired by the real-world [Five paragraph
order](https://en.wikipedia.org/wiki/Five_paragraph_order), also known by the
mnemonic SMEAC (Situation, Mission, Execution, Administrativa,
Command/Signal). As such, it contains sections that are a lot more important
in the real world than when playing with PA. Feel free to remove them if they
are irrelevant.

## Reddit post title

Not part of the template. Take extra care when making this, as it can not be
changed after posting (you have to delete the post and re-make it). The format
is pretty free-form, but one well-working example is:

```
[ARMA3: APEX] Operation Template - Sunday, 2019-08-11@19:00 UTC
```


Note that this is a mission that requires APEX *for all slots*, i.e. it is
most likely to be on Tanoa. For Livonia you'd use `[ARMA 3: Contact]`, for WW2
missions `[ARMA 3: WW2]` and so on. If the mission has the APEX/Contact/...
requirement only for selected slots, this is *not necessary.* You would still
have to annotate the slots (see below) in the post itself.

## The template, in detail

The template sections, in order:

### Calendar line

This is (or was) used by automation to figure out the time and name of the
mission. The format is:

```
Calendar Details:|YYYY-MM-DD HH:II|Arma 3|Mission Name|
```

The format is pretty self-explanatory. Note that the time (`HH:II`) should be
in 24h format (no am/pm) and in UTC.

### Mission name

Prefixed with one `#`, the title/name of the mission. 

### Standard header

This part rarely changes between missions, besides making sure the `When?` line
has the right time when DST changes roll around. When changing it, make sure
to change both the link description *and* the link it refers to.

### Main mission description

Under the heading `Briefing`, You'll find the actual SMEAC briefing. There are
*lot* of items there, and often, whole sections are irrelevant to the mission
(and our play style), so feel free to drop entire sections. Mostly, they're
there so the mission maker doesn't forget to include *relevant* information.

There are a few sections that are non-obvious:

- `North/South/East/West:` what (of relevance) is adjacent to the AO in these
  directions? This is mostly about know whether there is a threat there,
  civilians/infrastructure, other friendly elements, or any type of no-go
  area.
- `Attachments/Detachment:` list all groups of units that are not usually part
  of the player group (by function). For example if there are three infantry
  squads and one of them has four engineers attached for UXO disposal, this is
  the place to mention it.
- `Commander's Intent:` What does the CO want to do? The subsections here are
  rather abstract, but serve as a reminder for the bits and pieces that should
  be mentioned if not glaringly obvious.
- `Critical Vulnerability`/`Exploitation Plan`: this is about what
  vulnerability the CO wants to exploit and how. In defense missions, this can
  be the opposite, like a gap in friendly lines that must be closed.
- `Command/Signal:` in the real world, this is about communication lines and
  the like. For PA, it only really matters if the mission deviates from the
  "everyone has a SR radio, leaders have LR radios" scheme.

Note that some (possibly all) of this can be dropped if the mission maker
wants to give the CO entirely free rein. But even then, said CO should touch
upon the important parts of SMEAC during Slotting and Map-side planning.

### Slotting

Note, the actual *Slots* section is discussed below. Just a normal instructional
section that rarely needs changes. 

### Roles

In this section point out special considerations for roles, e.g. if Engineers
first need to go to a logistics base to get mine detectors and defusal kits.
This is also the place to point out special gameplay mechanics that people in
certain roles should be familiar with (e.g. Boxloader, Repair/Rearm/Refuel
scripts, Sling Loading/Towing, ...)

### Slots

At the very end of the post is the slotting table. For illustration, here's the
header and first few lines:

```
Callsign/ Role          | IGN |Equipment|Notes
----|----|----|----|
**Commanding Officer**  ||M4|
||
**ALPHA Leader**        ||M4/M203|
FT1 Grenadier           ||M4/M203|
FT1 Rifleman AT         ||M4/M136|
```

Notes:

- A line in the table must **never** contain leading spaces, otherwise, the
  whole table will break. There should also never be entirely empty lines.
- Roles with the "must have played three times with us" requirement should be
  in bold (using `**`).
- The `Equipment` and `Notes` columns aren't strictly necessary, but it's nice
  if players know what to expect.
- The `Notes` column should indicate whether a role needs a particular DLC,
  like APEX or Contact.
- For those players that aren't quite sure if they can make it (or that don't
  want to reserve a specific slot), there is also a `Reserve` section at the
  bottom


