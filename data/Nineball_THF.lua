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
        --main="",
        --sub="",
        --range="",
        ammo="Impatiens",
        head="Vitiation chapeau",
        neck="Twilight torque",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Jhakri Robe",
        hands="Atrophy Gloves +1",
        left_ring="Shneddick ring",
        right_ring="Warp ring",
        back="Shadow mantle",
        waist="Fucho-no-obi",
        legs="Dashing Subligar",
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Song recast delay -3',}},
    }

    sets.melee = {
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

    sets.dt = {
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

    sets.sneak_attack = {
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

    sets.trick_attack = {
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


    sets.precast = {}

    sets.midcast = {}
end

function pretarget(spell)
end


function precast(spell)
end


function midcast(spell)
end

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
        equip(sets.dt)
    else
        equip(sets.idle)
    end
    --debug line - put the equip line after here to test set
    --equip(sets.midcast.enhancing)
end

function status_change(new, old)
    print('staus_change ' .. new .. ' -> ' .. old)
    if player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
        equip(sets.dt)
    else
        equip(sets.idle)
    end
end
