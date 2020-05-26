--include('organizer-lib')
include('custom_helpers')

local inspect = require 'inspect'

function get_sets() 
    --send_command('input //gs showswaps')

    --[[
    sets.template = {
        --main="",
        --sub="",
        --range="",
        ammo="",
        head="",
        neck="",
        left_ear="",
        right_ear="",
        body="",
        hands="",
        left_ring="",
        right_ring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
    --]]

    sets.idle = {
        head="Aya. Zucchetto",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +1",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Aoidos' Matinee",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring="Warp Ring",
        back="Shadow Mantle",
    }

    sets.melee = {
        ammo="Esper Stone",
        head="Aya. Zucchetto",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +1",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Iqabi Necklace",
        waist="Windbuffet Belt",
        left_ear="Steelflash Earring",
        right_ear="Bladeborn Earring",
        left_ring="Mars's Ring",
        right_ring="Enlivened Ring",
        back="Letalis Mantle",
    }

    sets.dw = set_combine(sets.melee, {
        left_ear="Dudgeon earring",
        right_ear="Heartseeker earring"
    })

    sets.dt = {
    }

    sets.precast = {}

    sets.precast.fc = {
    }

    sets.precast.fc_song = {
        range="Gjallarhorn",
        head="Aoidos' Calot +2",
        body="Sha'ir Manteel",
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -4%','Song spellcasting time -5%',}},
        feet={ name="Bihu Slippers +1", augments={'Enhances "Nightingale" effect',}},
        neck="Aoidos' Matinee",
        waist="Witful Belt",
        left_ear="Aoidos' Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Ogapepo Cape",
    }

    sets.midcast = {}

    sets.midcast.song_buff = {
        range="Gjallarhorn",
        head="Aoidos' Calot +2",
        body="Aoidos' Hngrln. +2",
        hands="Ad. Mnchtte. +2",
        legs="Fili Rhingrave",
        feet="Brioso Slippers",
        neck="Aoidos' Matinee",
        waist="Sailfi Belt",
        left_ear="Novia Earring",
        right_ear="Loquac. Earring",
        left_ring="Sangoma Ring",
        right_ring="Prolix Ring",
        back="Rhapsode's Cape",
    }

    sets.midcast.song_macc = {
        range="Gjallarhorn",
        head="Brioso Roundlet +1",
        body="Brioso Just. +1",
        hands="Aya. Manopolas +1",
        legs={ name="Bihu Cannions +1", augments={'Enhances "Soul Voice" effect',}},
        feet="Aya. Gambieras +1",
        neck="Piper's Torque",
        waist="Ovate Rope",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Ayanmo Ring",
        right_ring="Sangoma Ring",
        back="Rhapsode's Cape",
    }

    sets.savage = {
        ammo="Quartz Tathlum +1",
        head="Lithelimb Cap",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +1",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Aquasoul Ring",
        right_ring="Aquasoul Ring",
        back="Letalis Mantle",
    }

end


function pretarget(spell)
    if spell.type == "Item" then return end

end


function precast(spell)
    -- print("precast spell.type = " .. spell.type)
    -- print("precast spell.skill = ".. spell.skill)
    -- print(inspect(spell.targets))

    -- if spell.targets['Self'] or spell.targets['Party'] then
    --     print("targeting self or party")
    -- elseif spell.targets['Enemy'] then
    --     print("targeting enemy")
    -- end


    if spell.type == "Item" then return end

    if spell.type == "BardSong" then
        if spell.name == "Herb Pastoral" then 
            equip(set_combine(sets.precast.fc_song), {range = "Daurdabla"})
        else
            equip(sets.precast.fc_song)
        end

    --- Curing FC ----
    elseif spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.precast.fc_cure)

    --- Enhancing FC --- 
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.precast.fc_enhancing)

    --- Ninjutsu (Utsusemi) ---
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi'
        then equip(sets.precast.utsusemi)

    --- Weaponskills ---
    elseif spell.name == 'Savage Blade' then
        equip(sets.savage)

    elseif spell.type == 'JobAbility' then 
        if spell.name == 'Troubadour' then
            equip({body="Bihu Jstcorps +1"})
        elseif spell.name == 'Nightingale' then
            equip({feet="Bihu Slippers +1"})
        elseif spell.name == 'Soul Voice' then
            windower.add_to_chat("DISCO PARTY!!")
            equip({legs="Bihu Cannions +1"})
        else
            --noop
        end

    --- General FC ---
    else 
        equip(sets.precast.fc)

    end
end


function midcast(spell)
    if spell.type == "Item" then return end

    if spell.type == "BardSong" then
        if spell.name == "Herb Pastoral" then 
            -- no swap, maybe reduce Herb Potency
        elseif spell.targets['Self'] or spell.targets['Party'] then
            if string.match(spell.name, "Paeon") then
                windower.add_to_chat("Casting Paeon")
                equip(set_combine(sets.midcast.song_buff, {head="Brioso Roundlet +1"}))
            elseif string.match(spell.name, "Scherzo") then
                windower.add_to_chat("Casting Scherzo")
                equip(set_combine(sets.midcast.song_buff, {feet="Aoidos' Cothrn. +2"}))
            else
                equip(sets.midcast.song_buff)
            end
        elseif spell.targets['Enemy'] then
            if string.match(spell.name, "Lullaby") then
                windower.add_to_chat("GO2SLEEP!!")
                equip(set_combine(sets.midcast.song_macc, {hands="Brioso Cuffs"}))
            else 
                equip(sets.midcast.song_macc)
            end
        end

    --- Healing Potency Midcast ---
    elseif spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.midcast.cure_potency)

    --- Enhancing Midcast ---
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.midcast.enhancing)

    --- Ninjutsu Midcast (for recast time) --- 
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.midcast.utsusemi)

    --- Weaponskills Midcast (just to be sure) ---
    elseif spell.name == 'Savage Blade' then
        equip(sets.savage)

    else 
        -- noop
    end

end


function aftercast(spell)
    idle_check()
end

function status_change(new, old)
    idle_check()
end

function buff_change(name, gain, buff_details)
end

function buff_refresh(name, buff_details) 
end
