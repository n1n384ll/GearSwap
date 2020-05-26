--include('organizer-lib')
include('custom_helpers')

function get_sets() 
    --send_command('input //gs showswaps')

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
    if spell.type == "Item" then return end

end


function precast(spell)
    if spell.type == "Item" then return end

end


function midcast(spell)
    if spell.type == "Item" then return end

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
