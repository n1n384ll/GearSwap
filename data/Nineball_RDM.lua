--include('organizer-lib')
include('custom_helpers')

function get_sets() 

    macc_int_cape = { name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}}
    mnd_macc_cape = { name="Sucellos's Cape", augments={'MND+30','Mag. Acc+20 /Mag. Dmg.+20',}}

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
        ammo="Homiliary",
        head="Viti. Chapeau +1",
        neck="Loricate Torque +1",
        left_ear="Infused earring",
        right_ear="Colossus's earring",
        body="Jhakri Robe +2",
        hands="Aya. Manopolas +2",
        left_ring="Shneddick ring",
        right_ring="Warp ring",
        back="Shadow mantle",
        waist="Fucho-no-obi",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1"
    }

    sets.dt = {
        ammo="Demonry Stone",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Loricate Torque +1",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.refresh = {
        ammo="Homiliary",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Jhakri Robe +2",
        hands="Serpentes Cuffs",
        legs={ name="Stearc Subligar", augments={'"Refresh"+1','MP recovered while healing +1',}},
        feet="Serpentes Sabots",
        waist="Fucho-no-Obi",
    }

    sets.melee = {
        -- ammo="Demonry Core",
        ammo="Paeapua",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Iqabi Necklace",
        waist="Windbuffet Belt",
        left_ear="Steelflash Earring",
        right_ear="Bladeborn Earring",
        left_ring="Ayanmo Ring",
        right_ring="Enlivened Ring",
        back="Letalis Mantle",
    }

    sets.dw = set_combine(sets.melee, {
        left_ear="Dudgeon earring",
        right_ear="Heartseeker earring"
    })

    --enspell melee
    sets.melee_enspell = {
        -- ammo="Demonry Core",
        ammo="Paeapua",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Viti. Tights +1",
        feet="Aya. Gambieras +1",
        neck="Iqabi Necklace",
        waist="Sailfi Belt",
        left_ear="Brutal Earring",
        right_ear="Hollow Earring",
        left_ring="Ayanmo Ring",
        right_ring="Enlivened Ring",
        back="Letalis Mantle",
    }

    sets.dw_enspell = set_combine(sets.melee_enspell, {
        -- left_ear="Dudgeon earring",
        -- right_ear="Heartseeker earring",
        left_ear="Suppanomimi"
    })

--------- Pre Casts ---------

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Atrophy chapeau +1",
        neck="Orunmila's torque",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Viti. Tabard +1",
        hands="Gendewitha gages",
        left_ring="Veneficium ring",
        right_ring="Prolix ring",
        back="Ogapepo cape",
        waist="Witful belt",
        legs="Aya. Cosciales +1",
        feet={ name="Merlinic Crackows", augments={'Accuracy+20','"Fast Cast"+1','Accuracy+6 Attack+6',}},
    }

    sets.precast.fc_cure = set_combine(sets.precast.fc, {
        back="Pahtli Cape"
    })

    sets.precast.fc_enhancing = set_combine(sets.precast.fc, {
        waist="Siegel Sash"
    })

    sets.precast.fc_feeb = set_combine(sets.precast.fc, {
        head="Leth. Chappel +1"
    })

    sets.precast.utsusemi = set_combine(sets.precast.fc, {
        neck="Magoraga Beads"
    })

    sets.precast.impact = set_combine(sets.precast.fc, {
        body="Twilight Cloak"
    })

