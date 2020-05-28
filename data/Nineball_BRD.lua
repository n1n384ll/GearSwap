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
        neck="Twilight Torque",
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
        ammo="Impatiens",
        head="Nahtirah Hat",
        body="Ayanmo Corazza +1",
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Orunmila's Torque",
        waist="Witful Belt",
        left_ear="Infused Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Ogapepo Cape",
    }

    sets.precast.fc_song = {
        range="Gjallarhorn",
        head="Fili Calot",
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

    sets.precast.fc_cure = set_combine(sets.precast.fc, {
        back="Pahtli Cape"
    })

    sets.precast.fc_enhancing = set_combine(sets.precast.fc, {
        waist="Siegel Sash"
    })

    sets.midcast = {}

    sets.midcast.song_buff = {
        range="Gjallarhorn",
        head="Fili Calot",
        body="Fili Hongreline",
        hands="Fili Manchettes",
        legs="Fili Rhingrave",
        feet="Brioso Slippers +1",
        neck="Moonbow Whistle",
        waist="Harfner's Sash",
        left_ear="Singing Earring",
        right_ear="Wind Earring",
        left_ring="Nereid Ring",
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
        neck="Moonbow Whistle",
        waist="Ovate Rope",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Ayanmo Ring",
        right_ring="Sangoma Ring",
        back="Rhapsode's Cape",
    }

    sets.midcast.cure_potency = {
        ammo="Quartz Tathlum +1",
        head="Vanya Hood",
        body="Brioso Just. +1",
        hands={ name="Bokwus Gloves", augments={'Mag. Acc.+9','MND+6','INT+2',}},
        legs={ name="Bihu Cannions +1", augments={'Enhances "Soul Voice" effect',}},
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Song recast delay -3',}},
        neck="Phalaina Locket",
        waist="Rumination Sash",
        left_ear="Lifestorm Earring",
        right_ear="Influx Earring",
        left_ring="Sirona's Ring",
        right_ring="Asklepian Ring",
        back="Pahtli Cape",
    }

    sets.midcast.enhancing = {
        ammo="Esper Stone",
        head="Nahtirah Hat",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +1",
        legs="Aya. Cosciales +1",
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Song recast delay -3',}},
        neck="Colossus's Torque",
        waist="Olympus Sash",
        left_ear="Augment. Earring",
        right_ear="Gifted Earring",
        left_ring="Sangoma Ring",
        right_ring="Prolix Ring",
        back="Merciful Cape",
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
        if spell.targets['Enemy'] and string.match(spell.name, "Lullaby") then
            equip(set_combine(sets.precast.fc_song, {range = "Gjallarhorn"}))
        elseif spell.name == "Herb Pastoral" then 
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

    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.precast.fc)

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
            -- no swap, maybe reduce Herb Duration?
        elseif spell.targets['Self'] or spell.targets['Party'] then
            if string.match(spell.name, "Paeon") then
                windower.add_to_chat("Casting Paeon")
                equip(set_combine(sets.midcast.song_buff, {head="Brioso Roundlet +1"}))
            elseif string.match(spell.name, "Scherzo") then
                windower.add_to_chat("Casting Scherzo")
                equip(set_combine(sets.midcast.song_buff, {feet="Fili Cothurnes"}))
            else
                equip(sets.midcast.song_buff)
            end
        elseif spell.targets['Enemy'] then
            if string.match(spell.name, "Lullaby") then
                windower.add_to_chat("GO2SLEEP!!")
                equip(set_combine(sets.midcast.song_macc, {range="Gjallarhorn", hands="Brioso Cuffs"}))
            else 
                equip(sets.midcast.song_macc)
            end
        end

    --- Healing Potency Midcast ---
    elseif spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.midcast.cure_potency)

    --- Enhancing Midcast ---
    elseif spell.skill == 'Enhancing Magic' then
        if spell.name == 'Stoneskin' then
            equip(set_combine(sets.midcast.enhancing, {right_ear = "Earthcry Earring", waist="Siegel Sash"}))
        elseif spell.name == 'Haste' or 'Refresh' then
            --noop - keep fc/Haste set TODO: replace with set to reduce recast
        else
            equip(sets.midcast.enhancing)
        end

    --- Ninjutsu Midcast (for recast time) --- 
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.precast.fc)

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
