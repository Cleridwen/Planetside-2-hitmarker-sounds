#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; v0.0.2

x1 := A_ScreenWidth  //2 -A_ScreenWidth  *0.008 ; Determines the positions of pixels to scan
y1 := A_ScreenHeight //2 -A_ScreenHeight *0.014
x2 := A_ScreenWidth  //2 +A_ScreenWidth  *0.008
y2 := A_ScreenHeight //2 -A_ScreenHeight *0.014

PixelExist(xPos, yPos) ; constantly checks if a pixel in a 5x5 rectangle at a given location matches the right color
{
  CoordMode, Pixel, Screen
  PixelSearch, , , xPos -2, yPos -2, xPos +2, yPos +2, 0x7171ec, 20, Fast
  if ErrorLevel
    return 0
  else
    return 1
}

Loop
{
  Match := 1
  if (PixelExist(x1, y1)=0) ; tells the pixel checker to check the first pixel
  {
    Match := 0
  }
  if (PixelExist(x2, y1)=0) ; tells the pixel checker to check the second pixel
  {
    Match := 0
  }
  if (Match=1) ; if both pixels weren't not the right color, play audio, and wait a little to avoid playing it twice for a single hit
  {
    SoundPlay Sounds\hitsound.wav ; location of the audio file to play, located in a "Sounds" folder next to the script. must be in .wav
    Sleep 45 ; Delay to avoid the sound from playing twice for one hit
    Continue
  }
}
