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

enspells = {
    'Enfire',
    'Enfire II',
    'Enblizzard',
    'Enblizzard II',
    'Enaero',
    'Enaero II',
    'Enstone',
    'Enstone II',
    'Enthunder',
    'Enthunder II',
    'Enwater',
    'Enwater II'
}

ring_block = S{
    'Dim. Ring (Dem)',
    'Dim. Ring (Holla)',
    'Dim. Ring (Mea)',
    'Trizek Ring',
    'Capacity Ring',
    'Emperor Band',
    'Echad Ring',
    'Undecennial Ring',
    'Warp Ring'
}

function idleCheck()
    idleCheck(nil)
end

function idleCheck(playa)
    local set_to_equip = {}
    local has_ring_block = false

    if (ring_block:contains(player.equipment.right_ring)) then
        windower.add_to_chat("ring block on")
        has_ring_block = true
    end

    -- windower.add_to_chat("idleCheck()")
    if player.hpp < 10 and sets.ohshi ~= nil then
        set_to_equip = sets.ohshi
        -- equip(sets.ohshi)
        -- windower.add_to_chat("idleCheck() ohshi")
    elseif player.hpp < 69 then
        set_to_equip = sets.dt
        -- equip(sets.dt)
        windower.add_to_chat("--------- DT ON ---------")
    elseif player.status =='Engaged' then
        if canDualWield() and not isEnspellActive() then
            set_to_equip = sets.dw
            -- equip(sets.dw)
            -- windower.add_to_chat("canDualWield and !isEnspellActive")
        elseif canDualWield() and isEnspellActive() then
            set_to_equip = sets.dw_enspell
            -- equip(sets.dw_enspell)
            -- windower.add_to_chat("canDualWield and isEnspellActive")
        elseif not canDualWield() and not isEnspellActive() then
            set_to_equip = sets.melee
            -- equip(sets.melee)
            -- windower.add_to_chat("!canDualWield and !isEnspellActive")
        elseif not canDualWield() and isEnspellActive() then
            set_to_equip = sets.melee_enspell
            -- equip(sets.melee_enspell)
            -- windower.add_to_chat("!canDualWield and isEnspellActive")
        else
            windower.add_to_chat("NEVER SHOULDA COME HERE in idleCheck")
        end
    else
        set_to_equip = sets.idle
        -- equip(sets.idle)
        -- windower.add_to_chat("idleCheck() else idle")
    end

    if player.mpp < 9 and isMpUsingJob() then
        set_to_equip = set_combine(set_to_equip, sets.refresh) -- Make sure it only equips refresh gear to "layer" it over w/e should be idle
        windower.add_to_chat("--------- REFRESH ON ---------")
    end

    if has_ring_block then
        equip(set_to_equip, {right_ring=player.equipment.right_ring})
    else
        equip(set_to_equip)
    end
end


function canDualWield()
    if sets.dw == nil then
        return false
    end
    if (dual_wield_jobs:contains(player.main_job) or (player.sub_job == 'DNC' or player.sub_job == 'NIN')) then
        return true
    else
        return false
    end
end

function isMpUsingJob() 
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

function isEnspellActive()
    if sets.dw_enspell == nil or sets.melee_enspell == nil then
        -- windower.add_to_chat("enspell sets not defined")
        return false
    end
    for i, v in ipairs(enspells) do
        if buffactive[v] then
            return true
        end
    end
    return false
end

function self_command(c)
    if sets.turtle ~= nil and c == "turtle" then
        windower.add_to_chat("TURTLE ON")
        equip(sets.turtle)
        disable("ammo", "head", "body", "hands", "legs", "feet", "neck", "waist", "left_ear", "right_ear", "left_ring", "right_ring", "back")
    elseif c == "unlock" then
        windower.add_to_chat("UNLOCKED SLOTS")
        enable("ammo", "head", "body", "hands", "legs", "feet", "neck", "waist", "left_ear", "right_ear", "left_ring", "right_ring", "back")
    end
end