--------- Mid Casts ---------

    sets.midcast = {}

    sets.midcast.cure_potency = {
        ammo="Esper Stone",
        head="Vanya Hood",
        body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Bokwus Gloves", augments={'Mag. Acc.+9','MND+6','INT+2',}},
        legs="Atrophy Tights +1",
        feet={ name="Merlinic Crackows", augments={'Accuracy+20','"Fast Cast"+1','Accuracy+6 Attack+6',}},
        neck="Phalaina Locket",
        waist="Rumination Sash",
        left_ear="Gifted Earring",
        right_ear="Loquac. Earring",
        left_ring="Asklepian Ring",
        right_ring="Sirona's Ring",
        back="Ghostfyre Cape",
    }

    sets.midcast.enhancing = {
        ammo="Esper Stone",
        head="Befouled Crown",
        body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Viti. Gloves +1", augments={'Enhancing Magic duration',}},
        -- legs="Viti. Tights +1",
        legs="Atrophy Tights +1",
        feet="Leth. Houseaux +1",
        neck="Melic Torque",
        waist="Olympus Sash",
        left_ear="Mimir Earring",
        right_ear="Augment. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Estoqueur's Cape"
    }

    sets.midcast.enhancing_duration = {
        ammo="Impatiens",
        head="Atro. Chapeau +1",
        body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
        hands="Atrophy Gloves +1",
        legs="Aya. Cosciales +1",
        feet="Leth. Houseaux +1",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Sheltered Ring",
        right_ring="Prolix Ring",
        back=macc_int_cape
    }

    sets.stoneskin = set_combine(sets.midcast.enhancing, {
        neck="Stone Gorget",
        right_ear="Earthcry Earring",
        waist="Siegel Sash",
        hands="Stone Mufflers",
        legs="Shedir Seraweels"
    })

    sets.aquaveil = set_combine(sets.midcast.enhancing, {
        legs="Shedir Seraweels"  
    })

    sets.midcast.buff_other_duration = {
        ammo="Esper Stone",
        head="Leth. Chappel +1",
        body="Lethargy Sayon +1",
        hands="Atrophy Gloves +1",
        legs="Leth. Fuseau +1",
        feet="Leth. Houseaux +1",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=macc_int_cape
    }

    sets.midcast.nuke = {
        ammo="Witchstone",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Eddy Necklace",
        waist="Refoccilation Stone",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Jhakri Ring",
        right_ring="Strendu Ring",
        back=macc_int_cape
    }

    sets.midcast.impact = {
        ammo="Witchstone",
        body="Twilight Cloak",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Eddy Necklace",
        waist="Othila Sash",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Jhakri Ring",
        right_ring="Strendu Ring",
        back=macc_int_cape
    }

    -- Dia - TH / Feeb Magic Effect + / Duration
    sets.midcast.dia = {
        ammo="Impatiens",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Lethargy Sayon +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +1",
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},
        neck="Loricate Torque +1",
        waist="Chaac Belt",
        left_ear="Infused Earring",
        right_ear="Gifted Earring",
        left_ring="Archon Ring",
        right_ring="Shadow Ring",
        back=mnd_macc_cape
    }

    -- Bio - TH / Dark Magic Skill
    sets.midcast.bio = {
        ammo="Impatiens",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Jhakri Robe +2",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +1",
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},
        neck="Deceiver's Torque",
        waist="Chaac Belt",
        left_ear="Dark Earring",
        right_ear="Gifted Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back="Merciful Cape",
    }

    -- Silence - Macc / MND / Duration
    -- Inundation - Macc / MND / Duration
    sets.midcast.macc_mnd = {
        ammo="Quartz Tathlum +1",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Jhakri Robe +2",
        hands="Leth. Gantherots +1",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet="Jhakri Pigaches +2",
        neck="Henic Torque",
        waist="Rumination Sash",
        left_ear="Vor Earring",
        right_ear="Estq. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=mnd_macc_cape
    }

    -- Dispel - Macc / INT
    -- Break - Macc / INT / Duration
    -- Bind - Macc / INT / Duration
    -- Sleeps - Macc / INT / Duration
    -- Gravs - Macc / INT / Duration / Feeb Magic Effect + (combine leth sayon)
    sets.midcast.macc_int = {
        ammo="Quartz Tathlum +1",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet="Jhakri Pigaches +2",
        neck="Henic Torque",
        waist="Rumination Sash",
        left_ear="Vor Earring",
        right_ear="Estq. Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=macc_int_cape
    }

    -- Distract - Feeb skill (610) / MND / Macc
    -- Frazzle - Feeb skill (610) / MND / Macc
    sets.midcast.feeb_mnd_macc = {
        ammo="Quartz Tathlum +1",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Atrophy Tabard +1",
        hands="Leth. Gantherots +1",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
        neck="Henic Torque",
        waist="Rumination Sash",
        left_ear="Vor Earring",
        right_ear="Enfeebling Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=mnd_macc_cape
    }

    -- Poison - Feeb Skill / Macc / INT
    sets.midcast.feeb_macc_int = {
        ammo="Quartz Tathlum +1",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Atrophy Tabard +1",
        hands="Leth. Gantherots +1",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
        neck="Henic Torque",
        waist="Rumination Sash",
        left_ear="Vor Earring",
        right_ear="Enfeebling Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=macc_int_cape
    }

    -- Para - MND / Macc / Duration
    -- Slow - MND / Macc / Duration
    -- Addle - MND / Macc / Duration
    sets.midcast.mnd_macc = {
        ammo="Quartz Tathlum +1",
        head="Befouled Crown",
        body="Lethargy Sayon +1",
        hands="Leth. Gantherots +1",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
        neck="Henic Torque",
        waist="Rumination Sash",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=mnd_macc_cape
    }

    -- Blind - INT / Macc / Duration
    sets.midcast.int_macc = {
        ammo="Quartz Tathlum +1",
        head="Jhakri Coronal +1",
        body="Lethargy Sayon +1",
        hands="Jhakri Cuffs +2",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet="Jhakri Pigaches +2",
        neck="Henic Torque",
        waist="Rumination Sash",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=macc_int_cape
    }

    sets.midcast.utsusemi = {
        ammo="Impatiens",
        head="Atro. Chapeau +1",
        body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Aya. Cosciales +1",
        feet={ name="Merlinic Crackows", augments={'Accuracy+20','"Fast Cast"+1','Accuracy+6 Attack+6',}},
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Swith Cape",
    }


