# Advice for smooth and readable demos and presentations

*See also: [tools](tools.md)*

This file provides general advice I've collected over years of presenting, to
help you make technical presentations and demos that go well. Some of this
advice is macOS-specific, but much of it applies to any environment.

<!--TOC-->

- [Advice for smooth and readable demos and presentations](#advice-for-smooth-and-readable-demos-and-presentations)
  - [Use a presentation-specific user account](#use-a-presentation-specific-user-account)
    - [Make a Presenter user](#make-a-presenter-user)
    - [Set up the Presenter user](#set-up-the-presenter-user)
  - [Check everything before you present](#check-everything-before-you-present)
  - [Record your demos](#record-your-demos)
  - [Use demo scripts](#use-demo-scripts)
    - [have prepared state checkpoints](#have-prepared-state-checkpoints)
  - [Display things clearly](#display-things-clearly)
  - [Slow down](#slow-down)

<!--TOC-->

## Use a presentation-specific user account

One of the more irritating and embarrassing things that can happen when
presenting live is that your daily work environment causes a distraction. A
notification pops up, something private is in a browser tab or document you
switch to by accident, etc.

You can avoid all of this by making a user account that is *only* used for
making presentations.

### Make a Presenter user

1. Make a group called something like "Presentations"
2. Make a new "Presenter" user, and make sure they're in the Presentations
   group
3. In Finder, wherever you keep things you'll need to present, make sure
   you set the files to be readable by the Presentations group

### Set up the Presenter user

1. Configure any presentation tools and test them thoroughly
2. Disable all notifications -- schedule Do Not Disturb so that it's always
   enabled
3. Make desktop or Dock shortcuts to key applications
4. Set things you'll always use to start at login so you can't forget
5. If you're using [KeepingYouAwake](https://keepingyouawake.app/)
   or any similar tool that keeps your Mac awake -- which is highly
   recommended! -- set it to start automatically and to go into its "stay
   awake" mode on startup

## Check everything before you present

When preparing to present:

1. Make a shortcut to the folder(s) where all your presentation materials are
2. Test everything; make sure it's all working -- that means actually open/run
   everything; test any slides, run through your demo process to make sure
   it all still works, play any recordings, etc.
3. Double-check your Notifications
4. Make sure the machine is set not to sleep
5. Set your display resolution to 1080p (1920x1080) or lower (DisplayMenu is
   useful for this; see [tools][tools.md])
6. Clean your desktop! (see [toggle-desk-icons.sh](toggle-desk-icons.sh) to
   toggle display of desktop icons)
7. Turn off WiFi and Bluetooth unless they're required
8. Make sure software updates are disabled/paused

Remember that your goal is for your audience to pay attention to you and what
you're presenting. Make sure that you eliminate any potential on-screen or 
audio distractions.


## Record your demos

Live demos can be great, especially if you've practiced and no step involves
your audience staring and progress messages/progress bars for long stretches
of time. But the Demo Gods are cruel and even when you've practiced many times,
live demos can fail.

**Always have a clean recording of each planned demo as a backup**. 

On modern macOS, QuickTime Player has the option to "Create a New Screen
Recording" that will let you easily record your demo. There are also many
good 3rd-party tools. Don't be afraid to edit the demo to keep time tight;
your audience will listen to you "um, ah" a little bit for a live demo -- they
will be less forgiving of rough edges in a pre-recorded demo.

This way, if your demo fails, you can seamlessly pull the "cooking show trick"
of "well, here's one I prepared earlier". No one wants to watch you try to 
debug your demo live.

## Use demo scripts

Unless you are a fast and accurate typist (and remain so while undergoing the
stress of presenting), there will be some frustration from your audience
watching you type every command.

Use scripts. There are two kinds for two different uses:

- **shell/Automator/programming scripts** are great for things where the
  audience doesn't care much about the details. You can show the script file
  if the steps matter, and then run it to show how quick the setup is or the
  like

- **cut-and-paste scripts** are great for when you're walking your audience
  through each step. You can have a text file of commands (or even partial
  commands, if the demo is such that you're using audience input or the like)
  and copy-paste the command in the terminal, discuss it as needed, and run
  without making the audience suffer through watching you type

Whatever you do **try not to make the audience watch you type**. Keep that
to a minimum.

### have prepared state checkpoints

Whenever possible have "checkpoints" along your demo path saved. If any step
of the demo goes wrong, you can start from a known-good state instead of
trying to debug live or being forced to switch to a recording.

For example, if one step produces .json files that are fed into the next step,
have known-good .json files in a handy folder; if something goes wrong, you
can smoothly go to your prepared "checkpoint" and continue the demo with only
a small disruption

## Display things clearly

(Some of this advice is repeated in other sections)

- Turn off display of desktop items using
  [toggle-desk-icons.sh](toggle-desk-icons.sh)
- Keep your screen resolution low; 1080p or lower
	* when projecting, match your resolution to one of the native resolutions
	  on the projector or display your audience will see
- Make everything _big_! Lowering resolution helps, but also:
  	* increase your text sizes everywhere:
  		+ Cmd-= (think "plus", but without shift) works on most apps
  		+ Don't forget Preview, your browser, text editors, terminals
  	* pay attention to the size of important elements in images
  	* Accessibility->Display->Cursor and set your Cursor size larger
  	* Accessibility->Zoom and set a screen-zoom shortcut/gesture
  		+ Use Full Screen or Picture-in-Picture options for Zoom style
- Avoid clutter
	* The more that's on your screen, the harder it is to see any individual
	  thing
	* Increase the "whitespace" around text and other object
	* Avoid overlapping windows, and keep "gutters" between windows

## Slow down

It's a lot harder to follow you if you're going fast.

- Let people see commands/etc for a few seconds before you run them or move
  away from them. It takes more time for people to read as an audience than
  if they're doing it themselves. A good way to handle this is to display the
  command, explain it briefly, then run it

- Avoid lots of fast scrolling. People can't track code/text as well when
  *someone else* is scrolling it

- Don't "waggle" your mouse to highlight things; if you can't use a selection
  (i.e. selecting text to highlight it), then move your mouse _smoothly_ over
  or around what you're drawing attention to. The cursor pulls attention, so
  moving it excessively will distract from what you're highlighting

