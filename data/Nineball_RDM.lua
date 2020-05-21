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
        --main="",
        --sub="",
        --range="",
        ammo="Impatiens",
        head="Vitiation chapeau",
        neck="Twilight torque",
        left_ear="Infused earring",
        right_ear="Colossus's earring",
        body="Jhakri Robe",
        hands="Atrophy Gloves +1",
        left_ring="Shneddick ring",
        right_ring="Warp ring",
        back="Shadow mantle",
        waist="Fucho-no-obi",
        legs="Dashing Subligar",
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Song recast delay -3',}},
    }

    sets.dt = {
        ammo="Demonry Stone",
        head="Despair Helm",
        body="Vanya Robe",
        hands="Atrophy Gloves +1",
        legs="Dashing Subligar",
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Song recast delay -3',}},
        neck="Twilight Torque",
        waist="Glassblower's Belt",
        left_ear="Infused Earring",
        right_ear="Colossus's Earring",
        left_ring="Shneddick ring",
        right_ring={ name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%',}},
        back="Shadow Mantle",
    }

--------- Pre Casts ---------

    sets.precast = {}

    sets.precast.fc = {
        ammo="Impatiens",
        head="Atrophy chapeau +1",
        neck="Orunmila's torque",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Vitiation tabard",
        hands="Gendewitha gages",
        left_ring="Veneficium ring",
        right_ring="Prolix ring",
        back="Swith cape",
        waist="Witful belt",
        legs="Orvail Pants +1",
        feet="Merlinic crackows"
    }

    sets.precast.fc_cure = {
        ammo="Impatiens",
        head="Atrophy chapeau +1",
        neck="Orunmila's torque",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Heka's kalasiris",
        hands="Gendewitha gages",
        left_ring="Veneficium ring",
        right_ring="Prolix ring",
        back="Pahtli cape",
        waist="Witful Belt",
        legs="Orvail Pants +1",
        feet="Merlinic crackows"
    }

    sets.precast.fc_enhancing = {
        ammo="Impatiens",
        head="Atrophy chapeau +1",
        neck="Orunmila's torque",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Vitiation tabard",
        hands="Gendewitha gages",
        left_ring="Veneficium ring",
        right_ring="Prolix ring",
        back="Swith cape",
        waist="Siegel sash",
        legs="Orvail Pants +1",
        feet="Merlinic crackows"
    }

    sets.precast.fc_feeb = {
        ammo="Impatiens",
        head="Lethargy Chappel",
        body={ name="Vitiation Tabard", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Orvail Pants +1",
        feet={ name="Merlinic Crackows", augments={'Magic Damage +13','VIT+5','Mag. Acc.+6','"Mag.Atk.Bns."+15',}},
        neck="Orunmila's Torque",
        waist="Witful Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Swith Cape"
    }

    sets.precast.utsusemi = {
        ammo="Impatiens",
        head="Atro. Chapeau +1",
        body={ name="Vitiation Tabard", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -3%','Song spellcasting time -4%',}},
        legs="Orvail Pants +1",
        feet={ name="Merlinic Crackows", augments={'Magic Damage +13','VIT+5','Mag. Acc.+6','"Mag.Atk.Bns."+15',}},
        neck="Magoraga Beads",
        waist="Witful Belt",
        left_ear="Estq. Earring",
        right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Ogapepo Cape",
    }

--------- Mid Casts ---------

    sets.midcast = {}

    sets.midcast.cure_potency = {
        ammo="Impatiens",
        head="Vanya Hood",
        neck="Phalaina Locket",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Heka's kalasiris",
        hands="Bokwus gloves",
        left_ring="Asklepian ring",
        right_ring="Sirona's ring",
        back="Ghostfyre cape",
        waist="Witful Belt",
        legs="Atrophy tights +1",
        feet="Gendewitha galoshes +1"
    }

    sets.midcast.enhancing = {
        ammo="Impatiens",
        head="Atrophy chapeau +1",
        neck="Colossus's torque",
        left_ear="Augmenting earring",
        right_ear="Loquacious earring",
        body="Vitiation tabard",
        hands="Vitiation gloves",
        left_ring="Sheltered ring",
        right_ring="Prolix ring",
        back="Estoqueur's cape",
        waist="Olympus sash",
        legs="Atrophy tights +1",
        feet="Lethargy houseaux"
    }

    sets.midcast.buff_other = {
        ammo="Impatiens",
        head="Lethargy chapeau",
        neck="Orunmila's torque",
        left_ear="Estoqueur's earring",
        right_ear="Loquacious earring",
        body="Lethargy tabard",
        hands="Lethargy gloves",
        left_ring="Shneddick ring",
        right_ring="Prolix ring",
        back="Sucellos's cape",
        waist="Sailfi belt",
        legs="Lethargy fuseau",
        feet="Lethargy houseaux"
    }

    sets.midcast.nuke = {
        ammo="Witchstone",
        head="Jhakri Coronal +1",
        body="Jhakri Robe",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops",
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
        ammo="Esper Stone",
        head={ name="Vitiation Chapeau", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body="Jhakri Robe",
        hands="Jhakri Cuffs +1",
        legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
        feet="Jhakri Pigaches +1",
        neck="Weike Torque",
        waist="Ovate Rope",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring="Jhakri Ring",
        right_ring="Sangoma Ring",
        back={ name="Sucellos's Cape", augments={'Mag. Acc+20 /Mag. Dmg.+20',}}
    }

    sets.midcast.utsusemi = {
        ammo="Impatiens",
        head="Atro. Chapeau +1",
        body={ name="Vitiation Tabard", augments={'Enhances "Chainspell" effect',}},
        hands={ name="Bokwus Gloves", augments={'Mag. Acc.+9','MND+6','INT+2',}},
        legs="Orvail Pants +1",
        feet={ name="Merlinic Crackows", augments={'Magic Damage +13','VIT+5','Mag. Acc.+6','"Mag.Atk.Bns."+15',}},
        neck="Orunmila's Torque",
        waist="Sailfi Belt", left_ear="Estq. Earring", right_ear="Loquac. Earring",
        left_ring="Veneficium Ring",
        right_ring="Prolix Ring",
        back="Shadow Mantle",
    }


--- Misc. Melee and WS and JA stuffs ---
    sets.melee = {
        --main="",
        --sub="",
        --range="",
        ammo="Demonry Core",
        head="Jhakri coronal +1",
        neck="Iqabi necklace",
        left_ear="Dudgeon earring",
        right_ear="Heartseeker earring",
        body="Jhakri robe",
        hands="Jhakri cuffs +1",
        left_ring="Mars's ring",
        right_ring="Enlivened ring",
        back="Letalis mantle",
        waist="Sailfi belt",
        legs="Jhakri slops",
        feet="Jhakri pigaches +1"
    }

    sets.savage = {
        ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops",
        feet="Jhakri Pigaches +1",
        neck="Breeze Gorget",
        waist="Windbuffet Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Ambuscade Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle"
    }

    sets.death_blossom = {
         ammo="Paeapua",
        head="Jhakri Coronal +1",
        body="Jhakri Robe",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops",
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
        body="Jhakri Robe",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops",
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
        body="Pluviale",
        hands="Otomi Gloves",
        legs="Leth. Fuseau",
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

    --- Curing FC ----
    if  spell.name == 'Cure' or 
        spell.name == 'Cure II' or 
        spell.name == 'Cure III' or 
        spell.name == 'Cure IV' or
        spell.name == 'Curaga' or
        spell.name == 'Curaga II' or
        spell.name == 'Cura' then
        equip(sets.precast.fc_cure)

    --- Enhancing FC --- 
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.precast.fc_enhancing)

    --- Enfeebling FC ---
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.precast.fc_feeb)

    --- Elemental FC ---
    elseif spell.skill == 'Elemental Magic' then
        equip(sets.precast.fc)

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

    elseif spell.name == 'Convert' then
        equip(sets.convert)

    elseif spell.type == 'JobAbility' then 
        if spell.name == 'Convert' then
            equip(sets.convert)
        else
            --do nothing... for now
        end

    --- General FC ---
    else 
        equip(sets.precast.fc)

    end
end


function midcast(spell)

    --- Healing Potency Midcast ---
    if spell.name == 'Cure' or 
        spell.name == 'Cure II' or 
        spell.name == 'Cure III' or 
        spell.name == 'Cure IV' or
        spell.name == 'Curaga' or
        spell.name == 'Curaga II' or
        spell.name == 'Cura' then
        equip(sets.midcast.cure_potency)

    --- Enhancing Midcast ---
    elseif spell.skill == 'Enhancing Magic' then
        --- Enhancing Skill Max ---
        if spell.target.type == 'SELF' then
            equip(sets.midcast.enhancing)
        --- Enhancing Others ---
        else
            equip(sets.midcast.buff_other)
        end

    --- Enfeebling Midcast ---
    elseif spell.skill == 'Enfeebling Magic' then
        if buffactive['Saboteur'] then
            equip(set_combine(sets.midcast.feeb, {hands = "Leth. Gantherots"}))
        else
            equip(sets.midcast.feeb)
        end

    --- Elemental Midcast ---
    elseif spell.skill == 'Elemental Magic' then
        equip(sets.midcast.nuke)

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

    elseif spell.name == 'Convert' then
        equip(sets.convert)

    else 
        -- noop
    end

end

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
        equip(sets.dt)
    else
        equip(sets.idle)
    end
    --debug line - put the equip line after here to test set
    --equip(sets.midcast.enhancing)
end

function status_change(new, old)
    --print('staus_change ' .. new .. ' -> ' .. old)
    if player.status =='Engaged' then
        equip(sets.melee)
    elseif player.in_combat then
        equip(sets.dt)
    else
        equip(sets.idle)
    end
end
