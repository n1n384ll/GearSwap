--include('organizer-lib')
include('custom_helpers')

function get_sets() 

    --send_command('input //gs showswaps')

    sets.oshi = { 
        ammo="Demonry Stone",
        head="Twilight Helm",
        body="Twilight Mail",
        hands="Chev. Gauntlets",
        legs="Chevalier's Cuisses",
        feet="Chev. Sabatons",
        neck="Loricate Torque +1",
        waist="Nierenschutz",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Shadow Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.dt = {
        ammo="Demonry Stone",
        head="Sulevia's Mask +1",
        --Rev Coat +1
        body={ name="Cizin Mail +1", augments={'Phys. dmg. taken -2%','"Mag.Def.Bns."+1',}},
        hands="Sulevia's Gauntlets +1",
        --Chev Legs +1?
        legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Attack+10',}},
        feet="Sulevia's Leggings +1",
        neck="Loricate Torque +1",
        waist="Nierenschutz",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        --dring
        left_ring="Sulevia's Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Rudianos's Mantle",
    }

    sets.idle = set_combine(sets.dt, {left_ring="Shneddick Ring"})

    sets.refresh = set_combine(sets.dt, {
        ammo="Homiliary",
        neck="Creed Collar"
    })

    sets.hp = {
        ammo="Egoist's Tathlum",
        head="Chevalier's Armet",
        body="Chev. Cuirass",
        hands="Flam. Manopolas +1",
        legs="Chevalier's Cuisses",
        feet="Flam. Gambieras +1",
        neck="Ritter Gorget",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="K'ayres Ring",
        right_ring="Meridian Ring",
        back={ name="Weard Mantle", augments={'VIT+4','DEX+2',}},
    }

    sets.melee = {
        ammo="Paeapua",
        head="Yaoyotl Helm",
        body="Vatic Byrnie",
        hands="Flam. Manopolas +1",
        legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Attack+10',}},
        feet="Flam. Gambieras +1",
        neck="Iqabi Necklace",
        waist="Sailfi Belt",
        left_ear="Brutal Earring",
        right_ear="Hollow Earring",
        left_ring="Flamma Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.dw = set_combine(sets.melee, {
        left_ear="Suppanomimi",
    })

    sets.enmity = {
        ammo="Iron Gobbet",
        head="Valor Coronet",
        body="Chevalier's Cuirass",
        hands={ name="Cizin Mufflers +1", augments={'Phys. dmg. taken -3%','Attack+7',}},
        legs="Chevalier's Cuisses",
        feet="Chev. Sabatons",
        neck="Ritter Gorget",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Odium Ring",
        right_ring="Supershear Ring",
        back="Impassive Mantle",
    }

--------- Pre Casts ---------

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Chevalier's Armet",
        body={ name="Cizin Mail +1", augments={'Phys. dmg. taken -2%','"Mag.Def.Bns."+1',}},
        hands="Flam. Manopolas +1",
        legs="Enif Cosciales",
        feet="Flam. Gambieras +1",
        neck="Orunmila's Torque",
        waist="Nierenschutz",
        left_ear="Loquac. Earring",
        right_ear="Odnowa Earring +1",
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
        ammo="Iron Gobbet",
        head="Valor Coronet",
        body="Vatic Byrnie",
        hands="Flam. Manopolas +1",
        legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Attack+10',}},
        feet="Diama. Sollerets",
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
        legs="Gallant Breeches",
        feet="Chev. Sabatons",
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
        head="Chevalier's Armet",
        body="Reverence Surcoat",
        hands="Flam. Manopolas +1",
        legs="Dashing Subligar",
        feet="Chev. Sabatons",
        neck="Incanter's Torque",
        waist="Nierenschutz",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Impassive Mantle",
    }

    sets.midcast.flash = {
        ammo="Iron Gobbet",
        head="Gavialis Helm",
        body="Chev. Cuirass",
        hands={ name="Cizin Mufflers +1", augments={'Phys. dmg. taken -3%','Attack+7',}},
        legs="Enif Cosciales",
        feet="Chev. Sabatons",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Loquac. Earring",
        right_ear="Colossus's Earring",
        left_ring="Odium Ring",
        right_ring="Supershear Ring",
        back="Impassive Mantle",
    }

    sets.midcast.utsusemi = {
        ammo="Impatiens",
        head="Atro. Chapeau +1",
        body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Aya. Cosciales +1",
        feet={ name="Merlinic Crackows", augments={'Accuracy+20','"Fast Cast"+1','Accuracy+6 Attack+6',}},
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Swith Cape",
    }


--- WS and JA stuffs ---
    sets.ws = {
        ammo="Paeapua",
        head="Yaoyotl Helm",
        body="Vatic Byrnie",
        hands="Chev. Gauntlets",
        legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Attack+10',}},
        feet="Flam. Gambieras +1",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear="Moonshade Earring",
        left_ring="Rufescent Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    -- STR100 mod 
    -- sets.ws['Circle Blade'] = {
    --     ammo="Demonry Core",
    --     head="Jhakri Coronal +1",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +1",
    --     feet="Jhakri Pigaches +2",
    --     neck="Asperity Necklace",
    --     waist="Fotia Belt",
    --     left_ear="Ishvara Earring",
    --     right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    --     left_ring="Rufescent Ring",
    --     right_ring="Apate Ring",
    --     back="Letalis Mantle"
    -- }

    -- swift blade?
    -- STR50 MND50 mod
    sets.ws['Swift Blade'] = set_combine(sets.ws, {
        neck="Fotia Gorget",
        right_ring="Apate Ring",
    })

    -- STR50 MND50 mod
    sets.ws['Savage Blade'] = set_combine(sets.ws, {
        neck="Fotia Gorget",
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
        head="Gavialis Helm",
        body="Vatic Byrnie",
        hands="Chev. Gauntlets",
        legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Attack+10',}},
        feet="Flam. Gambieras +1",
        neck="Fotia Gorget",
        waist="Windbuffet Belt",
        left_ear="Dominance Earring",
        right_ear="Domin. Earring +1",
        left_ring="Apate Ring",
        right_ring="Thundersoul Ring",
        back="Letalis Mantle",
    }

    -- MND85 mod - MND Based Build - test balance with STR? attack?
    sets.ws['Requiescat'] = {
        ammo="Paeapua",
        head="Yaoyotl Helm",
        body="Vatic Byrnie",
        hands="Chev. Gauntlets",
        legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Attack+10',}},
        feet="Diama. Sollerets",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Stikini Ring",
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
            equip({legs="Vlr. Breeches +2"})
        elseif spell.name == 'Holy Circle' then
            equip({feet="Rev. Leggings"})
        elseif spell.name == 'Shield Bash' then
            equip({hands="Valor Gauntlets"})
        elseif spell.name == 'Sentinel' then
            equip({feet="Cab. Leggings"})
        elseif spell.name == 'Cover' then
            -- make a cover set?
            equip({head="Gallant Coronet", body="Vlr. Surcoat +2"})
        elseif spell.name == 'Rampart' then
            equip({head="Valor Coronet"})
        elseif spell.name == 'Fealty' then
            equip({body="Vlr. Surcoat +2"})
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

    --- Divine Midcast ---
    elseif spell.skill == 'Divine Magic' then
        if spell.name == Flash or
            spell.name:sub(1,5) == "Banish" then
            -- TODO : Enmity+ and build for recast
            equip(sets.midcast.flash)
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
