--- My Custom, non-GearSwap helper functions below ---
dual_wield_jobs = S{'THF','BLU','NIN','DNC'}

function idle_check()
    if player.hpp < 69 then
            equip(sets.dt)
    elseif player.status =='Engaged' then
    	if can_dual_wield() and sets.dw ~= nil then
    		equip(sets.dw)
    	else 
    		equip(sets.melee)
    	end
    else
        equip(sets.idle)
    end
end

function can_dual_wield()
	if (dual_wield_jobs:contains(player.main_job) or (player.sub_job == 'DNC' or player.sub_job == 'NIN')) then
		return true
	else
		return false
	end
end