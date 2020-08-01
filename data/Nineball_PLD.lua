--include('organizer-lib')
include('custom_helpers')

function get_sets() 
    initLock()
    --send_command('input //gs showswaps')

    sets.dt = {
        ammo="Demonry Stone",
        head="Sulevia's Mask +1",
        body="Souv. Cuirass +1",
        hands="Sulev. Gauntlets +1",
        --Chev Legs +1?
        legs="Rev. Breeches +1",
        feet="Sulevia's Leggings +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        --dring
        left_ring="Sulevia's Ring",
        right_ring="Defending Ring",
        back="Rudianos's Mantle",
    }

    sets.hp = {
        ammo="Egoist's Tathlum",
        head="Souv. Schaller +1",
        body="Souv. Cuirass +1",
        hands="Souv. Handsch. +1",
        legs="Souv. Diechlings +1",
        feet="Souveran Schuhs +1",
        neck="Ritter Gorget",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="K'ayres Ring",
        right_ring="Meridian Ring",
        back="Rudianos's Mantle"
    }

    -- 44 pdt
    -- 38 mdt
    -- 37 bdt
    sets.turtle = {
        ammo="Egoist's Tathlum",
        head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
        body="Souv. Cuirass +1",
        hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Sulevia's Ring",
        right_ring="Defending Ring",
        back="Rudianos's Mantle",
    }

    sets.idle = set_combine(sets.turtle, {left_ring="Shneddick Ring"})

    sets.refresh = set_combine(sets.dt, {
        ammo="Homiliary",
        neck="Creed Collar"
    })

    sets.ohshi = set_combine(sets.dt, { 
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
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +1",
        neck="Sanctity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Flamma Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.hybrid = {
        ammo="Amar Cluster",
        head="Sulevia's Mask +1",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +1",
        neck="Sanctity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Sulevia's Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.dw = set_combine(sets.melee, {
        left_ear="Suppanomimi",
    })

    sets.enmity = {
        ammo="Paeapua",
        head="Cab. Coronet",
        body="Souv. Cuirass +1",
        hands="Souv. Handsch. +1",
        legs="Cab. Breeches",
        feet="Souveran Schuhs +1",
        neck="Ritter Gorget",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Odium Ring",
        right_ring="Supershear Ring",
        back="Rudianos's Mantle"
    }

--------- Pre Casts ---------

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Chevalier's Armet",
        body="Rev. Surcoat +1",
        hands="Leyline Gloves",
        legs="Enif Cosciales",
        feet="Rev. Leggings +1",
        neck="Orunmila's Torque",
        waist="Flume Belt",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Prolix Ring",
        right_ring="Veneficium Ring",
        back="Impassive Mantle",
    }

    sets.precast.fc_enh = set_combine(sets.precast.fc, {
        waist="Siegel Sash",
    })

