-- variables
local reboot_re
local type_install
local Floppy_Install
local Floppy_copy

-- Floppy install variable
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
print("installer version: 0.6")
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

    -- Notice
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(green)
    print("LandaWasOS has been installed sucessfuly")
    term.setTextColor(white)
    sleep(1)

-- Beta
elseif type_install == "b" then
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

    -- Copy to floppy
    print("Install to floppy disk?")
    Floppy_copy = read()
    
    if Floppy_copy == "y" then
        print("Installing to floppy disk...")
        print("Before installing please backup your data...")

        Floppy_Install = read()

        if Floppy_Install == "y" then
            for _, file in ipairs(files) do
                fs.copy(file, "disk/" .. file)
            end
        print("Installed to disk...")
        end
    end

-- exit install
elseif type_install == "x" then
    print("Installation canceled.")
    return
else
    print("Invalid option...")
end

-- Reboot
print("Restartt Y/N:")
reboot_re = read()
if reboot_re == "y" then
    os.reboot()
else
    print("reboot stopped")
end