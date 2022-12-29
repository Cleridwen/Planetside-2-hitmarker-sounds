GetSoundFiles(dir) {
  Sounds := []

  Loop Files, (dir "\*.wav")
    Sounds.push(A_LoopFileShortPath)

  return Sounds
}

lastSoundFile := ""
GetRandomSoundFile(Sounds) {
  ; Ignore if we only have one sound file
  if (Sounds.Length = 1) {
    return Sounds[1]
  }

  global lastSoundFile
  rand := Random(1, Sounds.Length)

  ; Don't repeat the same sound twice in a row
  if (lastSoundFile = Sounds[rand]) { 
    return GetRandomSoundFile(Sounds)
  }

  lastSoundFile := Sounds[rand]

  return Sounds[rand]
}
