-- ====================================================================
-- INITIAL CONFIGURATION (auth removed by 0xJsoul)
-- ====================================================================

-- Warlery's Blackshop V1.0 MGG
-- Script Created by: Warlery's dev
gg.setVisible(false)

function Initwar()
    local aceptar = gg.alert([[

                    WARLERY'S BLACKMARKET DEMO 🌆

◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️

                          WELCOME BACK

🔻 1.0 Changelog 🔻

🔸 This script is a cut-down version of my Warlerys Blackmarket script, it contains only the most important things when making cheats.


▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️

🔶 WARNING 🔶

I am not responsible for:

🔸 Bans.
🔸 Abuse of this Script.

Additional:
🔸 For personal use, not commercial.

▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️

🔷 Usage Recommendations 🔷 :

🔹 VPhone or LDPlayer (Mandatory)
🔹 Have the game guardian memory selector reset
🔹 Rooted and 64-bit device
🔹 An autoclicker to "spam" Purchases.
🔹 If the selected option does not load correctly, try restarting the game and loading the option again!.
🔹 Do not load many things at once, it could crash the game.
🔹 Do not be scared if the game freezes while loading resources, it was done on purpose so that the script loads correctly without crashes.
🔹 In many occasions this script does not support some cell phones well, I recommend using this script on PC


Understood?

    ]], "Continue?", "Exit")
    
    if aceptar == 1 then
        gg.toast("Script started, Select the icon again.")
        gg.showUiButton()
        main()
    else
        gg.alert("See you later!, Remember to visit my social networks: Warlery Mods and WarleryMGG (Youtube)\nDonations here: Paypal kai702999@gmail.com")
        os.exit()
    end
end

function main()
    while true do
        if gg.isClickedUiButton() then
            mainmenu = gg.choice({
                '1️⃣ Gold Furnaces',
                '2️⃣ Resources',
                '3️⃣ Boxes and More',
                '4️⃣ Mutants and More',
                '5️⃣ Others',
                '⏺️ About',
                '⏹️ Exit'
            }, nil, 'Warlerys Blackmarket Demo')
            
            if mainmenu == 1 then Medlabsandfurnace() end
            if mainmenu == 2 then fichasytarros() end
            if mainmenu == 3 then Cajasaniversario() end
            if mainmenu == 4 then Mutantesymas() end
            if mainmenu == 5 then misc() end
            if mainmenu == 6 then Informacion() end
            if mainmenu == 7 then Salir() end
        end
        gg.sleep(150)
    end
end

function Medlabsandfurnace() 
    gg.toast("Starting, This may take a while...")
    gg.setVisible(false)
    gg.clearResults()


    gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,895;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;3000", gg.TYPE_DWORD)
    gg.refineNumber("6", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.addListItems(r)
    gg.clearResults()
    
    gg.sleep(500)
    gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h 1a 42 75 69 6c 64 69 6e 67 5f 48 43 5f 32", gg.TYPE_BYTE)
    gg.clearResults()
    
    gg.toast("Option Activated!, check the bank section.")
end

function fichasytarros()
    local cajitas = gg.choice({
        '▶️ Jackpot Tokens',
        '▶️ XP Jars',
        '▶️ Reactor Tokens',
        '▶️ Back',
    }, nil, '⚙️ Box Configuration 2.')

    if cajitas == 1 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h28416E6E697665727361727932335F426F785F3235000000106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x8
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)      
        gg.addListItems(t)     
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Option loaded successfully, check the Special section")

    elseif cajitas == 2 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()

        gg.searchNumber("h2C416E6E69766572736172795F323031395F426F785F3900106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

        start = gg.getResults(1)
        valuesToEdit = {}
        for i = 1, #start do
            local target = start[i].address + 0xfffffffffffff578        table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end

        gg.setValues(valuesToEdit)         
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Option loaded successfully, check the Special section")

    elseif cajitas == 3 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h1E416476656E7432345F426F785F30360000000000000000106D6174", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x8
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)        
        gg.addListItems(t)     
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Option loaded successfully, check the Special section")

    
        
    elseif cajitas == 4 then
        fichasytarros()
    end
