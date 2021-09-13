#!/usr/bin/python3
import time
import datetime
import sys

arguments = sys.argv[1:]

KanjiWeek = [
    "月", # <- Moon (Monday)
    "火", # <- Fire (Tuesday)
    "水", # <- Water (Wednesday)
    "木", # <- Tree (Thursday)
    "金", # <- Gold (Friday)
    "土", # <- Dirt (Saturday)
    "日", # <- Sun (Sunday)
]

now = datetime.datetime.now()
dayOfWeek = int(now.weekday())
timenow = now.strftime('%H:%M:%S')
datenow = now.strftime('%Y年%m月%d日')

if len(arguments) == 0 or arguments[0] == "full":
    print (timenow +" "+ datenow + " ("+KanjiWeek[dayOfWeek]+")")
elif arguments[0] == "time":
    print (timenow + " "+KanjiWeek[dayOfWeek])
elif arguments[0] == "day" or arguments[0] == "weekday":
    print (KanjiWeek[dayOfWeek])
elif arguments[0] == "date":
    print (datenow)
else:
    print ("That argument is not supported, anyways, here is the full date:")
    print (timenow +" "+ datenow + " ("+KanjiWeek[dayOfWeek]+")")
