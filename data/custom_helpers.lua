--- My Custom, non-GearSwap helper functions below ---
dual_wield_jobs = S{'THF','BLU','NIN','DNC'}
mp_using_jobs = S{'WHM', 'BLM', 'RDM', 'PLD', 'DRK', 'SMN', 'BLU', 'SCH', 'GEO', 'RUN'}

function idle_check()
    if player.hpp < 69 then
            equip(sets.dt)
            windower.add_to_chat("--------- DT ON ---------")
    elseif player.mpp < 9 then
        equip(sets.refresh)
        windower.add_to_chat("--------- REFRESH ON ---------")
    elseif player.status =='Engaged' then
    	if can_dual_wield() then
    		equip(sets.dw)
            -- windower.add_to_chat("COMMENCING HOSTILITIES (DW)")
    	else
    		equip(sets.melee)
            -- windower.add_to_chat("COMMENCING HOSTILITIES (SH)")
    	end
    else
        equip(sets.idle)
    end
end

function can_dual_wield()
    if sets.dw == nil then
        return false
    end
	if (dual_wield_jobs:contains(player.main_job) or (player.sub_job == 'DNC' or player.sub_job == 'NIN')) then
		return true
	else
		return false
	end
end

function is_mp_using_job() 
    if sets.refresh == nil then
        return false
    end
    if (mp_using_jobs:contains(player.main_job) or mp_using_jobs:contains(player.sub_job)) then
        return true 
    else
        return false
    end
end
