--include('organizer-lib')
include('custom_helpers')

function get_sets() 
    --send_command('input //gs showswaps')

    sets.idle = {
        ammo="Demonry Stone",
        head="Valorous Mask",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Impassive Mantle",
    }

    sets.melee = {
        ammo="Hasty Pinion +1",
        head="Flam. Zucchetto +1",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +1",
        neck="Sanctity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Flamma Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.dt = set_combine(sets.idle, {
        head="Sulevia's Mask +1",
        left_ring="Sulevia's Ring"
    })

    sets.ohshi = set_combine(sets.dt, { 
        head="Twilight Helm",
        body="Twilight Mail",
        left_ring="Shadow Ring",
        back="Shadow Mantle"
    })

    sets.jump = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +1",
        body="Flamma Korazin +1",
        hands="Crusher Gauntlets",
        legs="Sulevi. Cuisses +1",
        feet="Maenadic Gambieras",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="K'ayres Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.ws = {
        ammo="Amar Cluster",
        head="Flam. Zucchetto +1",
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

end


function pretarget(spell)
    if spell.type == "Item" then return end

end

pre_angon = ""

function precast(spell)
    -- windower.add_to_chat("precast spell.type = " .. spell.type)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
        cancel_spell() return
    end

    --- Weaponskills ---
    if spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end
    --- Job Abilities --- 
    elseif spell.type == 'JobAbility' or spell.type == 'PetCommand' then 
        if spell.name == 'Angon' then
            pre_angon = player.equipment.ammo
            equip({ammo="Angon"})
        elseif string.match(spell.name, "Jump") then
            equip(sets.jump)
        else
            --noop
        end
    else
        --noop
        windower.add_to_chat("NEVER SHOULDA COME HERE")
    end

end


function midcast(spell)
    if spell.type == "Item" then return end

end


function aftercast(spell)
    if spell.name == "Angon" and player.equipment.ammo ~= "" then
        equip({ammo=pre_angon})
        pre_angon = ""
    end
    idleCheck()
end

function status_change(new, old)
    idleCheck()
end

function buff_change(name, gain, buff_details)
end

function buff_refresh(name, buff_details) 
end
