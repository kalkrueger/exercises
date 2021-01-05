DEGREE = "\xC2\xB0"
SECOND = '"'

def dms (float)
  deg, remainder = (float / 1).to_i, (float % 1).round(4) * 60
  min, sec = remainder.to_i, ((remainder % 1).round(2) * 60).to_i
  format("#{deg}#{DEGREE}%02d'%02d#{SECOND}", min, sec)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
