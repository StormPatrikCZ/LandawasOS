-- Global color Variables
white = colors.white
green = colors.green
red = colors.red

-- Global system variables
sys_name = "LandaWasOS"
sys_version = "Build: 32"
sys_autor = "By m0d2r"

-- Short vars
line = "---------------------------------------------------"

-- Doenload SysActions.lua
term.setCursorPos(1,1)
print("Updating SysActions.lua...")
shell.run("delete SysActions.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/tools/SysActions.lua SysActions.lua")
term.clear()

-- StartUp
term.setCursorPos(1,1)
print(line)
term.setTextColor(green)
print("Welcome to ", sys_name)
term.setCursorPos(1,16)
print(line)

-- Start Shell
shell.run("shell.lua")