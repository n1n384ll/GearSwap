--include('organizer-lib')
include('custom_helpers')

jump_back = { name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Store TP"+10'}}
geirskogul_back = { name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+7','Weapon skill damage +10%'}}
tp_back = { name="Brigantia's Mantle", augments={'DEX+20','Accuracy+1 Attack+1','"Dbl.Atk."+7','Damage taken-4%',}}

isRingoCasting = false

function get_sets() 
    --send_command('input //gs showswaps')

    sets.idle = {
        ammo="Demonry Stone",
        head="Valorous Mask",
        body="Vishap Mail +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring="Defending Ring",
        back="Shadow Mantle",
    }

    sets.tp = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +1",
        neck="Anu Torque",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Flamma Ring",
        right_ring="Rajas Ring",
        back=geirskogul_back 
    }

    -- 54 pdt
    -- 52 mdt
    -- 49 bdt
    -- 19 haste
    sets.dt = 
    set_combine(sets.idle, {
        head="Sulevia's Mask +1",
        body="Sulevia's Plate. +1",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Sulevia's Ring",
        back=tp_back
    })

    -- sets.melee = sets.tp
    sets.melee = sets.tp

    sets.ohshi = set_combine(sets.dt, { 
        head="Twilight Helm",
        body="Twilight Mail",
        waist="Flume Belt",
        left_ring="Shadow Ring",
        back="Shadow Mantle"
    })

    sets.fc = {
        ammo="Impatiens",
        head="Vishap Armet +1",
        body="Flamma Korazin +1",
        hands="Leyline Gloves",
        legs="Limbo Trousers",
        feet="Flam. Gambieras +1",
        neck="Orunmila's Torque",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Loquac. Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Veneficium Ring",
        right_ring="Lebeche Ring",
        back="Shadow Mantle",
    }

    -- 2602 HP as DRG/RDM trigger at ~1.3k HP
    sets.trigger = {
        ammo="Egoist's Tathlum",
        head="Vishap Armet +1",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +1",
        neck="Sanctity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="K'ayres Ring",
        right_ring="Meridian Ring",
        back="Merciful Cape",
    }

    sets.enh = {
        ammo="Quartz Tathlum +1",
        head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Vishap Brais +1",
        feet={ name="Ptero. Greaves +1", augments={'Enhances "Empathy" effect',}},
        neck="Incanter's Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    sets.phalanx = {
        main="Gungnir",
        sub="Bloodrain Strap",
        ammo="Ombre Tathlum",
        head={ name="Taeon Chapeau", augments={'Phalanx +3',}},
        body={ name="Taeon Tabard", augments={'Phalanx +3',}},
        hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
        legs={ name="Taeon Tights", augments={'Phalanx +3',}},
        feet="Pelt. Schyn. +1",
        neck="Incanter's Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    sets.jump = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Vishap Mail +1",
        hands="Vishap F. G. +1",
        legs="Flamma Dirs +1",
        feet="Ostro Greaves",
        neck="Anu Torque",
        waist="Windbuffet Belt",
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Flamma Ring",
        right_ring="Rajas Ring",
        back=jump_back
    }

    sets.spirit_link = {
        head="Vishap Armet +1", 
        hands="Pel. Vambraces +1",
        feet="Ptero. Greaves +1"
    }

    sets.healing_breath = {
        ammo="Demonry Stone",
        head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
        body={ name="Acro Surcoat", augments={'Pet: Mag. Acc.+23','Pet: Breath+8','Pet: Damage taken -3%',}},
        hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+23','Pet: Breath+8','Pet: Damage taken -3%',}},
        legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+25','Pet: Breath+8','Pet: Damage taken -4%',}},
        feet="Ptero. Greaves +1",
        neck={ name="Dragoon's Collar", augments={'Path: A',}},
        waist="Glassblower's Belt",
        right_ear="Anastasi Earring",
        left_ear="Lancer's Earring",
        left_ring="Shneddick Ring",
        right_ring="Defending Ring",
        back={ name="Updraft Mantle", augments={'STR+1','Pet: Breath+10','Pet: Damage taken -4%',}},
    }

    -- Build for Pet MAB, MAcc, 
    sets.smiting_breath = {
        ammo="Demonry Stone",
        head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
        body={ name="Acro Surcoat", augments={'Pet: Mag. Acc.+23','Pet: Breath+8','Pet: Damage taken -3%',}},
        hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+23','Pet: Breath+8','Pet: Damage taken -3%',}},
        legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+25','Pet: Breath+8','Pet: Damage taken -4%',}},
        feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+23','Pet: Breath+8',}},
        neck={ name="Dragoon's Collar", augments={'Path: A',}},
        waist="Incarnation Sash",
        left_ear="Anastasi Earring",
        right_ear="Dragoon's Earring",
        left_ring="Shneddick Ring",
        right_ring="Defending Ring",
        back={ name="Updraft Mantle", augments={'STR+1','Pet: Breath+10','Pet: Damage taken -4%',}},
    }

    -- Build for Wyvern HP
    sets.steady_wing = {
        neck="Chanoix's Gorget",
        right_ear="Anastasi Earring",
        left_ear="Lancer's Earring",
        hands="Crusher Gauntlets",
        back={ name="Updraft Mantle", augments={'STR+1','Pet: Breath+10','Pet: Damage taken -4%',}},
        legs="Vishap Brais +1",
        feet="Ptero. Greaves +1",
    }

    sets.ws = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
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
        back=jump_back
    }

    sets.ws['Stardiver'] = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Rajas Ring",
        back=jump_back
    }

    sets.ws['Camlann\'s Torment'] = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Flamma Dirs +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear="Ishvara Earring",
        left_ring="Rufescent Ring",
        right_ring="Rajas Ring",
        back=jump_back
    }

    sets.ws['Sonic Thrust'] = sets.ws['Camlann\'s Torment']

    sets.ws['Impulse Drive'] = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Flamma Dirs +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Rajas Ring",
        back=jump_back
    }

    sets.ws['Geirskogul'] = {
        ammo="Demonry Core",
        head={ name="Valorous Mask", augments={'Attack+26','"Dbl.Atk."+4','DEX+15','Accuracy+1',}},
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Ptero. Brais +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear="Ishvara Earring",
        left_ring="Thundersoul Ring",
        right_ring="Rajas Ring",
        back=geirskogul_back
    }

    sets.ws['Drakesbane'] = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Sulevia's Plate. +1",
        hands="Flam. Manopolas +1",
        legs="Pelt. Cuissots +1",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Begrudging Ring",
        right_ring="Rajas Ring",
        back=jump_back
    }

    sets.ws['Skewer'] = sets.ws['Drakesbane']

    sets.ws['Leg Sweep'] = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +1",
        neck="Sanctity Necklace",
        waist="Wanion Belt",
        left_ear="Sherida Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Flamma Ring",
        right_ring="Stikini Ring",
        back=jump_back
    }

