#Warn All, Off
#Include libs/sounds.ahk
#Include libs/detection.ahk

; Vehicle hitmarker coordinates
x := A_ScreenWidth * 0.008
y := A_ScreenHeight * 0.014
hitDelayMs := 100
HitSounds := GetSoundFiles("Sounds\Vehicle")

PollHitmarker(x, y, hitDelayMs, HitSounds)
