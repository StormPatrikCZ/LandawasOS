-- vars colors
local orange = colors.orange
local white = colors.white
local green = colors.green
local gray = colors.gray
local lime = colors.lime
local red = colors.red

-- System vars
local version = "Build: 12"
local autor = "By m0d2r"
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

print("LandaWasOS GUI")
print(version)
print(autor)

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

-- program loop
term.setCursorPos(1,17)

while true do

    -- User
    term.setTextColor(green)
    write("LandaWasOS")
    term.setTextColor(white)
    write(" > ")
    
    local input = read()
    
    --system info
    if input == "fetch" then

        write("OS: ")
        term.setTextColor(green)
        print("LandaWasOS")
        term.setTextColor(white)
        write(version)
        term.setTextColor(green)
        print(autor)
        term.setTextColor(white)
        sleep(1)
    
    -- Power options
    elseif input == "power" then
        
        print("Power options: \n1. r - reboot\n2. s - shutdown\n3. c - cancel")
        local input = read()

        -- reboot
        if input == "r" then
            print("rebooting...")
            sleep(1)
            os.reboot()
        
        -- shutdown
        elseif input == "s" then 
            print("Shutting down...")
            sleep(1)
            os.shutdown()
            
        elseif input == "c" then
        
        else
            print("Incorrect option!")
        end

        -- credits
    elseif input == "credits" then
        print("Created by:\nStormPatrikCZ","\nTesters: \nMedas_cz45")
    else
        shell.run(input)
    end
end