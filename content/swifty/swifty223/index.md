---
title: Switching from Swifty 2.x to 3.x
---

## Introduction

Traditionally, PA has used only Swifty 2 for modpack management, but since
the release of Swifty 3, the developers have stopped supporting Swifty 2,
and the bugs it has will likely not be fixed any time soon. Thus, with the
next Test Repo -> Event Repo transition, Swifty 3 will be the main supported
mod manager for PA. Swifty 2 will still be supported server-side, but user
support will be limited, and in the case of persistent bugs, we strongly
recommend switching to 3. All _new_ setups, regardless of modpack should use
3 unless there is a very strong reason not to.

## Installation

Conversion is relatively simple and should not use much extra disk space. The
first things to do are to download and install Swifty 3 from [the Swifty
website.](https://getswifty.net) Swifty 2 and 3 can be installed at the
same time without problem, but sharing download directories between them
should not be recurring, i.e. re-using the mod directories for a _migration_
is fine, while going back and forth between 2 and 3 will likely cause
problems. Also note that the 3 installer *may* overwrite the desktop
shortcut for Swifty 2, so make a backup (as long as it's not named just
`Swifty`, it should be fine, so renaming it to `Swifty 2` would be ok).

After Swifty 3 is installed, you can add repositories in the same way as is
described in the [Swifty 3 install doc.](../swifty3/) Note how the repository
URLs between Swifty 2 and 3 are different:

- `http://swifty.projectawesome.net/event/`->`https://swifty.projectawesome.net/event3/`
- `http://swifty.projectawesome.net/ww2/`->`https://swifty.projectawesome.net/ww6/`

If you want to re-use your download directories, just use the same names as
Swifty 2 has configured for each of the directories. If you want to re-use the
data, but not the directories, you can just move or copy them before adding
them in Swifty 3. For the other global and per-modpack parameters, see the S3
install doc.

After you have Switched to Swifty 3, you can uninstall Swifty 2 and you're
done!
