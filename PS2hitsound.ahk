#Warn All, Off
#Include libs/sounds.ahk
#Include libs/detection.ahk

; Body hitmarker coordinates
x := A_ScreenWidth * 0.008
y := A_ScreenHeight * 0.014
hitDelayMs := 125
HitSounds := GetSoundFiles("Sounds\Body")

PollHitmarker(x, y, hitDelayMs, HitSounds)