--- WS and JA stuffs ---
    sets.ws = {
        ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Aya. Manopolas +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Iqabi Necklace",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    -- STR50 MND50 mod
    sets.ws['Savage Blade'] = {
        ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Apate Ring",
        back="Letalis Mantle",
    }

    -- sets.ws['Death Blossom'] = {
    --     ammo="Impatiens",
    --     head=empty,
    --     body=empty,
    --     hands=empty,
    --     legs=empty,
    --     feet=empty,
    --     neck=empty,
    --     waist=empty,
    --     left_ear=empty,
    --     right_ear=empty,
    --     left_ring=empty,
    --     right_ring=empty,
    --     back=empty,
    -- }

    -- MND50, STR30 mod
    sets.ws['Death Blossom'] = {
        ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear="Brutal Earring",
        left_ring="Rufescent Ring",
        right_ring="Apate Ring",
        back="Letalis Mantle",
    }

    -- DEX80 mod
    sets.ws['Chant du Cygne'] = {
        ammo="Demonry Core",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Aya. Manopolas +2",
        legs="Viti. Tights +1",
        feet="Aya. Gambieras +1",
        neck="Light Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear="Moonshade Earring",
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",  
    }

    -- STR100 mod 
    sets.ws['Circle Blade'] = {
        ammo="Demonry Core",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Asperity Necklace",
        waist="Aqua Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Apate Ring",
        back="Letalis Mantle"
    }

    -- INT, MAB, MND50, STR30 mod
    sets.ws['Sanguine Blade'] = {
        ammo="Witchstone",
        head="Pixie Hairpin +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +2",
        neck="Eddy Necklace",
        waist="Refoccilation Stone",
        left_ear="Friomisi Earring",
        right_ear="Novio Earring",
        left_ring="Acumen Ring",
        right_ring="Archon Ring",
        back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
    }

    -- MND85 mod - MND Based Build - test balance with STR?
    sets.ws['Requiescat'] = {
        ammo="Quartz Tathlum +1",
        head="Befouled Crown",
        body="Lethargy Sayon +1",
        hands="Jhakri Cuffs +2",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},
        neck="Shadow Gorget",
        waist="Shadow Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Rufescent Ring",
        right_ring="Stikini Ring",
        back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20',}},
    }

    sets.convert = {
        ammo="Demonry Stone",
        head="Nahtirah Hat",
        body="Viti. Tabard +1",
        hands="Otomi Gloves",
        legs="Leth. Fuseau +1",
        feet="Atrophy Boots +1",
        neck="Orunmila's Torque",
        waist="Mujin Obi",
        left_ear="Influx Earring",
        right_ear="Gifted Earring",
        left_ring="Sangoma Ring",
        right_ring="Prolix Ring",
        back="Pahtli Cape",
    }

end

function pretarget(spell)
end

