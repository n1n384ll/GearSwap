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

    sets.dw = {
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
    if spell.name == "Forbidden Key" then
        return
    -- Add stuff here
    end
end


function precast(spell)
    if spell.name == "Forbidden Key" then
        return
    -- Add stuff here
    end
end


function midcast(spell)
    if spell.name == "Forbidden Key" then
        return
    -- Add stuff here
    end
end


function aftercast(spell)
	idle_check()
end

function status_change(new, old)
	idle_check()
end

function buff_change(name, gain, buff_details)
end

function buff_refresh(name, buff_details) 
end