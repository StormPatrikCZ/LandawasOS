-- variables
local reboot_re
local type_install

-- Files (RESERVED FOR FUTURE USE)
local Floppy_copy
local files = {
    "startup.lua",
    "shell.lua",
    "commands.lua",
    "programs.lua",
}

-- color variables
local white = colors.white
local green = colors.green

-- settings
os.setComputerLabel("Landawas Operating System")

-- Clear
term.clear()
term.setCursorPos(1,1)

-- information
print("installer version: 0.4.2")
sleep(3)

print("select install type:\nr = Release\nb = Beta\nx = Exit")

type_install = read()
term.clear()
term.setCursorPos(1,1)

-- Release install
if type_install == "r" then
    
    -- Instalation begun...
    term.clear()
    print("Welcome to LandawasOS easy installation script\nTHIS SCRIPT IS EARLY DEVELEPOMENT PLEASE IGNOR BUGS")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/commands.lua commands.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/shell.lua shell.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/SysActions.lua SysActions.lua")

    -- Computer Label
    os.setComputerLabel("Landawas Operating System")
    
    -- Copy to floppy
    print("Install to floppy disk?")
    Floppy_copy = read()
    if Floppy_copy == "y" then
        -- Installing to floppy disk
        print("This feature is comming soon...")
    else
        -- Notice
        term.clear()
        term.setCursorPos(1,1)
        term.setTextColor(green)
        Print("LandaWasOS has been installed sucessfuly")
        term.setTextColor(white)
        sleep(1)
    end

-- Beta
elseif type_install == "b" then

    -- Beta install...
    term.clear()

    print("Warning: This programs are for testing")
    sleep(2)

    -- Install beta begin...
    print("Installing all beta packeges...")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/start/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/tools/SysActions.lua SysActions.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/tools/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/start/shell.lua shell.lua")
    os.setComputerLabel("Landawas Operating System (BETA)")

    -- Install sucess...
    term.setTextColor(green)
    print("LandaWasOS has been installed succesfuly")
    term.setTextColor(white)
    sleep(1)
    
-- exit install
elseif type_install == "x" then
    exit
else
    print("Invalid option...")
-- Reboot
print("Restartt Y/N:")
reboot_re = read()
if reboot_re == "y" then
    os.reboot()
else
    print("reboot stopped")
end
