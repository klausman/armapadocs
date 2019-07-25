---
title: Swifty Troubleshooting
---
### Introduction

This document describes a few techniques for troubleshooting Swifty problems.
This guide mostly covers Swifty 3, but some or all of the approaches can be
used with Swifty 2 as well. Note that while Swifty 2 does not *display* error
messages as nicely as version 3, it does have a log file For both versions,
looking at the error messages (v3) or the end of the logfile (v2) is the
starting point.

### Download fails with error code 416

This error typically looks like this:

    System.Exception: Failed to download
    https://swifty.projectawesome.net/event3/@js_jc_fa18/Sample mission/FA18_MAIDEN_FLIGHT.Stratis/Init.sqf
    ---> System.Net.WebException: The remote server returned an error:
    	(416) Requested Range Not Satisfiable.
       at SwiftyBackend.SwiftyDownload.Start() in E:\Dev\SwiftyNew\SwiftyWPF\swifty-backend\SwiftyDownload.cs:line 102
       --- End of inner exception stack trace ---

This is caused by very fast/highly-parallel downloads. It is transient, so it
goes away on the next sync. If it keeps happening over and over, poke one of
the server admins, since there might be a more severe problem

### The same mods are downloaded over and over

In these cases, first try quitting Swifty and wiping out *everything* in its
temporary directory. If that does not help, try deleting the mods it
re-downloads from the relevant modpack directory. If the mods in question are
"all of them", open the dropdowns of the "mods have updates" dialog. If it
mentions needing to download `mod.srf`, poke a server admin. 

### Swifty hangs on Faces Of War check

This is not actually a hang: the Faces of War mod has PBOs that are structured
in a way that makes them very time/CPU-intensive for Swifty to check. Even on
a fast machine, this can take *minutes* (my i7 6700K occasionally spends 10m
on this mod). There is no easy fix for us to implement. Either the Swifty devs
need to special-case the mod, or the FOW devs need to change the structure of
the PBOs.

### None of this helped, everything is horrible. Help.

In order for the mod/server admins to help you, we need a few things:

- When does the problem happen? (during check? during downloading?)
- Which repo(s) does the problem happen on?
- Are their specific mods affected (e.g. constantly re-downloading)?
- When did this start? Just now or has it been happening for weeks?

We may ask you for the Swifty log. Do *not* just send us the file. It grows
over time, and so you might send us thousands of irrelevant entries. Instead,
close Swifty, move the log file away, then reproduce the
problem and send us the new log file.
