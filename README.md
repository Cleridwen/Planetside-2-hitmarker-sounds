# Planetside-2-hitmarker-sounds
This project contains two AutoHotkey scripts that will play audio files of your choosing, whenever you land a hit in the game Planetside 2 on PC. It does so by scanning the color of specific pixels on the screen, where the red "X" hitmarker would show up. If two of those pixels turn the specified red, then a .wav file is played.

One script plays audio for regular hits, the second plays audio for headshots.

This is all currently pretty janky. Accidental triggers will happen, especially if you look directly at TR terminals and control points.

Thank you very much to amp for coming up with the original idea!

# Limitations
- Does not work if the game is not on the main monitor, or is displayed in a floating window: the game has to be in fullscreen or borderless window, on the main monitor.
- A hitmarker sound may play if the color happens to come on screen for another reason than the hitmarker itself.
- The audio file(s) have to be in .wav format.
- Only tested on Windows.

# How to use:

## Download

- Download the [latest release](https://github.com/Cleridwen/Planetside-2-hitmarker-sounds/releases/latest), and extract the .zip file to the folder of your choice.

If you want to test early versions of the script, you can also directly download the files up there.

## Use

- Make sure that the audio files you want to use are in .wav format.
- Rename the files as `hitsound.wav` and `hitsoundHS.wav`, for the regular hitmarker and headshot hitmarker respectively.
- Place the audio files in a folder named `Sounds`, located in the same folder as the scripts. It should look like this:
```
├───Sounds
│   ├─hitsound.wav
│   └─hitsoundHS.wav
├─PS2hitsound.ahk
└─PS2hitsoundHS.ahk
```
- Double click the script you wish to use. If you want to use the .ahk scripts directly, make sure you have an updated version of [AutoHotkey](https://www.autohotkey.com/) installed. The scripts will run as a tray icon. From there, it should play the sounds as you hit/headshot in the game.
- To close a script, simply right click it in the taskbar tray and select "Exit".

Make sure to come back and check the [releases](https://github.com/Cleridwen/Planetside-2-hitmarker-sounds/releases) page from time to time, to find updated versions.

# Contributing

I'm very much a beginner to all of this, so, contributions are more than welcome! Try to open an issue to detail your idea, so that other contributors can figure out if it would work with their current ideas as well, and to avoid having multiple people working on the same thing. Chances are you know what you're doing better than I do.

# License
GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.en.html

tl:dr; you can copy this project, modify it, remix it, and republish it, as long as you make the source code of your project available, under the same GPL license.
