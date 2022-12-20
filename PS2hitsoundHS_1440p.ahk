#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

x1 := A_ScreenWidth //2 +29 ; defines the positions of pixels to scan
y1 := A_ScreenHeight //2 -24
x2 := A_ScreenWidth //2 -24
y2 := A_ScreenHeight //2 +29

PixelExist(xPos, yPos) ; constantly checks if a pixel at a given location matches the right color
{
  CoordMode, Pixel, Screen
  PixelSearch, , , xPos - 1, yPos - 1, xPos + 1, yPos + 1, 0x7171ec, 20, Fast
  if ErrorLevel
    return 0
  else
    return 1
}

Loop
{
  Match := 1
  Sleep 10
  if (PixelExist(x1, y1)=0) ; tells the pixel checker to check the first pixel
  {
    Match := 0
  }
  if (PixelExist(x2, y2)=0) ; tells the pixel checker to check the second pixel
  {
    Match := 0
  }
  if (Match=1) ; if both pixels weren't not the right color, play audio, and wait a little to avoid playing it twice for a single hit
  {
    SoundPlay Sounds\hitsoundHS.wav ; location of the audio file to play, located in a "Sounds" folder next to the script. must be in .wav
    Sleep 10
    Continue
  }
}