--------- Mid Casts ---------

    sets.midcast = {}

    sets.midcast.cure_potency = {
        ammo="Paeapua",
        head="Lithelimb Cap",
        body="Souv. Cuirass +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Sulev. Leggings +1",
        neck="Phalaina Locket",
        waist="Asklepian Belt",
        left_ear="Nourishing Earring",
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
        legs="Rev. Breeches +1",
        feet="Chev. Sabatons",
        neck="Incanter's Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    sets.midcast.phalanx = {
        ammo="Iron Gobbet",
        head={ name="Yorium Barbuta", augments={'Phalanx +2',}},
        body="Chev. Cuirass",
        hands="Souv. Handsch. +1",
        legs={ name="Yorium Cuisses", augments={'Phalanx +2',}},
        feet="Souveran Schuhs +1",
        neck="Incanter's Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    sets.midcast.divine = {
        ammo="Demonry Stone",
        head={ name="Jumalik Helm", augments={'MND+5','"Mag.Atk.Bns."+6','Magic burst dmg.+3%',}},
        body={ name="Found. Breastplate", augments={'Accuracy+2','Mag. Acc.+3','"Mag.Atk.Bns."+3',}},
        hands="Leyline Gloves",
        legs="Flamma Dirs +1",
        feet="Chev. Sabatons",
        neck="Incanter's Torque",
        waist="Asklepian Belt",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Impassive Mantle",
    }

    sets.midcast.holy = {
        ammo="Quartz Tathlum +1",
        head={ name="Jumalik Helm", augments={'MND+5','"Mag.Atk.Bns."+6','Magic burst dmg.+3%',}},
        body={ name="Found. Breastplate", augments={'Accuracy+2','Mag. Acc.+3','"Mag.Atk.Bns."+3',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
        legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        feet="Sulev. Leggings +1",
        neck="Sanctity Necklace",
        waist="Asklepian Belt",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Impassive Mantle",
    }

    -- TODO : Cap magic haste/enmity balance?
    sets.midcast.flash = sets.enmity

    sets.midcast.utsusemi = {
        ammo="Impatiens",
        head="Atro. Chapeau +1",
        body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Aya. Cosciales +2",
        feet={ name="Merlinic Crackows", augments={'Accuracy+20','"Fast Cast"+1','Accuracy+6 Attack+6',}},
        neck="Orunmila's Torque",
        waist="Sailfi Belt +1",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Swith Cape",
    }


--- WS and JA stuffs ---
    sets.ws = {
        ammo="Paeapua",
        head="Sulevia's Mask +1",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }


    -- swift blade?
    -- STR50 MND50 mod
    sets.ws['Swift Blade'] = set_combine(sets.ws, {
        right_ring="Apate Ring",
    })

    -- STR50 MND50 mod
    sets.ws['Savage Blade'] = set_combine(sets.ws, {
        right_ring="Apate Ring",
    })

    -- atonement?

    -- INT, MAB, MND50, STR30 mod
    sets.ws['Sanguine Blade'] = set_combine(sets.ws, {
        ammo="Quartz Tathlum +1",
        head="Pixie Hairpin +1",
        neck="Eddy Necklace",
        waist="Wanion Belt",
        left_ear="Friomisi Earring",
        right_ear="Novio Earring",
        left_ring="Acumen Ring",
        right_ring="Archon Ring",
    })

    -- DEX80 mod
    sets.ws['Chant du Cygne'] = {
        ammo="Paeapua",
        head="Valorous Mask",
        body="Sulevia's Plate. +1",
        hands="Flam. Manopolas +1",
        legs="Sulevi. Cuisses +1",
        feet="Flam. Gambieras +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Thundersoul Ring",
        right_ring="Apate Ring",
        back="Letalis Mantle",
    }

    -- MND85 mod - MND Based Build - test balance with STR? attack?
    sets.ws['Requiescat'] = {
        ammo="Paeapua",
        head="Sulevia's Mask +1",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Stikini Ring",
        back="Letalis Mantle",
    }

    sets.ws['Aeolian Edge'] = {
        ammo="Ombre Tathlum",
        head={ name="Jumalik Helm", augments={'MND+5','"Mag.Atk.Bns."+6','Magic burst dmg.+3%',}},
        body={ name="Found. Breastplate", augments={'Accuracy+2','Mag. Acc.+3','"Mag.Atk.Bns."+3',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
        legs="Chev. Cuisses +1",
        feet="Founder's Greaves",
        neck="Eddy Necklace",
        waist="Wanion Belt",
        left_ear="Friomisi Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Acumen Ring",
        right_ring="Shiva Ring",
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

    --- Ninjutsu (Utsusemi) ---
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi'
        then equip(sets.precast.utsusemi)

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
        elseif spell.name == 'Phalanx' then
            equip(sets.midcast.phalanx)
        else
            equip(sets.midcast.enhancing)
        end

    --- Divine Midcast ---
    elseif spell.skill == 'Divine Magic' then
        if spell.name == Flash or
            spell.name:sub(1,5) == "Banish" then
            -- TODO : Enmity+ and build for recast
            equip(sets.midcast.flash)
        elseif string.match(spell.name, "Holy") then
            equip(sets.midcast.holy)
        else
            equip(sets.midcast.divine)
        end
        
    --- Ninjutsu Midcast (for recast time) --- 
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.midcast.utsusemi)

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
