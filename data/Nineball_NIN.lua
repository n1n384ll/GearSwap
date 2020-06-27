--include('organizer-lib')
include('custom_helpers')

function get_sets() 
    --send_command('input //gs showswaps')

    shuriken = "Happo Shuriken"

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
        ammo=shuriken,
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands="Onimusha-no-kote",
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
        ammo=shuriken,
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands="Onimusha-no-kote",
        legs="Ighwa Trousers",
        feet="Diama. Sollerets",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Dudgeon Earring",
        right_ear="Heartseeker Earring",
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back="Yokaze Mantle",
    }

    sets.dt = {
        ammo=shuriken,
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands="Onimusha-no-kote",
        legs="Dashing Subligar",
        feet="Diama. Sollerets",
        neck="Twilight Torque",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring={ name="Dark Ring", augments={'Enemy crit. hit rate -2','Spell interruption rate down -4%','Phys. dmg. taken -4%',}},
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.refresh = {
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands="Onimusha-no-Kote",
        legs={ name="Stearc Subligar", augments={'"Refresh"+1','MP recovered while healing +1',}},
        feet="Diama. Sollerets",
        neck="Twilight Torque",
        waist="Glassblower's Belt",
        left_ear="Ethereal Earring",
        right_ear="Colossus's Earring",
        left_ring={ name="Dark Ring", augments={'Enemy crit. hit rate -2','Spell interruption rate down -4%','Phys. dmg. taken -4%',}},
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.precast = {}

    sets.precast.fc = {
        ammo=shuriken,
        head="Gavialis Helm",
        body={ name="Mirke Wardecors", augments={'Evasion+10','"Fast Cast"+5',}},
        hands="Onimusha-no-kote",
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

    sets.precast.utsusemi = set_combine(sets.precast.fc, {
        neck="Magoraga Beads"
    })

    sets.ws = {
        ammo=shuriken,
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands="Onimusha-no-kote",
        legs="Ighwa Trousers",
        feet="Diama. Sollerets",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back={ name="Yokaze Mantle", augments={'STR+1','Sklchn.dmg.+5%',}},
    }

    sets.alien = {
        ammo=shuriken,
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands="Onimusha-no-kote",
        legs="Dashing Subligar",
        feet="Diama. Sollerets",
        neck="Fotia Gorget",
        waist="Chaac Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Acumen Ring",
        right_ring="Thundersoul Ring",
        back={ name="Yokaze Mantle", augments={'STR+1','Sklchn.dmg.+5%',}},
    }

    sets.midcast = {}

    sets.midcast.utsusemi = {
        ammo=shuriken,
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
        ammo=shuriken,
        head="Gavialis Helm",
        body="Mekosu. Harness",
        hands={ name="Kog. Tekko +2", augments={'Enh. "Ninja Tool Expertise" effect',}},
        legs="Dashing Subligar",
        feet="Diama. Sollerets",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Stealth Earring",
        right_ear="Ninjutsu Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Astute Cape",
    }

    sets.midcast.enhancing = {
        head="Lithelimb Cap",
        body="Mekosu. Harness",
        hands="Onimusha-no-Kote",
        legs="Dashing Subligar",
        feet="Diama. Sollerets",
        neck="Colossus's Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikni Ring",
        right_ring="Stikni Ring",
        back="Merciful Cape",
    }

end


function pretarget(spell)
end


function precast(spell)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
            cancel_spell() return
    end

    if spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.precast.utsusemi)
    elseif spell.skill == 'Ninjutsu' then
        equip(sets.precast.fc)
    elseif spell.type == "WeaponSkill" then
        if spell.name == "Aeolian Edge" then
            equip(sets.alien)
        else
            equip(sets.ws)
        end
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
        elseif spell.name == "Provoke" then
             equip(set_combine(sets.dt, {waist="Chaac Belt"}))
        -- elseif spell.name == "" then
        --     equip(set_combine(sets.dt, {}))
        else
            equip(sets.dt)
        end
    else
        equip(sets.precast.fc)
    end
end


function midcast(spell)
    if spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.midcast.utsusemi)
    elseif spell.skill == 'Ninjutsu Magic' then
        equip(sets.midcast.ninjutsu)
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.midcast.enhancing)
    end
end


function aftercast(spell)
	idleCheck()
end

function status_change(new, old)
    idleCheck()
end

function buff_change(name, gain, buff_details)
    -- if name == 'Yonin' and not gain then
    --     send_command('input /ja Yonin <me>')
    -- elseif name == 'Innin' and not gain then
    --     send_command('input /ja Innin <me>')
    -- elseif name == 'Subtle Blow Plus' and not gain then
    --     send_command('input /ma "Myoshu: Ichi" <me>')
    -- elseif name == 'Store TP' and not gain then
    --     send_command('input /ma "Kakka: Ichi" <me>')
    -- end
end

function buff_refresh(name, buff_details) 
end
