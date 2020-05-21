--include('organizer-lib')

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
        ammo="Iron Gobbet",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Dashing Subligar",
        feet="Skulk. Poulaines",
        neck="Twilight Torque",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.melee = {
        ammo="Hagneia Stone",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Asperity Necklace",
        waist="Chaac Belt",
        left_ear="Dudgeon Earring",
        right_ear="Heartseeker Earring",
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.dt = {
        ammo="Demonry Stone",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Twilight Torque",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        right_ring={ name="Dark Ring", augments={'Enemy crit. hit rate -2','Spell interruption rate down -4%','Phys. dmg. taken -4%',}},
        back="Shadow Mantle",
    }

    sets.sneak_attack = {
        ammo="Demonry Core",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Manibozho Brais",
        feet="Skulk. Poulaines",
        neck="Asperity Necklace",
        waist="Chaac Belt",
        left_ear="Kuwunga Earring",
        right_ear="Ethereal Earring",
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.trick_attack = {
        ammo="Qirmiz Tathlum",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Houyi's Gorget",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Suppanomimi",
        left_ring="Stormsoul Ring",
        right_ring="Stormsoul Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.sata = {
        ammo="Qirmiz Tathlum",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Houyi's Gorget",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Kuwunga Earring",
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.alien_edge = {
        ammo="Demonry Core",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Breeze Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Acumen Ring",
        right_ring="Thundersoul Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.shark_bite = {
        ammo="Demonry Core",
        head="Umbani Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Orunmila's Torque",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Shadow Mantle",
    }

    sets.midcast = {}

    sets.midcast.macc = {
        ammo="Demonry Stone",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines",
        neck="Weike Torque",
        waist="Chaac Belt",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Perception Ring",
        right_ring="Sangoma Ring",
        back="Shadow Mantle",
    }


end

function pretarget(spell)
end


function precast(spell)

    --print("precast spell.type is:")
    --print(spell.type)

    if spell.skill == 'Elemental Magic' or
        spell.skill == 'Enfeebling Magic' or
        spell.skill == 'Dark Magic' then
        equip(sets.precast.fc)

    elseif spell.name == 'Aeolian Edge' then
        equip(sets.alien_edge)

    elseif spell.name == 'Shark Bite' or 
        spell.type == 'WeaponSkill' then
        equip(sets.shark_bite)

    else
    end

end


function midcast(spell)

    if spell.skill == 'Elemental Magic' or
        spell.skill == 'Enfeebling Magic' or
        spell.skill == 'Dark Magic' then
        equip(sets.midcast.macc)

    elseif spell.name == 'Aeolian Edge' then
        equip(sets.alien_edge)

    elseif spell.name == 'Shark Bite' or 
        spell.type == 'WeaponSkill' then
        print('used a ws')
        equip(sets.shark_bite)

    else
    end

end

function aftercast(spell)

    if player.status == 'Engaged' then
        if buffactive['Sneak Attack'] and
            buffactive['Trick Attack'] then
            equip(sets.sata)

        elseif buffactive['Sneak Attack'] then
            equip(sets.sneak_attack)

        elseif buffactive['Trick Attack'] then
            equip(sets.trick_attack)

        else
            equip(sets.melee)
        end

    elseif player.in_combat then
        equip(sets.dt)

    else
        equip(sets.idle)
    end
end

function status_change(new, old)
    --print('staus_change ' .. old .. ' -> ' .. new)

    if player.status == 'Engaged' then
        if buffactive['Sneak Attack'] and
            buffactive['Trick Attack'] then
            equip(sets.sata)

        elseif buffactive['Sneak Attack'] then
            equip(sets.sneak_attack)

        elseif buffactive['Trick Attack'] then
            equip(sets.trick_attack)

        else
            equip(sets.melee)
        end

    elseif player.in_combat then
        equip(sets.dt)

    else
        equip(sets.idle)
    end

end

function buff_change(name, gain, buff_details)
    --print('buff_change')

    --- auto rr ---
    if name == 'Reraise' then
        send_command('input /item "Instant Reraise" <me>')
    end


    if buffactive['Sneak Attack'] and
        buffactive['Trick Attack'] then
            --print('sata set on')
            equip(sets.sata)

    elseif name == 'Sneak Attack' then
        if gain then
            --print('sneak_attack set on')
            equip(sets.sneak_attack)
        else
            equip(sets.melee)
        end

    elseif name == 'Trick Attack' then
        if gain then
            --print('trick_attack set on')
            equip(sets.trick_attack)
        else
            equip(sets.melee)
        end

    else 
    end
end