function precast(spell)
    -- windower.add_to_chat("precast : spell.type =  " .. spell.type)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
            cancel_spell() return
    end

    --- Curing FC ----
    if spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.precast.fc_cure)

    --- Enhancing FC --- 
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.precast.fc_enhancing)

    --- Enfeebling FC ---
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.precast.fc_feeb)

    --- Elemental FC ---
    elseif spell.skill == 'Elemental Magic' then
        if spell.name == "Impact" then
            equip(sets.precast.impact)
        else 
            equip(sets.precast.fc)
        end
    --- Dark FC ---
    elseif spell.skill == 'Dark Magic' then
        equip(sets.precast.fc)

    --- Ninjutsu (Utsusemi) ---
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi'
        then equip(sets.precast.utsusemi)

    --- Weaponskills ---
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end

    elseif spell.type == 'JobAbility' then 
        if spell.name == 'Convert' then
            equip(sets.convert)
        elseif spell.name == 'Chainspell' then
            windower.add_to_chat("I'VE GOT BLISTAHZ ON MAH FINGAHZ")
            equip({body="Viti. Tabard +1"})
        else
            --noop
        end

    --- General FC for magic ---
    elseif spell.type ~= 'WeaponSkill' then
        equip(sets.precast.fc)

    else
        --noop
    end
end


function midcast(spell)
    -- windower.add_to_chat("midcast : spell.type =  " .. spell.type)
    if spell.type == "Item" then return end
    -- windower.add_to_chat(tostring(player.tp))

    --- Healing Potency Midcast ---
    if spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.midcast.cure_potency)

    --- Enhancing Midcast ---
    elseif spell.skill == 'Enhancing Magic' then
        --- Enhancing Skill Max ---
        if spell.target.type == 'SELF' then
            if string.match(spell.name, "Refresh") then
                equip(set_combine(sets.midcast.enhancing_duration, {legs="Leth. Fuseau +1"}))
            elseif string.match(spell.name, "Haste") or 
                string.match(spell.name, "Regen") then
                equip(sets.midcast.enhancing_duration)
            elseif spell.name == "Stoneskin" then
                equip(sets.stoneskin)
            elseif spell.name == "Aquaveil" then
                equip(sets.aquaveil)
            else
                equip(sets.midcast.enhancing)
            end
        --- Enhancing Others ---
        else
            if spell.name == "Phalanx II" then
                equip(sets.midcast.enhancing)
            else
                equip(sets.midcast.buff_other_duration)
            end
        end

    --- Enfeebling Midcast ---
    elseif spell.skill == 'Enfeebling Magic' then
        if string.match(spell.name, "Dia") then
            equip(sets.midcast.dia)
        elseif spell.name == 'Silence' or 
            spell.name == 'Inundation' then
            equip(sets.midcast.macc_mnd)
        elseif string.match(spell.name, "Dispel") or
            spell.name == "Break" or
            spell.name == "Bind" or
            string.match(spell.name, "Sleep") or
            string.match(spell.name, "Gravity") then
            equip(sets.midcast.macc_int)
        elseif string.match(spell.name, "Distract") or
            string.match(spell.name, "Frazzle") then
            equip(sets.midcast.feeb_mnd_macc)
        elseif string.match(spell.name, "Poison") then
            equip(sets.midcast.feeb_macc_int)
        elseif string.match(spell.name, "Paralyze") or
            string.match(spell.name, "Slow") or
            string.match(spell.name, "Addle") then
            equip(sets.midcast.mnd_macc)
        elseif string.match(spell.name, "Blind") then
            equip(sets.midcast.int_macc)
        else
            windower.add_to_chat("NEVER SHOULD HAVE COME HERE " .. spell.name)
            equip(sets.midcast.macc_int)
        end
        if buffactive['Saboteur'] then
            equip({hands = "Leth. Gantherots +1"})
        end

    --- Elemental Midcast ---
    elseif spell.skill == 'Elemental Magic' then
        if spell.name == "Impact" then
            equip(sets.midcast.impact)
        else
            equip(sets.midcast.nuke)
        end

    --- Dark Midcast ---
    elseif spell.skill == 'Dark Magic' then
        if string.match(spell.name, "Bio") then
            equip(sets.midcast.bio)
        else -- TODO : Proper drain/aspir set
            equip(sets.midcast.nuke)
        end
        

    --- Ninjutsu Midcast (for recast time) --- 
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.midcast.utsusemi)

    --- Weaponskills Midcast (just to be sure) ---
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.name] ~= nil then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end

    else 
        -- noop
    end

end

function aftercast(spell)
    -- windower.add_to_chat("aftercast : spell.type =  " .. spell.type)
    if spell.type == 4 then return end
    idleCheck()
end

function status_change(new, old)
    idleCheck()
end

function buff_change(name, gain, buff_details)
    idleCheck()
end

function buff_refresh(name, buff_details) 
    idleCheck()
end
