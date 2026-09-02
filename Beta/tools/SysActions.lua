-- vars colors
local green = colors.green
local white = colors.white
local red = colors.red

-- Variables
local type_install
local choice
local reboot
local input_name

-- will be used in the future
-- local files = ("programs.lua", "SysActions.lua", "startup.lua")

-- short
local line = "---------------------------------------------------"
local del = shell.run

-- Startup
term.clear()
term.setCursorPos(1,1)

-- Ask
print("Sys actions V0.1.1")
print("1. Update\n2 = Uninstall os\n3 = Clear old files\n4 = Rename computer")
choice = read()

if type_install == "b" then
    print("Deleting old System apps...")

    -- Files delete
    shell.run("delete startup.lua")
    shell.run("delete SysActions.lua")
    term.clear()
    
    term.setTextColor(green)
    print("Old files has been deleted")
    print("Downloading new System apps...")
    term.setTextColor(white)
    
    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/start/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/tools/SysActions.lua SysActions.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/tools/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/start/shell.lua shell.lua")
    term.setTextColor(green)
    print("All Beta Updates has been installed Sucesffuly")
    term.setTextColor(white)

    -- Reboot
    print("Restartt Y/N:")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        term.setTextColor(red)
        print("Restart Canceled.")
        term.setTextColor(white)
    end
    
    term.setTextColor(red)
    print("Update canceled!")
    term.setTextColor(white)

-- Uninstall
elseif choice == "2" then
    print("Uninstaller")
    
    print("Do you want to uninstall LandaWasOS?: ")
    choice = read()

    if choice == "y" then
        shell.run("delete startup.lua")
        shell.run("delete commands.lua")
        shell.run("delete programs.lua")
        shell.run("delete shell.lua")
    else
        print("Uninstallation canceled")
    end
    
elseif choice == "3" then
    term.setCursorPos(1,1)
    term.clear()
    
    print(line)
    print("Do you want to clean your system?: Y/N")
    choice = read()

    -- clean
    if choice == "y" then
        print("Clearning Unused files from updates")
        shell.run("delete UpdateBeta.lua")
        shell.run("delete start.lua")
        shell.run("delete cleaner.lua")
        shell.run("delete AutoUpd.lua")
        shell.run("delete install.lua")
        shell.run("delete startupBeta.lua")
        shell.run("delete uninstall.lua")
        shell.run("delete startupBeta.lua")
        shell.run("delete gui.lua")
        shell.run("delete programs.lua")
        shell.run("delete shell.lua")

        print("System has been clearned.")
        print(line)
    else
        print("Operation canceled")
        print(line)
    end

elseif choice == "4" then
    print("New name: ")
    input_name = read()
    if input_name == "" then
        os.setComputerLabel(input_name)
    else
        print("Name cannot be applied, cannot be empty...")
    end
    
else
    print("Invalid operation, select a correct number: ")
end