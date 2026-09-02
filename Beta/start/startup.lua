-- vars colors
local white = colors.white
local green = colors.green

-- Short vars
local line = "---------------------------------------------------"

-- Doenload SysActions.lua
term.setCursorPos(1,1)
print("Deleting old SysActions.lua...")
shell("delete SysActions.lua")
print("Updating new SysActions.lua...")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/tools/SysActions.lua SysActions.lua")
term.clear()

-- StartUp
term.setCursorPos(1,1)
print(line)
term.setTextColor(green)
print("Welcome to LandaWasOS...")
term.setCursorPos(1,16)
print(line)

-- Start Shell
shell.run("shell.lua")