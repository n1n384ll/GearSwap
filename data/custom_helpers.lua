--- My Custom, non-GearSwap helper functions below ---
dual_wield_jobs = S{'THF','BLU','NIN','DNC'}
mp_using_jobs = S{'WHM', 'BLM', 'RDM', 'PLD', 'DRK', 'SMN', 'BLU', 'SCH', 'GEO', 'RUN'}
range_mult = {
      [2]=1.70,
      [3]=1.490909,
      [4]=1.44,
      [5]=1.377778,
      [6]=1.30,
      [7]=1.20,
      [8]=1.30,
      [9]=1.377778,
     [10]=1.45,
     [11]=1.490909,
     [12]=1.70,
}

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

function outOfWeaponSkillRange(spell)
    -- if it's not a weaponskill, then just continue casting spell as normal
    if spell.type ~= 'WeaponSkill' then
        return false
    end

    if player.tp < 1000 then
      return true
    end

    -- Formula from : http://forums.windower.net/index.php@sharelink=download%3BaHR0cDovL2ZvcnVtcy53aW5kb3dlci5uZXQvaW5kZXgucGhwPy90b3BpYy80MTItZGlzdGFuY2UtYW5kLWdlYXJzd2FwLXF1ZXN0aW9uLw,,%3BRGlzdGFuY2UgYW5kIEdlYXJzd2FwIHF1ZXN0aW9u.html
    local actualWSRange = spell.target.model_size + spell.range * range_mult[spell.range]

    if spell.target.distance > actualWSRange then
        return true
    else
        return false
    end
end
