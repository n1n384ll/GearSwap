--include('organizer-lib')
include('custom_helpers')

function get_sets() 

    --send_command('input //gs showswaps')

    sets.dt = {
        ammo="Demonry Stone",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Ayanmo Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.hp = {
        ammo="Egoist's Tathlum",
        head="Gavialis Helm",
        body="Rev. Surcoat +1",
        hands="Rev. Gauntlets +1",
        legs="Rev. Breeches +1",
        feet="Rev. Leggings +1",
        neck="Ritter Gorget",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="K'ayres Ring",
        right_ring="Meridian Ring",
        back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+1 /Mag. Eva.+1','HP+14','Enmity+5',}},
    }

    sets.idle = set_combine(sets.dt, {
        waist="Fucho-no-Obi",
        left_ring="Shneddick Ring"
    })

    sets.refresh = set_combine(sets.dt, {
        ammo="Homiliary",
        neck="Creed Collar"
    })

    sets.oshi = set_combine(sets.dt, { 
        head="Twilight Helm",
        body="Twilight Mail",
        left_ring="Shadow Ring",
        back="Shadow Mantle",
        hands="Chev. Gauntlets",
        --TODO : get the upgrade
        --legs="Chev. Breeches +1?",
        feet="Chev. Sabatons"
    })

    sets.melee = {
        ammo="Hagneia Stone",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Meg. Chausses +1",
        feet="Aya. Gambieras +1",
        neck="Sanctity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Brutal Earring",
        left_ring="Ayanmo Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.enmity = {
        ammo="Iron Gobbet",
        head="Cab. Coronet",
        body="Chev. Cuirass",
        hands="Cab. Gauntlets",
        legs="Cab. Breeches",
        feet="Chev. Sabatons",
        neck="Ritter Gorget",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Odium Ring",
        right_ring="Supershear Ring",
        back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+1 /Mag. Eva.+1','HP+14','Enmity+5',}},
    }

--------- Pre Casts ---------

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Orunmila's Torque",
        waist="Siegel Sash",
        left_ear="Loquac. Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Prolix Ring",
        right_ring="Veneficium Ring",
        back="Shadow Mantle",
    }

    sets.precast.fc_enh = set_combine(sets.precast.fc, {
        waist="Siegel Sash",
    })

--------- Mid Casts ---------

    sets.midcast = {}

    sets.midcast.cure_potency = {
        ammo="Iron Gobbet",
        head="Lithelimb Cap",
        body="Vatic Byrnie",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Sulev. Leggings +1",
        neck="Phalaina Locket",
        waist="Rumination Sash",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Asklepian Ring",
        right_ring="Sirona's Ring",
        back="Impassive Mantle",
    }

    sets.midcast.enhancing = {
        ammo="Iron Gobbet",
        head="Chevalier's Armet",
        body="Chev. Cuirass",
        hands="Chev. Gauntlets",
        legs="Rev. Breeches",
        feet="Chev. Sabatons",
        neck="Incanter's Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    -- TODO : Cap magic haste/enmity balance?
    sets.midcast.flash = sets.enmity


--- WS and JA stuffs ---
    sets.ws = {
        ammo="Mantoptera Eye",
        head="Meghanada Visor +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Meg. Chausses +1",
        feet="Aya. Gambieras +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

end

function pretarget(spell)
end

function precast(spell)
    -- windower.add_to_chat("precast : spell.type =  " .. spell.type)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
            cancel_spell() return
    end

    -- windower.add_to_chat(spell.name)

    --- Curing FC ----
    if spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.precast.fc)

    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.precast.fc_enh)

    --- Weaponskills ---
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end

    elseif spell.type == 'JobAbility' then 
        equip(sets.enmity)
        if spell.name == 'Invincible' then
            equip({legs="Cab. Breeches"})
        elseif spell.name == 'Holy Circle' then
            equip({feet="Rev. Leggings +1"})
        elseif spell.name == 'Shield Bash' then
            equip({hands="Cab. Gauntlets"})
        elseif spell.name == 'Sentinel' then
            equip({feet="Cab. Leggings"})
        elseif spell.name == 'Cover' then
            -- make a cover set?
            equip({head="Rev. Coronet +1", body="Cab. Surcoat"})
        elseif spell.name == 'Rampart' then
            equip({head="Cab. Coronet"})
        elseif spell.name == 'Fealty' then
            equip({body="Cab. Surcoat"})
        elseif spell.name == 'Divine Emblem' then
            equip({feet="Chev. Sabatons"})
        else
            --noop
        end

    --- General FC for magic ---
    elseif spell.type ~= 'WeaponSkill' then
        equip(sets.precast.fc)

    else
        --noop
        windower.add_to_chat("NEVER SHOULDA COME HERE1")
    end
end


function midcast(spell)
    -- windower.add_to_chat("midcast : spell.type =  " .. spell.type)
    if spell.type == "Item" then return end
    -- windower.add_to_chat(tostring(player.tp))

    --- Healing Potency Midcast ---
    if spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.midcast.cure_potency)

    --- Enhancing Midcast ---
    elseif spell.skill == 'Enhancing Magic' then
        if spell.name == 'Reprisal' then
            equip(sets.hp)
        else
            equip(sets.midcast.enhancing)
        end

    --- Weaponskills Midcast (just to be sure) ---
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end

    elseif spell.type == 'JobAbility' then
        --noop

    else 
        -- noop
        -- windower.add_to_chat("NEVER SHOULDA COME HERE2")
        equip(sets.enmity)
    end

end

function aftercast(spell)
    -- windower.add_to_chat("aftercast : spell.type =  " .. spell.type)
    if spell.type == 4 then return end
    idleCheck()
end

function status_change(new, old)
    idleCheck()
end

function buff_change(name, gain, buff_details)
    idleCheck()
end

function buff_refresh(name, buff_details) 
    idleCheck()
end
