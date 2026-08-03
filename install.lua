-- variables
local reboot_re
local type_install
local white = colors.white
local green = colors.green

-- settings
os.setComputerLabel("Landawas Operating System")

-- Clear
term.clear()
term.setCursorPos(1,1)

-- information
print("installer version: 0.4")
sleep(3)

print("select install type: r, b")
type_install = read()

term.clear()
term.setCursorPos(1,1)

-- Release install
if type_install == "r" then
    
    term.clear()
    print("Welcome to LandawasOS easy installation script\nTHIS SCRIPT IS EARLY DEVELEPOMENT PLEASE IGNOR BUGS")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/commands.lua commands.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/clean.lua clean.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/shell.lua shell.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/SysActions.lua SysActions.lua")

    
    os.setComputerLabel("Landawas Operating System")
    
    term.clear()
    term.setCursorPos(1,1)
    
    term.setTextColor(green)
    Print("LandaWasOS has been installed succesfuly")
    term.setTextColor(white)
    sleep(1)
end

-- Beta install
if type_install == "b" then
    term.clear()

    print("Warning: This programs are for testing")
    sleep(2)

    -- Install beta begin
    print("Installing all beta packeges...")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/SysActions.lua SysActions.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/shell.lua shell.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/programs.lua programs.lua")
    os.setComputerLabel("Landawas Operating System (BETA)")

    term.setTextColor(green)
    print("LandaWasOS has been installed succesfuly")
    term.setTextColor(white)
    sleep(1)
else
    shell.run("start install.lua")
end

-- Reboot
print("Restartt Y/N:")
reboot_re = read()
if reboot_re == "y" then
    os.reboot()
else
    print("reboot stopped")
end