end

function Cajasaniversario()
    local submenu = gg.choice({
        '▶️ Anniversary and Christmas Boxes',
        '▶️ Basic Orbs Package LV6',
        '▶️ Power Orbs Package Lv6',
        '▶️ Return'
    }, nil, '⚙️ Box Configuration.')
    
    if submenu == 1 then
        gg.toast("Freezing and Loading, This will take a few seconds.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.clearResults()
        gg.searchNumber("1986289960;1601465957;1701601635;1918985326", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.clearResults()
        gg.searchNumber("1836605296;1650422625;1650423919;6649196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1836605296;1650422625;1734309999;1852138866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1836605296;1650422625;1918859375;25701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.clearResults()
        gg.searchNumber("1852727596;1919252073;2037539187;2020565599", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffc0
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.clearResults()
        gg.searchNumber("1839605296;1650422625;1650423919;6649196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1839605296;1650422625;1734309999;1852138866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1839605296;1650422625;1918859375;25701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.processResume()
        gg.sleep("1000")
        gg.timeJump("5:0")
        gg.toast("All boxes have been Loaded.")
    
    elseif submenu == 2 then
        gg.toast("Freezing and Loading, This will take a few seconds.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        gg.clearResults()
        gg.searchNumber(":&bundle_orbs_core_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)


        local t = gg.getResults(1) 
  
        for i, v in ipairs(t) do
            v.address = v.address + 0xffffffffffffffc8
            v.flags = gg.TYPE_BYTE 
            v.value = "1"         
            v.freeze = true        
        end

        gg.setValues(t)
        gg.addListItems(t)

        gg.clearResults()
        gg.processResume()
        gg.sleep("1000")
        gg.timeJump("5:0")
        gg.toast("Basic Orbs Package Lv6, fully loaded.")
    

    elseif submenu == 3 then
        gg.toast("Loading, This will take a few seconds.")
        gg.setVisible(false)
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        gg.clearResults()
        gg.searchNumber(":(bundle_orbs_basic_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)


        local t = gg.getResults(1) 
  
        for i, v in ipairs(t) do
            v.address = v.address + 0xffffffffffffffc8
            v.flags = gg.TYPE_BYTE 
            v.value = "1"         
            v.freeze = true        
        end

        gg.setValues(t)
        gg.addListItems(t)

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Power Orbs Package Lv6, fully loaded.")

    elseif submenu == 4 then
        return
    end
end


function Mutantesymas()
    local submenu = gg.choice({
        '▶️ All mutants',
        '▶️ Platinum Package',
        '▶️ Back',
    }, nil, '⚙️ Mutants Configuration.')

    if submenu == 1 then
        gg.toast("Freezing and Loading, This will take a few seconds.")
        local patterns = {
            "1701868304;1701669219;110;0;0;0;1701868316;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868330;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868326;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868328;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868324;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868322;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868332;1701669219:29"
        }

        local valuesToEdit = {}

        for _, pattern in ipairs(patterns) do
            gg.clearResults()
            gg.searchNumber(pattern, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            local results = gg.getResults(100000)

            for i = 1, #results, 8 do
                local firstDwordAddress = results[i].address
                local target = firstDwordAddress - 0x20

                local currentValue = gg.getValues({{address = target, flags = gg.TYPE_DWORD}})

                if currentValue[1].value ~= 1 then
                    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1, freeze = true, freezeType = gg.FREEZE_NORMAL})
                end
            end
        end

        if #valuesToEdit > 0 then
            gg.setVisible(false)
            gg.setValues(valuesToEdit)
        gg.addListItems(valuesToEdit)
            gg.clearResults()
            gg.processResume()
            gg.timeJump("5:0")
            gg.toast("Done!")
        end
        gg.toast("All Mutants activated, sometimes not all appear, restart if you don't like the results!.") 


    elseif submenu == 2 then
        gg.toast("Loading, This will take a few seconds.")
        gg.setVisible(false)
        gg.processPause()

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 62 75 6e 64 6c 65", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 62 75 6e 64 6c 65", gg.TYPE_BYTE)

        gg.clearResults()
        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 62 75 6e 64 6c 65", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 28 62 75 6e 64 6c 65", gg.TYPE_BYTE)

        gg.clearResults()
        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2a 62 75 6e 64 6c 65", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2a 62 75 6e 64 6c 65", gg.TYPE_BYTE)

        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Platinum Package and more, fully loaded.")

    elseif submenu == 3 then
        return
    end
end




function misc()
    local submenu = gg.choice({
        '▶️ Unlimited Purchases',
        '▶️ Exclusive Mutants',
        '▶️ Back',
    }, nil, '⚙️ Mutants Configuration.')

    if submenu == 1 then
        gg.alert("This option allows all the offers available this day to freeze, making them unlimited")
        gg.setVisible(false)

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        --gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
        gg.clearResults()
        gg.sleep(1000)

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Unlimited purchases activated.")

    elseif submenu == 2 then
        gg.alert("Warning, only load 4 mutants at a time!\nReplaced mutants appear in the mutants section!")
        local exclumu = gg.choice({
            '▶️ Goliath R Wandering Martian',
            '▶️ Juan Ice R Deus Machina',
            '▶️ Captain Peace R Nebulon',
            '▶️ George Washington R Lord of the Abyss',
            '▶️ Louis XVI R Lord of the Abyss',
            '▶️ Racoon Wik R Nebulon',
            '▶️ Santoctopus R Deus Machina',
            '▶️ Genimal R Lord of the Abyss',
            '▶️ Hog the Ripper R Wandering Martian',
            '▶️ Uncle Sam R Wandering Martian',
            '▶️ Eva\'s Duplicate R Nebulon',
            '▶️ Saber R Deus Machina',
            '▶️ Artemis R Deus Machina',
            '▶️ Mega Claus R Wandering Martian',
            '▶️ Smasher R Lord of the Abyss',
            '▶️ Spartac R Lord of the Abyss',
            '▶️ Geomega R Nebulon',
            '▶️ Archangel R Nebulon',
            '▶️ Diablo R Deus Machina',
            '▶️ Norem R Deus Machina',
            '▶️ Space Surfer R Lord of the Abyss',
            '▶️ Master Paw R Wandering Martian',
            '▶️ Akai bot R Deus Machina',
            '▶️ Kolossus R Nebulon',
            '▶️ Captain Achabe R Lord of the Abyss',
            '▶️ Heimdall R Wandering Martian',
            '▶️ Oriax R Deus Machina',
            '▶️ Caliburn Ex R Nebulon',
            '▶️ Generalissimo Chocoleon R Lord of the Abyss',
        }, nil, '⚙️ Exclusive Mutants Configuration, R = Replacement.')

        if exclumu == 1 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AA_02_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Goliath loaded, take a look at the mutants section.")

        elseif exclumu == 2 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CD_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Juan Ice loaded, take a look at the mutants section.")

        elseif exclumu == 3 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FC_02_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("1200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Captain Peace loaded, take a look at the mutants section.")


        elseif exclumu == 4 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":BC_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("1000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("George Washington fully loaded.")


        elseif exclumu == 5 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DB_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Louis XVI fully loaded.")

        elseif exclumu == 6 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":ED_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Racoon Wik fully loaded.")


        elseif exclumu == 7 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EC_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Santoctopus fully loaded.")
 
            
        elseif exclumu == 8 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DF_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Genimal fully loaded.")


        elseif exclumu == 9 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CD_05_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Hog the Ripper fully loaded.")


        elseif exclumu == 10 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CF_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Uncle Sam fully loaded.")

        elseif exclumu == 11 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AF_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Eva's Duplicate fully loaded.")

        elseif exclumu == 12 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DF_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Saber fully loaded.")

        elseif exclumu == 13 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CB_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Artemis fully loaded.")


        elseif exclumu == 14 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CF_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Mega Claus fully loaded.")

        elseif exclumu == 15 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AB_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Smasher fully loaded.")

        elseif exclumu == 16 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CC_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Spartac fully loaded.")


        elseif exclumu == 17 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FF_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Geomega fully loaded.")

        elseif exclumu == 18 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FA_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Archangel fully loaded.")

        elseif exclumu == 19 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EB_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Diablo fully loaded.")

        elseif exclumu == 20 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DC_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Norem fully loaded.")

        elseif exclumu == 21 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EA_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Space Surfer fully loaded.")


        elseif exclumu == 22 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FD_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("1500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Master Paw fully loaded.")


        elseif exclumu == 23 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AE_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("4000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Akai bot fully loaded.")

        elseif exclumu == 24 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CE_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Kolossus fully loaded.")


        elseif exclumu == 25 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CE_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Captain Achabe fully loaded.")


        elseif exclumu == 26 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AF_11_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Heimdall fully loaded.")

        elseif exclumu == 27 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FC_03_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Oriax fully loaded.")

        elseif exclumu == 28 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CF_11_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Caliburn Ex fully loaded.")

        elseif exclumu == 29 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FC_12_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Generalissimo Chocoleon fully loaded.")

        elseif exclumu == 30 then
            misc()
        end

    elseif submenu == 5 then
        gg.alert("Warning, normal crash after placing the mutant on the terrace, the mutant will not be lost")
        local officeex = gg.choice({
            '▶️ Limitless Friendship R Monthly Mutant',
            '▶️ Black Ice R Monthly Mutant',
            '▶️ Hydrira R Monthly Mutant',
            '▶️ Orbital Nexus R Monthly Mutant',
            '▶️ Beast of the Field R Monthly Mutant',
            '▶️ Beast Lord R Monthly Mutant',
            '▶️ Ice Emperor R Monthly Mutant',
            '▶️ Chronomancer Professor R Monthly Mutant',
            '▶️ Bearsikk Sikleast R Monthly Mutant',
            '▶️ Sakuraboshi R Monthly Mutant',
            '▶️ Seraphic Core R Monthly Mutant',
            '▶️ Helidron R Monthly Mutant',
        }, nil, '⚙️ Mutants Configuration 2025 - 2024, R = Replacement.')

        if officeex == 1 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CC_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Limitless Friendship fully loaded.")


        elseif officeex == 2 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AF_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Black Ice fully loaded.")


        elseif officeex == 3 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":ED_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Hydrira fully loaded.")


        elseif officeex == 4 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EE_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Orbital Nexus fully loaded.")


        elseif officeex == 5 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":BD_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Beast of the Field fully loaded.")





        elseif officeex == 6 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DD_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Beast Lord fully loaded.")




        elseif officeex == 7 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EA_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Ice Emperor fully loaded.")


        elseif officeex == 8 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AC_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Chronomancer Professor fully loaded.")

        elseif officeex == 9 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CD_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Bearsikk Sikleast fully loaded.")





        elseif officeex == 10 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FF_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Sakuraboshi fully loaded.")


        elseif officeex == 11 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FE_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Seraphic Core fully loaded.")

        elseif officeex == 12 then
            gg.toast("Loading, This will take a few seconds.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AE_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Helidron fully loaded.")

        elseif officeex == 13 then
            misc()
        end

    elseif submenu == 3 then
        return
    end   
end


function Informacion()
    gg.alert([[

    WARLERY'S BLACK SHOP 🌆

    Current Version: 1.0

    Developed by Warlery's Dev

    For personal use, not commercial.

    ©️ ALL RIGHTS RESERVED

    ]])
end

function Salir()
    if gg.alert("Do you want to end the script?", "Yes", "No") == 1 then
        gg.alert("See you later!, Remember to visit my networks: Warlery Mods and WarleryMGG (Youtube) \n\nIf you wish to donate: Paypal kai702999@gmail.com")
        os.exit()
    end
end

-- you have managed to decrypt this script, please use it wisely, don't kill the game more than it already might be!
Initwar()