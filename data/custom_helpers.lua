--- My Custom, non-GearSwap helper functions below ---
function idle_check()
    if player.hpp < 69 then
            equip(sets.dt)
    elseif player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
            equip(sets.dt)
    else
        equip(sets.idle)
    end
end
