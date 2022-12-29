; Compiles to soundPlay.exe for asynchronous sound file executions
#NoTrayIcon
#NoEnv

SetBatchLines -1
ListLines Off

SoundPlay,%1%,wait
exitapp