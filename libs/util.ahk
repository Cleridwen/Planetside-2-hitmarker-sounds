GetSystemTimeAsUnixTime() {
  return (a_hour * 3600 + a_min * 60 + a_sec) * 1000 + a_msec
}