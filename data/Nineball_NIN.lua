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
        ammo="Demonry Stone",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands="Buremte Gloves",
        legs="Dashing Subligar",
        feet="Ninja Kyahan",
        neck="Twilight Torque",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring="Warp Ring",
        back="Shadow Mantle",
    }

    sets.melee = {
        ammo="Qirmiz Tathlum",
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands="Otronif Gloves",
        legs="Ighwa Trousers",
        feet="Outrider Greaves",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Dudgeon Earring",
        right_ear="Heartseeker Earring",
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back="Yokaze Mantle",
    }

    sets.dt = {
        ammo="Demonry Stone",
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands="Buremte Gloves",
        legs="Dashing Subligar",
        feet="Outrider Greaves",
        neck="Twilight Torque",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring={ name="Dark Ring", augments={'Enemy crit. hit rate -2','Spell interruption rate down -4%','Phys. dmg. taken -4%',}},
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Gavialis Helm",
        body={ name="Mirke Wardecors", augments={'Evasion+10','"Fast Cast"+5',}},
        hands="Buremte Gloves",
        legs="Dashing Subligar",
        feet={ name="Kog. Kyahan +2", augments={'Enh. Ninj. Mag. Acc/Cast Time Red.',}},
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Ethereal Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Astute Cape",
    }

    sets.precast.utsusemi = {
        ammo="Impatiens",
        head="Gavialis Helm",
        body={ name="Mirke Wardecors", augments={'Evasion+10','"Fast Cast"+5',}},
        hands="Buremte Gloves",
        legs="Dashing Subligar",
        feet={ name="Kog. Kyahan +2", augments={'Enh. Ninj. Mag. Acc/Cast Time Red.',}},
        neck="Magoraga Beads",
        waist="Sailfi Belt",
        left_ear="Ethereal Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Astute Cape",
    }

    sets.ws = {
        ammo="Qirmiz Tathlum",
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands="Buremte Gloves",
        legs="Ighwa Trousers",
        feet="Outrider Greaves",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back={ name="Yokaze Mantle", augments={'STR+1','Sklchn.dmg.+5%',}},
    }

    sets.midcast = {}

    sets.midcast.utsusemi = {
        ammo="Impatiens",
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands={ name="Kog. Tekko +2", augments={'Enh. "Ninja Tool Expertise" effect',}},
        legs="Dashing Subligar",
        feet="Iga Kyahan +2",
        neck="Magoraga Beads",
        waist="Sailfi Belt",
        left_ear="Ethereal Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Astute Cape",
    }

    sets.midcast.ninjutsu = {
        ammo="Impatiens",
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands={ name="Kog. Tekko +2", augments={'Enh. "Ninja Tool Expertise" effect',}},
        legs="Dashing Subligar",
        feet="Otronif Boots",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Stealth Earring",
        right_ear="Ninjutsu Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Astute Cape",
    }

end


function pretarget(spell)
end


function precast(spell)
    if spell.skill == 'Ninjutsu' then
        equip(sets.precast.fc)
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.precast.utsusemi)
    elseif spell.type == "WeaponSkill" then
        equip(sets.ws)
    elseif spell.type == "JobAbility" then
        if spell.name == "Innin" then
            equip(set_combine(sets.dt, {head="Iga Zukin +2"}))
        elseif spell.name == "Sange" then
            equip(set_combine(sets.dt, {body="Koga Chainmail +2"}))
        elseif spell.name == "Futae" then
            equip(set_combine(sets.dt, {hands="Iga Tekko +2"}))
        elseif spell.name == "Yonin" then
            equip(set_combine(sets.dt, {legs="Iga Hakama +2"}))
        elseif spell.name == "Mijin Gakure" then
            equip(set_combine(sets.dt, {ammo="Reacton Arm", legs="Koga Hakama +2"}))
        -- elseif spell.name == "" then
        --     equip(set_combine(sets.dt, {}))
        else
            equip(set_combine(sets.dt, {}))
        end
    end
end


function midcast(spell)
    if spell.skill == 'Ninjutsu Magic' then
        equip(sets.midcast.ninjutsu)
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.midcast.utsusemi)
    end
end


function aftercast(spell)
	if player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
        equip(sets.dt)
    else
        equip(sets.idle)
    end
end

function status_change(new, old)
	if player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
        equip(sets.dt)
    else
        equip(sets.idle)
    end
end

function buff_change(name, gain, buff_details)
end

function buff_refresh(name, buff_details) 
end