-- vars colors
local orange = colors.orange
local white = colors.white
local green = colors.green
local gray = colors.gray
local lime = colors.lime
local red = colors.red

-- Short vars
local line = "---------------------------------------------------"

-- Start up
term.setTextColor(orange)
term.setBackgroundColor(gray)
term.clear()    
-- install update for update.lua
print("Updating update.lua")
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")

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
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)
term.write("Starting services")
textutils.slowPrint("......")
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)
term.write("Starting System")
textutils.slowPrint(".......")
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)
term.write("Starting shell")
textutils.slowPrint("......")
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)
term.write("Loading system information")
textutils.slowPrint(".....")
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)
term.write("Loading commands")
textutils.slowPrint("....") 
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)
term.write("Loading GUI")
textutils.slowPrint("......")
term.setTextColor(green)
term.write("(OK)")
term.setTextColor(white)

-- Information
term.clear()
term.setCursorPos(1,16)
print("You can use progrmas to show list of programs")
sleep(1)

shell.run("shell.lua")