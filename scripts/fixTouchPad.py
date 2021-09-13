import os
import subprocess

# Get IDs of props
hwPropIDs = subprocess.run(['xinput', 'list'], stdout=subprocess.PIPE).stdout.decode('utf-8')

# Get ID for Touchpad
hwID=""
for line in hwPropIDs.split("\n"):
    if "Touchpad" in line:
        hwID = line.split("id=")[1].split("\t")[0]
        if not hwID.isdigit() or hwID == "":
            print ("prop not found for Touchpad")
            print ("OUTPUT:\n")
            print ("\t"+hwID)
            exit()

# Get IDs of properties of prop
propIDs = subprocess.run(['xinput', 'list-props', hwID], stdout=subprocess.PIPE).stdout.decode('utf-8')

for line in propIDs.split("\n"):
    propID=""
    if "Natural Scrolling Enabled" in line or "Tapping Enabled" in line:
        propID = line.split(" (")[1].split("):")[0]
        if not propID.isdigit() or propID == "":
            continue
        print ("Updating value of " + hwID)
        print ("  " + propID + " 0 -> 1")
        result = subprocess.run(['xinput', 'set-prop', hwID, propID, "1"], stdout=subprocess.PIPE).stdout.decode('utf-8')
