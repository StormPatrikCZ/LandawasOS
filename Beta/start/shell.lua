-- Color vars
local white = colors.white
local green = colors.green

-- System vars
local version = "Build: 18"
local autor = "By m0d2r"

-- Information
term.clear()
term.setCursorPos(1,16)
print("You can use progrmas to show list of programs")
sleep(1)

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
    
    -- program list
    elseif input == "programs" then
        
        print("List of installed programs (2)")
        print("programs.lua\nSysActions.lua")

    elseif input == "commands"
    
        print("List of installed systen commands (6).")
        print("Commands - full list of commands.")
        print("Clean - Cleans your system for you.")
        print("update - updater.")
        print("fetch - Shows information about the system.")
        print("exit - exits custom shell.")
        print("power - Shows power options.")

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
            print("Canceled!")
        
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