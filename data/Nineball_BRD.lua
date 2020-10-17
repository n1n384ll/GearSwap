--include('organizer-lib')
include('custom_helpers')

local inspect = require 'inspect'

dark_ring = { name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%'}}

function get_sets() 

    sets.idle = {
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Infused Earring",
        right_ear="Etiolation Earring",
        left_ring="Shneddick Ring",
        right_ring="Defending Ring",
        back="Shadow Mantle",
    }

    sets.melee = {
        ammo="Amar Cluster",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Bard's Charm",
        waist="Windbuffet Belt",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Ayanmo Ring",
        right_ring="Enlivened Ring",
        back="Letalis Mantle",
    }

    -- More STP
    -- sets.melee = {
    --     ammo="Amar Cluster",
    --     head="Aya. Zucchetto +2",
    --     body="Ayanmo Corazza +1",
    --     hands="Aya. Manopolas +2",
    --     legs="Aya. Cosciales +2",
    --     feet="Aya. Gambieras +1",
    --     neck="Asperity Necklace",
    --     waist="Windbuffet Belt",
    --     left_ear="Cessance Earring",
    --     right_ear="Brutal Earring",
    --     left_ring="K'ayres Ring",
    --     right_ring="Rajas Ring",
    --     back="Letalis Mantle",
    -- }

    sets.dw = set_combine(sets.melee, {
        right_ear="Suppanomimi"
    })

    sets.dt = {
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Ayanmo Ring",
        right_ring="Defending Ring",
        back="Shadow Mantle",
    }

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Nahtirah Hat",
        body="Inyanga Jubbah",
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Orunmila's Torque",
        waist="Witful Belt",
        right_ear="Loquac. Earring",
        left_ear="Etiolation Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }

    sets.precast.fc_song = {
        range="Gjallarhorn",
        head="Fili Calot",
        body="Inyanga Jubbah",
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -4%','Song spellcasting time -5%',}},
        feet={ name="Telchine Pigaches", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
        neck="Orunmila's Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Aoidos' Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
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
        hands="Inyan. Dastanas +1",
        legs="Inyanga Shalwar",
        feet="Brioso Slippers +1",
        neck="Moonbow Whistle",
        waist="Harfner's Sash",
        -- TODO : DI Earring
        left_ear="Singing Earring",
        right_ear="Wind Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Rhapsode's Cape",
    }

    sets.midcast.song_macc = {
        range="Gjallarhorn",
        head="Brioso Roundlet +1",
        body="Brioso Just. +1",
        hands="Inyan. Dastanas +1",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Moonbow Whistle",
        waist="Ovate Rope",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
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
        body="Telchine. Chas.",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Song recast delay -3',}},
        neck="Incanter's Torque",
        waist="Olympus Sash",
        left_ear="Augment. Earring",
        right_ear="Vor Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    sets.ws = {
        ammo="Quartz Tathlum +1",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Apate Ring",
        back="Letalis Mantle",
    }

    -- STR50 MND50 mod
    sets.ws['Savage Blade'] = {
        ammo="Quartz Tathlum +1",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Apate Ring",
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

    if outOfWeaponSkillRange(spell) then
            cancel_spell() return
    end

    if spell.type == "BardSong" then
        if spell.targets['Enemy'] and string.match(spell.name, "Lullaby") then
            equip(set_combine(sets.precast.fc_song, {range = "Gjallarhorn"}))
            -- equip(set_combine(sets.precast.fc_song, {range = "Daurdabla"}))
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

    --- Weaponskills Midcast (just to be sure) ---
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end

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
            elseif string.match(spell.name, "Ballad") then
                equip(set_combine(sets.midcast.song_buff, {legs="Fili Rhingrave"}))
            elseif string.match(spell.name, "Scherzo") then
                windower.add_to_chat("Casting Scherzo")
                equip(set_combine(sets.midcast.song_buff, {feet="Fili Cothurnes"}))
            elseif string.match(spell.name, "Madrigal") or string.match(spell.name, "Prelude") then
                equip(set_combine(sets.midcast.song_buff, {back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},}))
            else
                equip(sets.midcast.song_buff)
            end
        elseif spell.targets['Enemy'] then
            if string.match(spell.name, "Lullaby") then
                windower.add_to_chat("GO2SLEEP!!")
                equip(set_combine(sets.midcast.song_macc, {range="Gjallarhorn", hands="Brioso Cuffs"}))
                -- equip(set_combine(sets.midcast.song_macc, {range="Daurdabla", hands="Brioso Cuffs"}))
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
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end

    else 
        -- noop
    end

end


function aftercast(spell)
    idleCheck()
end

function status_change(new, old)
    idleCheck()
end

function buff_change(name, gain, buff_details)
end

function buff_refresh(name, buff_details) 
end
