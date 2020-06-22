--include('organizer-lib')
include('custom_helpers')

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
        ammo="Demonry Stone",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Loricate Torque +1",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring="Warp Ring",
        back="Shadow Mantle",
    }

    sets.melee = {
        ammo="Hagneia Stone",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Asperity Necklace",
        waist="Chaac Belt",
        left_ear="Dudgeon Earring",
        right_ear="Heartseeker Earring",
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.dw = sets.melee

    sets.dt = {
        ammo="Demonry Stone",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Loricate Torque +1",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        right_ring={ name="Dark Ring", augments={'Enemy crit. hit rate -2','Spell interruption rate down -4%','Phys. dmg. taken -4%',}},
        back="Shadow Mantle",
    }

    sets.sneak_attack = {
        ammo="Demonry Core",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Manibozho Brais",
        feet="Skulk. Poulaines +1",
        neck="Asperity Necklace",
        waist="Chaac Belt",
        left_ear="Dominiance Earring",
        right_ear="Domin. Earring +1",
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.trick_attack = {
        ammo="Qirmiz Tathlum",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
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
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Houyi's Gorget",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Kuwunga Earring",
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.ws = {
        ammo="Demonry Core",
        head="Umbani Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines +1",
        neck="Breeze Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.ws["Savage Blade"] = {
        ammo="Quartz Tathlum +1",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Breeze Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Rufescent Ring",
        back="Letalis Mantle",
    }

    sets.ws['Evisceration'] = {
        ammo="Qirmiz Tathlum",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Manibozho Brais",
        feet="Skulk. Poulaines +1",
        neck="Soil Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Apate Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.ws['Shark Bite'] = {
        ammo="Qirmiz Tathlum",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Breeze Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Apate Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.ws['Rudra\'s Storm'] = {
        ammo="Qirmiz Tathlum",
        head="Meghanada Visor +1",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses +1",
        feet="Skulk. Poulaines +1",
        neck="Snow Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Apate Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }

    sets.ws["Aeolian Edge"] = {
        ammo="Demonry Core",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines +1",
        neck="Breeze Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Acumen Ring",
        right_ring="Thundersoul Ring",
        back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+2','Crit. hit damage +1%',}},
    }



    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Lithelimb Cap",
        body="Mirke Wardecors",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines +1",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Infused Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Shadow Mantle",
    }

    sets.midcast = {}

    sets.midcast.macc = {
        ammo="Quartz Tathlum +1",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines +1",
        neck="Henic Torque",
        waist="Chaac Belt",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Perception Ring",
        right_ring="Sangoma Ring",
        back="Merciful Cape",
    }

    sets.midcast.enhancing = {
        ammo="Impatiens",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Ighwa Trousers",
        feet="Skulk. Poulaines +1",
        neck="Melic Torque",
        waist="Olympus Sash",
        left_ear="Vor Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Shadow Mantle",
    }

    sets.midcast.waltz = {
        ammo="Demonry Stone",
        head="Uk'uxkaj Cap",
        body="Mekosu. Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Dashing Subligar",
        feet="Skulk. Poulaines +1",
        neck="Loricate Torque +1",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring={ name="Dark Ring", augments={'Enemy crit. hit rate -2','Spell interruption rate down -4%','Phys. dmg. taken -4%',}},
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

end

function pretarget(spell)
end


function precast(spell)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
            cancel_spell() return
    end

    --print("precast spell.type is:")
    --print(spell.type)

    if spell.skill == 'Elemental Magic' or
        spell.skill == 'Enfeebling Magic' or
        spell.skill == 'Dark Magic' or 
        spell.skill == 'Enhancing Magic' then
        equip(sets.precast.fc)

    elseif string.match(spell.name, "Waltz") then
        equip(sets.midcast.waltz)

    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end
    elseif spell.name == 'Flee' then
        equip({feet="Pillager's Poulaines"})
    else
    end

end


function midcast(spell)

    if spell.skill == 'Elemental Magic' or
        spell.skill == 'Enfeebling Magic' or
        spell.skill == 'Dark Magic' then
        equip(sets.midcast.macc)

    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.midcast.enhancing)

    elseif string.match(spell.name, "Waltz") then
        equip(sets.midcast.waltz)

    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end
    elseif spell.name == 'Flee' then
        equip({feet="Pillager's Poulaines"})
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
    else
        idleCheck()
    end
end

function status_change(new, old)
    --print('staus_change ' .. old .. ' -> ' .. new)
    -- i = 0
    -- while true do
    --     windower.add_to_chat('loop' .. tostring(i))
    --     i = i + 1
    --     -- sleep(5)
    -- end

    if player.status == 'Engaged' then
        if buffactive['Sneak Attack'] and
            buffactive['Trick Attack'] then
            equip(sets.sata)

        elseif buffactive['Sneak Attack'] then
            equip(sets.sneak_attack)

        elseif buffactive['Trick Attack'] then
            equip(sets.trick_attack)

        else
            idleCheck()
        end
    else
        idleCheck()
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
            idleCheck()
        end

    elseif name == 'Trick Attack' then
        if gain then
            --print('trick_attack set on')
            equip(sets.trick_attack)
        else
            idleCheck()
        end

    else 
    end
end

function buff_refresh(name, buff_details) 
end