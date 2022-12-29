#Include util.ahk
#Include sounds.ahk

PixelExists(xPos, yPos) ; constantly checks if a pixel at a given location matches the right color
{
  CoordMode "Pixel", "Screen"
  try {
    return PixelSearch(&x?, &y?, xPos - 1, yPos - 1, xPos + 1, yPos + 1, 0xf27274, 16)
  }
  catch as err {
    return 0
  }
}

DetectHitmarker(&match, x, y) {
  OverrideIfNotDetected(&match, x, y) ; bottom right
  OverrideIfNotDetected(&match, -x, y) ; bottom left
  OverrideIfNotDetected(&match, x, -y) ; top right
  ; OverrideIfNotDetected(&match, -x, -y) ; top left - not working on 1440p at least
}

OverrideIfNotDetected(&match, x, y) {
  halfWidth := A_ScreenWidth // 2
  halfHeight := A_ScreenHeight // 2

  if (PixelExists(halfWidth+ x, halfHeight + y) = 0) {
    match := 0
  }
}

PollHitmarker(x, y, hitDelayMs, HitSounds) 
{
  global HitSound
  earlier := GetSystemTimeAsUnixTime()

  Loop
  {
    match := 1

    DetectHitmarker(&match, x, y)

    if (match = 1) ; if both pixels weren't not the right color, play audio, and wait a little to avoid playing it twice for a single hit
    {
      now := GetSystemTimeAsUnixTime()
      sinceLastMs := now - earlier

      ; ensure we register the hit as soon as possible, but keep the delay between each
      if (sinceLastMs < hitDelayMs) { 
        sleep(hitDelayMs - sinceLastMs)
      }

      ; Check again if the hitmarker is still valid. Without, we would play one extra sound
      ; at the end, which makes things feel unresponsive
      DetectHitmarker(&match, x, y)
      if (match = 0)
        continue

      earlier := GetSystemTimeAsUnixTime()
      HitSound := GetRandomSoundFile(HitSounds)

      run("libs/soundPlay.exe " . HitSound)
    }
  }
}