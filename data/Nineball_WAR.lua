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
    }

    sets.melee = {
    }

    sets.dt = {
    }

    sets.precast = {}

    sets.precast.fc = {
    }

    sets.midcast = {}

    sets.midcast.macc = {
    }

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