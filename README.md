# Planetside-2-hitmarker-sounds
This project contains two AutoHotKey scripts that will play audio files of your choosing, whenever you land a hit in the game Planetside 2 on PC. It does so by scanning the color of specific pixels on the screen, where the red "X" hitmarker would show up. If two of those pixels turn the specified red, then a .wav file is played.

One script plays audio for regular hits, the second plays audio for headshots.

# Limitations
- Currently only works in screen resolutions of 1080x1920 and above: the game's HUD scaled differently below these resolutions.
- Does not work if the game is not on the main monitor, or is displayed in a floating window: the game has to be in fullscreen or borderless window on the main monitor.
- The audio file(s) have to be in .wav format.
- Only tested on Windows.
- While unlikely, a hitmarker sound may play if the color happens to come on screen for another reason than the hitmarker itself.

# How to use:

## Download

- Make sure you have an updated version of AutoHotKey installed. Download the official version of AHK here: https://www.autohotkey.com/
- Download the latest version of the .AHK scripts from the [releases](https://github.com/Cleridwen/Planetside-2-hitmarker-sound/releases/latest).

## Use

- Make sure that the audio files you want to use are in .wav format.
- Rename the files as `hitsound.wav` and `hitsoundHS.wav`, for the regular hitmarker and headshot hitmarker respectively.
- Place the audio files in a folder titles `Sounds`, located in the same folder as the scripts. It should look like this:
```
├───Sounds
│   ├─hitsound.wav
│   └─hitsoundHS.wav
├─PS2hitsound.ahk
└─PS2hitsoundHS.ahk
```
- Double click the script you wish to use. It should now start simply display as a tray icon. From there, it should play the sounds as you hit/headshot in the game.
- To close a script, simply right click it in the taskbar tray and select "Exit".

# Roadmap

This is very janky, and more in a pre-release state. Future considered changes include:
- Functional hit detection on lower screen resolutions
- Providing a release as a zip file with the correct file structure, and sounds that are ready to be used out of the box.
- Providing the scripts as compiled and standalone .exe files
