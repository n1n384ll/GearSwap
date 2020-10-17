--include('organizer-lib')
include('custom_helpers')

dark_ring = { name="Dark Ring", augments={'Magic dmg. taken -3%','Phys. dmg. taken -4%','Breath dmg. taken -3%'}}
macc_int_cape = { name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10'}}
mnd_macc_cape = { name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10'}}

function get_sets() 


    sets.idle = {
        ammo="Hedgehog Bomb",
        head="Wayfarer Circlet",
        body="Wayfarer Robe",
        hands="Wayfarer Cuffs",
        legs="Wayfarer Slops",
        feet="Wayfarer Clogs",
        neck="Beak Necklace",
        waist="Hierarch Belt",
        left_ear="Gwati Earring",
        right_ear="Phantom Earring",
        left_ring="Serket Ring",
        right_ring="Ether Ring",
        back="Engulfer Cape",
    }

    sets.dt = {
        ammo="Hedgehog Bomb",
        head="Lithelimb Cap",
        body="Vanya Robe",
        hands="Chironic Gloves",
        legs="Miasmic Pants",
        feet="Kandza Crackows",
        neck="Beak Necklace",
        waist="Hierarch Belt",
        left_ear="Gwati Earring",
        right_ear="Assuage Earring",
        left_ring="Vertigo Ring",
        right_ring="Crimson Ring",
        back="Refraction Cape",
    }

    sets.refresh = {
        head="Wayfarer Circlet",
        body="Wayfarer Robe",
        hands="Wayfarer Cuffs",
        legs="Wayfarer Slops",
        feet="Wayfarer Clogs",
    }

    sets.melee = {
        ammo="Thunder Sachet",
        head="Despair Helm",
        body="Vanya Robe",
        hands="Chironic Gloves",
        legs="Miasmic Pants",
        feet="Umbani Boots",
        neck="Iqabi Necklace",
        waist="Goading Belt",
        left_ear="Assuage Earring",
        right_ear="Steelflash Earring",
        left_ring="Cacoethic Ring",
        right_ring="Adler Ring",
        back="Bleating Mantle",
    }

--------- Pre Casts ---------

    sets.precast = {}

    sets.precast.fc = {
        ammo="Hedgehog Bomb",
        head="Welkin Crown",
        body="Vanya Robe",
        hands="Chironic Gloves",
        legs="Gyve Trousers",
        feet="Helios Boots",
        neck="Inq. Bead Necklace",
        waist="Goading Belt",
        left_ear="Gwati Earring",
        right_ear="Phantom Earring",
        left_ring="Vertigo Ring",
        right_ring="Jelly Ring",
        back="Dew Silk Cape",
    }

    sets.precast.fc_cure = set_combine(sets.precast.fc, {
        -- back="Pahtli Cape"
    })

    sets.precast.fc_enhancing = set_combine(sets.precast.fc, {
        -- waist="Siegel Sash"
    })

    sets.precast.fc_feeb = set_combine(sets.precast.fc, {
        -- head="Leth. Chappel +1"
    })

    sets.precast.utsusemi = set_combine(sets.precast.fc, {
        -- neck="Magoraga Beads"
    })

    sets.precast.impact = set_combine(sets.precast.fc, {
        -- body="Twilight Cloak"
    })


    --------- Mid Casts ---------

    sets.midcast = {}

    sets.midcast.cure_potency = {
        ammo="Hedgehog Bomb",
        head="Welkin Crown",
        body="Vanya Robe",
        hands="Telchine Gloves",
        legs="Gyve Trousers",
        feet="Umbani Boots",
        neck="Inq. Bead Necklace",
        waist="Witch Sash",
        left_ear="Gwati Earring",
        right_ear="Phantom Earring",
        left_ring="Vertigo Ring",
        right_ring="Perception Ring",
        back="Dew Silk Cape",
    }

    sets.midcast.enhancing = {
        ammo="Hedgehog Bomb",
        head="Welkin Crown",
        body="Vanya Robe",
        hands="Chironic Gloves",
        legs="Warlock's Tights",
        feet="Umbani Boots",
        neck="Inq. Bead Necklace",
        waist="Goading Belt",
        left_ear="Gwati Earring",
        right_ear="Phantom Earring",
        left_ring="Vertigo Ring",
        right_ring="Perception Ring",
        back="Refraction Cape",
    }

    sets.midcast.enh_dur_self = sets.midcast.enhancing
    -- {
    --     ammo="Hasty Pinion +1",
    --     head="Telchine Cap",
    --     body="Telchine Chas.",
    --     hands="Atrophy Gloves +2",
    --     legs="Telchine Braconi",
    --     feet="Leth. Houseaux +1",
    --     neck="Orunmila's Torque",
    --     waist="Embla Sash",
    --     left_ear="Estq. Earring",
    --     right_ear="Loquac. Earring",
    --     left_ring="Sheltered Ring",
    --     right_ring="Prolix Ring",
    --     back=macc_int_cape
    -- }

    -- get 500 enhancing, then pump with phalanx+ and duration
    sets.midcast.phalanx_self = sets.midcast.enhancing
    -- {
    --     ammo="Hasty Pinion +1",
    --     head={ name="Taeon Chapeau", augments={'Phalanx +3',}},
    --     body={ name="Taeon Tabard", augments={'Phalanx +3',}},
    --     hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
    --     legs={ name="Taeon Tights", augments={'Phalanx +3',}},
    --     feet="Leth. Houseaux +1",
    --     neck="Orunmila's Torque",
    --     waist="Embla Sash",
    --     left_ear="Mimir Earring",
    --     right_ear="Loquac. Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
    -- }

    sets.stoneskin = sets.midcast.enhancing
    -- set_combine(sets.midcast.enhancing, {
    --     neck="Stone Gorget",
    --     right_ear="Earthcry Earring",
    --     waist="Siegel Sash",
    --     hands="Stone Mufflers",
    --     legs="Shedir Seraweels"
    -- })

    sets.aquaveil = set_combine(sets.midcast.enhancing, {
        head="Chironic Hat",
        -- legs="Shedir Seraweels",
    })

    sets.midcast.enh_dur_other = sets.midcast.enhancing
    -- {
    --     ammo="Hasty Pinion +1",
    --     head="Leth. Chappel +1",
    --     body="Lethargy Sayon +1",
    --     hands="Atrophy Gloves +2",
    --     legs="Leth. Fuseau +1",
    --     feet="Leth. Houseaux +1",
    --     neck="Orunmila's Torque",
    --     waist="Embla Sash",
    --     left_ear="Mimir Earring",
    --     right_ear="Loquac. Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=macc_int_cape
    -- }

    sets.midcast.nuke = {
        ammo="Hedgehog Bomb",
        head="Welkin Crown",
        body="Psycloth Vest",
        hands="Chironic Gloves",
        legs="Gyve Trousers",
        feet="Umbani Boots",
        neck="Satlada Necklace",
        waist="Witch Sash",
        left_ear="Strophadic Earring",
        right_ear="Moldavite Earring",
        left_ring="Vertigo Ring",
        right_ring="Perception Ring",
        back="Refraction Cape",
    }

    -- sets.midcast.impact = {
    --     ammo="Ombre Tathlum",
    --     body="Twilight Cloak",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Duelist's Torque",
    --     waist="Porous Rope",
    --     left_ear="Estq. Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=macc_int_cape
    -- }

    sets.midcast.drain_aspir = sets.midcast.nuke
    -- {
    --     ammo="Ombre Tathlum",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Duelist's Torque",
    --     waist="Fucho-no-Obi",
    --     left_ear="Estq. Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Evanescence Ring",
    --     right_ring="Archon Ring",
    --     back=macc_int_cape
    -- }

    -- Dia - TH / Feeb Magic Effect + / Duration
    sets.midcast.dia = {
        -- ammo="Impatiens",
        -- head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        -- body="Lethargy Sayon +1",
        -- hands="Aya. Manopolas +2",
        -- legs="Aya. Cosciales +2",
        -- feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},
        -- neck="Duelist's Torque",
        -- waist="Chaac Belt",
        -- left_ear="Infused Earring",
        -- right_ear="Gifted Earring",
        -- left_ring="Archon Ring",
        -- right_ring="Shadow Ring",
        -- back=mnd_macc_cape
    }

    -- Bio - TH / Dark Magic Skill
    sets.midcast.bio = {
        -- ammo="Impatiens",
        -- head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        -- body="Jhakri Robe +2",
        -- hands="Aya. Manopolas +2",
        -- legs="Aya. Cosciales +2",
        -- feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},
        -- neck="Incanter's Torque",
        -- waist="Chaac Belt",
        -- left_ear="Gifted Earring",
        -- right_ear="Dark Earring",
        -- left_ring="Evanescence Ring",
        -- right_ring="Stikini Ring",
        -- back="Merciful Cape",
    }

    sets.feeb = {
        ammo="Flame Sachet",
        head="Chironic Hat",
        body="Vanya Robe",
        hands="Chironic Gloves",
        legs="Miasmic Pants",
        feet="Kandza Crackows",
        neck="Enfeebling Torque",
        waist="Witch Sash",
        left_ear="Gwati Earring",
        right_ear="Strophadic Earring",
        left_ring="Vertigo Ring",
        right_ring="Perception Ring",
        back="Refraction Cape",
    }


    -- Silence - Macc / MND / Duration
    -- Inundation - Macc / MND / Duration
    sets.midcast.macc_mnd = sets.feeb
    -- {
    --     ammo="Quartz Tathlum +1",
    --     head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    --     body="Atrophy Tabard +2",
    --     hands="Leth. Gantherots +1",
    --     legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
    --     feet="Jhakri Pigaches +2",
    --     neck="Duelist's Torque",
    --     waist="Rumination Sash",
    --     left_ear="Vor Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=mnd_macc_cape
    -- }

    -- Dispel - Macc / INT
    -- Break - Macc / INT / Duration
    -- Bind - Macc / INT / Duration
    -- Sleeps - Macc / INT / Duration
    -- Gravs - Macc / INT / Duration / Feeb Magic Effect + (combine leth sayon)
    sets.midcast.macc_int = sets.feeb
    -- {
    --     ammo="Quartz Tathlum +1",
    --     head="Jhakri Coronal +2",
    --     body="Atrophy Tabard +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Duelist's Torque",
    --     waist="Rumination Sash",
    --     left_ear="Vor Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=macc_int_cape
    -- }

    sets.midcast.stun = sets.feeb
    -- {
    --     ammo="Ombre Tathlum",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Duelist's Torque",
    --     waist="Porous Rope",
    --     left_ear="Dark Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=macc_int_cape
    -- }

    -- Distract - Feeb skill (610) / MND / Macc
    -- Frazzle - Feeb skill (610) / MND / Macc
    sets.midcast.feeb_mnd_macc = sets.feeb
    -- {
    --     ammo="Quartz Tathlum +1",
    --     head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    --     body="Atrophy Tabard +2",
    --     hands="Leth. Gantherots +1",
    --     legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
    --     feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
    --     neck="Incanter's Torque",
    --     waist="Rumination Sash",
    --     left_ear="Vor Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=mnd_macc_cape
    -- }

    -- Poison - Feeb Skill / Macc / INT
    sets.midcast.feeb_macc_int = sets.feeb
    -- {
    --     ammo="Quartz Tathlum +1",
    --     head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    --     body="Atrophy Tabard +2",
    --     hands="Leth. Gantherots +1",
    --     legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
    --     feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
    --     neck="Incanter's Torque",
    --     waist="Rumination Sash",
    --     left_ear="Vor Earring",
    --     right_ear="Enfeebling Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=macc_int_cape
    -- }

    -- Para - MND / Macc / Duration
    -- Slow - MND / Macc / Duration
    -- Addle - MND / Macc / Duration
    sets.midcast.mnd_macc = sets.feeb
    -- {
    --     ammo="Quartz Tathlum +1",
    --     head="Befouled Crown",
    --     body="Lethargy Sayon +1",
    --     hands="Leth. Gantherots +1",
    --     legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
    --     feet={ name="Vitiation Boots +1", augments={'Immunobreak Chance',}},
    --     neck="Phalaina Locket",
    --     waist="Rumination Sash",
    --     left_ear="Lifestorm Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Stikini Ring",
    --     right_ring="Stikini Ring",
    --     back=mnd_macc_cape
    -- }

    -- Blind - INT / Macc / Duration
    sets.midcast.int_macc = sets.feeb
    -- {
    --     ammo="Ombre Tathlum",
    --     head="Jhakri Coronal +2",
    --     body="Lethargy Sayon +1",
    --     hands="Jhakri Cuffs +2",
    --     legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
    --     feet="Jhakri Pigaches +2",
    --     neck="Incanter's Torque",
    --     waist="Rumination Sash",
    --     left_ear="Psystorm Earring",
    --     right_ear="Snotra Earring",
    --     left_ring="Shiva Ring",
    --     right_ring="Acumen Ring",
    --     back=macc_int_cape
    -- }

    -- sets.midcast.utsusemi = {
    --     ammo="Impatiens",
    --     head="Atro. Chapeau +1",
    --     body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
    --     hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    --     legs="Aya. Cosciales +2",
    --     feet={ name="Merlinic Crackows", augments={'Accuracy+20','"Fast Cast"+1','Accuracy+6 Attack+6',}},
    --     neck="Orunmila's Torque",
    --     waist="Sailfi Belt +1",
    --     left_ear="Estq. Earring",
    --     right_ear="Loquac. Earring",
    --     left_ring="Veneficium Ring",
    --     right_ring="Prolix Ring",
    --     back="Ogapepo Cape",
    -- }

