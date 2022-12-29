#Warn All, Off
#Include libs/sounds.ahk
#Include libs/detection.ahk

; Headshot marker offsets
if (A_ScreenHeight = 1440) {
  x := 29
  y := 24
} else {
  x := A_ScreenWidth * 0.01
  y := A_ScreenHeight * 0.014
}
hitDelayMs := 125
HitSounds := GetSoundFiles("Sounds\Head")

PollHitmarker(x, y, hitDelayMs, HitSounds)