end


function pretarget(spell)
    if spell.type == "Item" then return end

end

pre_angon = ""
pre_ammo = ""

function precast(spell)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
        cancel_spell() return
    end

    -- windower.add_to_chat("precast : " .. table.tostring(spell))

    --- Weaponskills ---
    if spell.type == 'WeaponSkill' then
        isRingoCasting = true
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end
        if player.tp >= 2750 then
            windower.add_to_chat("AT 2750 TP or MORE PUTTING ON NOT MOODSHADE WRYYY")
            equip({
                left_ear="Sherida Earring",
                right_ear="Ishvara Earring",
            })
        end
    --- Job Abilities --- 
    --- Pet Commands: Steady Wing and Breaths ---
    elseif spell.type == 'JobAbility' or spell.type == 'PetCommand' then 
        if spell.name == 'Angon' then
            pre_angon = player.equipment.ammo
            equip({ammo="Angon", left_ear="Dragoon's Earring", hands="Ptero. Fin. Gaunt."})
        elseif string.match(spell.name, "Jump") then
            isRingoCasting = false
            if spell.name == "Spirit Jump" then
                equip(set_combine(sets.jump, {
                    feet="Pelt. Schyn. +1"
                }))
            else --Jump/High Jump/Soul Jump/Super Jump
                equip(sets.jump)
            end
        elseif spell.name == "Spirit Link" then
            isRingoCasting = false
            equip(sets.spirit_link)
        elseif spell.name == "Restoring Breath" then
            equip(sets.healing_breath)
        elseif spell.name == "Smiting Breath" then
            equip(sets.smiting_breath)
        elseif spell.name == "Call Wyvern" or spell.name == "Spirit Surge" then
            isRingoCasting = false
            equip({body="Ptero. Mail +1"})
        elseif spell.name == "Ancient Circle" then
            isRingoCasting = false
            equip({legs="Vishap Brais +1"})
        else
            --noop
        end
    elseif spell.skill == "Enhancing Magic" then
        if string.match(spell.name, "Bar") then
            windower.add_to_chat("Precast trigger")
            equip(sets.trigger)
            isRingoCasting = true
        else
            equip(sets.fc)
        end
    elseif spell.name == "Ranged" then
        pre_throw = player.equipment.ammo
        equip({ammo="Tathlum"})
    else
        -- Magic
        equip(sets.fc)
    end

end


function midcast(spell)
    if spell.type == "Item" then return end

    if spell.skill == "Enhancing Magic" then
        if spell.name == "Phalanx" then
            equip(sets.phalanx)
        elseif string.match(spell.name, "Bar") then
            -- windower.add_to_chat("midcast trigger")
            equip(sets.trigger)
            isRingoCasting = true
        else
            equip(sets.enh)
        end
    end
end


function aftercast(spell)
    if spell.name == "Restoring Breath" or 
        string.match(spell.name, "Bar") then 
        equip(sets.healing_breath)
    elseif spell.name == "Smiting Breath" or isRingoCasting then
        -- windower.add_to_chat("aftercast: Ringo still casting")
        equip(sets.smiting_breath)
    else
        idleCheck()
    end

    if spell.name == "Angon" and player.equipment.ammo ~= "" then
        equip({ammo=pre_angon})
        pre_angon = ""
    end

    if spell.name == "Ranged" and player.equipment.ammo ~= "" then
        equip({ammo=pre_throw})
        pre_throw = ""
    end
end

function pet_midcast(spell) 
    isRingoCasting = true
    if string.match(spell.name, "Healing Breath") then
            equip(sets.healing_breath)
    elseif string.match(spell.name, "Breath") then
            equip(sets.smiting_breath)
    end
end

function pet_aftercast(spell)
    isRingoCasting = false
    idleCheck()
end

function status_change(new, old)
    if new == "Idle" then isRingoCasting = false end
    if isRingoCasting then return end
    if player.equipment.ammo == "Tathlum" then return end
    idleCheck()
end

function buff_change(name, gain, buff_details)
    if isRingoCasting then return end
    if player.equipment.ammo == "Tathlum" then return end
    idleCheck()
end

function buff_refresh(name, buff_details)
    if isRingoCasting then return end
    if player.equipment.ammo == "Tathlum" then return end
    idleCheck()
end