--- WS and JA stuffs ---
    sets.ws = {
        ammo="Hedgehog Bomb",
        head="Welkin Crown",
        body="Vanya Robe",
        hands="Chironic Gloves",
        legs="Miasmic Pants",
        feet="Kandza Crackows",
        neck="Iqabi Necklace",
        waist="Witch Sash",
        left_ear="Bladeborn Earring",
        right_ear="Steelflash Earring",
        left_ring="Vertigo Ring",
        right_ring="Crimson Ring",
        back="Refraction Cape",
    }

    -- STR50 MND50 mod
    -- sets.ws['Savage Blade'] = {
    --     ammo="Paeapua",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Fotia Gorget",
    --     waist="Windbuffet Belt",
    --     left_ear="Ishvara Earring",
    --     right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    --     left_ring="Rufescent Ring",
    --     right_ring="Apate Ring",
    --     back="Letalis Mantle",
    -- }

    -- MND50, STR30 mod
    -- sets.ws['Death Blossom'] = {
    --     ammo="Paeapua",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Fotia Gorget",
    --     waist="Windbuffet Belt",
    --     left_ear="Ishvara Earring",
    --     right_ear="Brutal Earring",
    --     left_ring="Rufescent Ring",
    --     right_ring="Apate Ring",
    --     back="Letalis Mantle",
    -- }

    -- DEX80 mod
    -- sets.ws['Chant du Cygne'] = {
    --     ammo="Demonry Core",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Aya. Manopolas +2",
    --     legs="Viti. Tights +1",
    --     feet="Aya. Gambieras +1",
    --     neck="Fotia Gorget",
    --     waist="Windbuffet Belt",
    --     left_ear="Ishvara Earring",
    --     right_ear="Moonshade Earring",
    --     left_ring="Apate Ring",
    --     right_ring="Rajas Ring",
    --     back="Letalis Mantle",  
    -- }

    -- STR100 mod 
    -- sets.ws['Circle Blade'] = {
    --     ammo="Demonry Core",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Asperity Necklace",
    --     waist="Fotia Belt",
    --     left_ear="Ishvara Earring",
    --     right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    --     left_ring="Rufescent Ring",
    --     right_ring="Apate Ring",
    --     back="Letalis Mantle"
    -- }

    -- INT, MAB, MND50, STR30 mod
    -- sets.ws['Sanguine Blade'] = {
    --     ammo="Witchstone",
    --     head="Pixie Hairpin +1",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Eddy Necklace",
    --     waist="Refoccilation Stone",
    --     left_ear="Friomisi Earring",
    --     right_ear="Novio Earring",
    --     left_ring="Acumen Ring",
    --     right_ring="Archon Ring",
    --     back=macc_int_cape
    -- }

    -- sets.ws['Red Lotus Blade'] = {
    --     ammo="Witchstone",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Eddy Necklace",
    --     waist="Refoccilation Stone",
    --     left_ear="Friomisi Earring",
    --     right_ear="Novio Earring",
    --     left_ring="Acumen Ring",
    --     right_ring="Strendu Ring",
    --     back=macc_int_cape
    -- }

    -- MND85 mod - MND Based Build - test balance with STR?
    -- sets.ws['Requiescat'] = {
    --     ammo="Quartz Tathlum +1",
    --     head="Befouled Crown",
    --     body="Lethargy Sayon +1",
    --     hands="Jhakri Cuffs +2",
    --     legs={ name="Psycloth Lappas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}},
    --     feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+9','Pet: DEX+11','"Treasure Hunter"+2','Accuracy+15 Attack+15',}},
    --     neck="Fotia Gorget",
    --     waist="Fotia Belt",
    --     left_ear="Ishvara Earring",
    --     right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    --     left_ring="Rufescent Ring",
    --     right_ring="Stikini Ring",
    --     back=mnd_macc_cape
    -- }

    -- sets.ws['Shining Strike'] = {
    --     ammo="Quartz Tathlum +1",
    --     head="Jhakri Coronal +2",
    --     body="Jhakri Robe +2",
    --     hands="Jhakri Cuffs +2",
    --     legs="Jhakri Slops +2",
    --     feet="Jhakri Pigaches +2",
    --     neck="Eddy Necklace",
    --     waist="Refoccilation Stone",
    --     left_ear="Friomisi Earring",
    --     right_ear="Novio Earring",
    --     left_ring="Strendu Ring",
    --     right_ring="Acumen Ring",
    --     back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
    -- }

    sets.convert = {
        ammo="Hedgehog Bomb",
        head="Pixie Hairpin",
        body="Vanya Robe",
        hands="Telchine Gloves",
        legs="Helios Spats",
        feet="Umbani Boots",
        neck="Beak Necklace",
        waist="Hierarch Belt",
        left_ear="Gwati Earring",
        right_ear="Phantom Earring",
        left_ring="Serket Ring",
        right_ring="Ether Ring",
        back="Engulfer Cape",
    }

end

pre_dispel = ""
pre_convert = ""

function pretarget(spell)
    if spell.name == "Dispelga" then
        pre_dispel = player.equipment.main
        equip({main="Daybreak"})
    elseif spell.name == "Convert" then
        pre_convert = player.equipment.main
    end
end

function precast(spell)
    -- windower.add_to_chat("precast : spell.type =  " .. spell.type)
    if spell.type == "Item" then return end

    if outOfWeaponSkillRange(spell) then
            cancel_spell() return
    end

    -- windower.add_to_chat(spell.name)

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
            pre_convert = player.equipment.main
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
        -- windower.add_to_chat("Failover FC")

    else
        --noop
        windower.add_to_chat("NEVER SHOULDA COME HERE")
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
            if string.match(spell.name, "Phalanx") then
                -- Phalanx II caps at 500 enhancing, pump the rest with duration
                equip(sets.midcast.phalanx_self)
            elseif string.match(spell.name, "Haste") then 
                equip(sets.midcast.enh_dur_self)
            elseif string.match(spell.name, "Refresh") then
                equip(set_combine(sets.midcast.enh_dur_self,{
                    body="Atrophy Tabard +2",
                    legs="Leth. Fuseau +1"}))
            elseif string.match(spell.name, "Regen") then
                equip(set_combine(sets.midcast.enh_dur_self,{
                    hands={name="Telchine Gloves", augments={'"Regen" potency+3',}},
                }))
            elseif spell.name == "Stoneskin" then
                equip(sets.stoneskin)
            elseif spell.name == "Aquaveil" then
                equip(sets.aquaveil)
            elseif string.match(spell.name, "Bar") or
                string.match(spell.name, "Gain-") then
                equip(set_combine(sets.midcast.enhancing, 
                    {head={name="Telchine Cap", augments={'Enh. Mag. eff. dur. +8'}}
                }))
            else
                equip(sets.midcast.enhancing)
            end
        --- Enhancing Others ---
        else
            if spell.name == "Phalanx II" then
                -- Phalanx II caps at 500 enhancing, pump the rest with duration
                equip(sets.midcast.enh_dur_other)
            elseif string.match(spell.name, "Refresh") then
                equip(set_combine(sets.midcast.enh_dur_other, {
                    body="Atrophy Tabard +2",
                }))
            else
                equip(sets.midcast.enh_dur_other)
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
        elseif spell.name == "Stun" then
            equip(sets.midcast.stun)
        else -- Drain and Aspir
            equip(sets.midcast.drain_aspir)
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
    if spell.name == "Dispelga" and pre_dispel ~= "" then
        equip({main=pre_dispel})
        pre_dispel = ""
    elseif spell.name == "Convert" and pre_convert ~= "" then
        equip({main=pre_convert})
        pre_convert = ""
    end
    idleCheck()
end

function status_change(new, old)
    if player.equipment.body == "Twilight Cloak" then
        return
    end

    if new == "Resting" then
        equip(sets.refresh)
        return
    end
    idleCheck()
end

function buff_change(name, gain, buff_details)
    -- idleCheck()
end

function buff_refresh(name, buff_details) 
    -- idleCheck()
end
