--include('organizer-lib')
include('custom_helpers')

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
        ammo="Demonry Stone",
        head="Viti. Chapeau +1",
        neck="Twilight torque",
        left_ear="Infused earring",
        right_ear="Colossus's earring",
        body="Jhakri Robe +2",
        hands="Aya. Manopolas +1",
        left_ring="Shneddick ring",
        right_ring="Warp ring",
        back="Shadow mantle",
        waist="Fucho-no-obi",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1"
    }

    sets.dt = {
        ammo="Demonry Stone",
        head="Aya. Zucchetto",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +1",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Twilight Torque",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick Ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

    sets.melee = {
        ammo="Demonry Core",
        head="Aya. Zucchetto",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +1",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Iqabi Necklace",
        waist="Windbuffet Belt",
        left_ear="Steelflash Earring",
        right_ear="Bladeborn Earring",
        left_ring="Mars's Ring",
        right_ring="Enlivened Ring",
        back="Letalis Mantle",
    }

    sets.dw = set_combine(sets.melee, {
        left_ear="Dudgeon earring",
        right_ear="Heartseeker earring"
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
        waist="Lethargy Chappel"
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
        hands={ name="Vitiation Gloves", augments={'Enhancing Magic duration',}},
        legs="Atrophy Tights +1",
        feet="Leth. Houseaux +1",
        neck="Colossus's Torque",
        waist="Olympus Sash",
        left_ear="Augment. Earring",
        right_ear="Loquac. Earring",
        left_ring="Sheltered Ring",
        right_ring="Prolix Ring",
        back="Estoqueur's Cape",
    }

    sets.midcast.buff_other_duration = {
        ammo="Esper Stone",
        head="Lethargy Chappel",
        body="Lethargy Sayon +1",
        hands="Leth. Gantherots +1",
        legs="Leth. Fuseau +1",
        feet="Leth. Houseaux +1",
        neck="Orunmila's Torque",
        waist="Sailfi Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Sheltered Ring",
        right_ring="Prolix Ring",
        back="Estoqueur's Cape",
    }

    sets.midcast.nuke = {
        ammo="Witchstone",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +1",
        neck="Eddy Necklace",
        waist="Othila Sash",
        left_ear="Hecate's Earring",
        right_ear="Novio Earring",
        left_ring="Jhakri Ring",
        right_ring="Strendu Ring",
        back={ name="Sucellos's Cape", augments={'Mag. Acc+20 /Mag. Dmg.+20',}},
    }

    sets.midcast.impact = {
        ammo="Witchstone",
        body="Twilight Cloak",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +1",
        neck="Eddy Necklace",
        waist="Othila Sash",
        left_ear="Hecate's Earring",
        right_ear="Novio Earring",
        left_ring="Jhakri Ring",
        right_ring="Strendu Ring",
        back={ name="Sucellos's Cape", augments={'Mag. Acc+20 /Mag. Dmg.+20',}},
    }

    sets.midcast.feeb = {
        ammo="Quartz Tathlum +1",
        head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +1",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet="Jhakri Pigaches +1",
        neck="Weike Torque",
        waist="Rumination Sash",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Jhakri Ring",
        right_ring="Sangoma Ring",
        back={ name="Sucellos's Cape", augments={'Mag. Acc+20 /Mag. Dmg.+20',}}
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

    sets.savage = {
        ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +1",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Aquasoul Ring",
        right_ring="Aquasoul Ring",
        back="Letalis Mantle",
    }

    sets.death_blossom = {
        ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +1",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Apate Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
    }

    sets.circle_blade = {
        ammo="Demonry Core",
        head="Jhakri Coronal +1",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +1",
        neck="Asperity Necklace",
        waist="Aqua Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Pyrosoul Ring",
        right_ring="Pyrosoul Ring",
        back="Letalis Mantle"
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
    if spell.type == "Item" then return end


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
    elseif spell.name == 'Savage Blade' then
        equip(sets.savage)

    elseif spell.name == 'Death Blossom' then
        equip(sets.death_blossom)

    elseif spell.name == 'Circle Blade' then
        equip(sets.circle_blade)

    elseif spell.type == 'JobAbility' then 
        if spell.name == 'Convert' then
            equip(sets.convert)
        elseif spell.name == 'Chainspell' then
            windower.add_to_chat("I'VE GOT BLISTAHZ ON MAH FINGAHZ")
            equip({body="Viti. Tabard +1"})
        else
            --noop
        end

    --- General FC ---
    else 
        equip(sets.precast.fc)

    end
end


function midcast(spell)

    --- Healing Potency Midcast ---
    if spell.name:sub(1,3) == "Cur" and spell.name ~= "Cursna" then
        equip(sets.midcast.cure_potency)

    --- Enhancing Midcast ---
    elseif spell.skill == 'Enhancing Magic' then
        --- Enhancing Skill Max ---
        if spell.target.type == 'SELF' then
            if spell.name:sub(1,7) == "Refresh" then
                equip(set_combine(sets.precast.fc, {legs="Leth. Fuseau +1"}))
            elseif spell.name:sub(1,5) == "Haste" then
                equip(sets.precast.fc)
            elseif spell.name == "Stoneskin" then
                equip(set_combine(sets.midcast.enhancing, {right_ear = "Earthcry Earring", waist="Siegel Sash"}))
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
            equip(set_combine(sets.precast.fc, {feet={name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},waist="Chaac Belt"}))
        elseif buffactive['Saboteur'] or
            spell.type == 'WhiteMagic' then
            equip(set_combine(sets.midcast.feeb, {hands = "Leth. Gantherots +1"}))
        else
            equip(sets.midcast.feeb)
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
        equip(sets.midcast.nuke)    

    --- Ninjutsu Midcast (for recast time) --- 
    elseif spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        equip(sets.midcast.utsusemi)

    --- Weaponskills Midcast (just to be sure) ---
    elseif spell.name == 'Savage Blade' then
        equip(sets.savage)

    elseif spell.name == 'Death Blossom' then
        equip(sets.death_blossom)

    elseif spell.name == 'Circle Blade' then
        equip(sets.circle_blade)

    else 
        -- noop
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
