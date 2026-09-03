-- vars colors
local orange = colors.orange
local white = colors.white
local green = colors.green
local gray = colors.gray
local lime = colors.lime
local red = colors.red

-- System vars
local version = "V0.8.0.1.2"
local autor = "By m0d2r"

-- Short vars
local line = "---------------------------------------------------"

-- Start up
term.setTextColor(orange)
term.setBackgroundColor(gray)
term.clear()

-- install update for SysActions.lua
print("Updating SysActions.lua")
shell.run("delete SysActions.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/SysActions.lua SysActions.lua")

-- Text
term.setCursorPos(1,1)
print(line)
term.setTextColour(lime)
print("LandaWasOS")
term.setTextColor(orange)
term.setCursorPos(1,18)
print(line)
sleep(2)
term.clear()

-- Text
term.setCursorPos(1,1)
print(line)
term.setCursorPos(1,18)
print(line)
term.setCursorPos(1,2)
term.setTextColor(white)

-- Status
term.write("Loading BootLoader")
textutils.slowPrint("..")
term.setTextColor(green)
print("(OK)")
term.setTextColor(white)
term.write("Loading Shell")
textutils.slowPrint("......")
term.setTextColor(green)
print("(OK)")
term.setTextColor(white)
term.write("Loading Commands")
textutils.slowPrint("....")
term.setTextColor(green)
print("(OK)")
term.setTextColor(white)

print("")
print("Boot Complete")
textutils.slowPrint("...........")
sleep(1)

shell.run("shell.lua")