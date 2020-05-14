//To add a new item or remove an item, this is the file to do it.

local ITEMS = {}

    --[[Example]]--
--[[


ITEMS.licenciapistola = {
	["name"] = "Licencia de Pistolas Blasters",
	["model"] = "models/props_lab/clipboard.mdl",
	["description"] = "Licencia.",
	["width"] = 1,
	["category"] = "Permits",
	["height"] = 1,
	["chance"] = 0
}


--]]

--[[Tools]]--

ITEMS.tongs = {
	["name"] = "Tongs",
	["model"] = "models/mosi/fallout4/props/junk/tongs.mdl",
	["description"] = "Iron tongs.",
	["category"] = "Tools",
	["width"] = 1,
	["height"] = 2,
	["chance"] = 80
}

ITEMS.sewingkit = {
	["name"] = "Sewing kit",
	["model"] = "models/mosi/fallout4/props/junk/bobbypinbox.mdl",
	["description"] = "A basic sewing kit.",
	["category"] = "Tools",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 30
}

ITEMS.welder = {
	["name"] = "Welder",
	["model"] = "models/mosi/fallout4/props/junk/blowtorch.mdl",
	["description"] = "Combustion tool for the application of flame and heat for various applications, usually metallurgy.",
	["category"] = "Tools",
	["width"] = 1,
	["height"] = 2,
	["chance"] = 10
}

ITEMS.saw = {
	["name"] = "Saw",
	["model"] = "models/mosi/fallout4/props/junk/bonesaw.mdl",
	["description"] = "A somewhat sharp saw, useful for cutting certain materials.",
	["category"] = "Tools",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 60
}

ITEMS.pot = {
	["name"] = "Pot",
	["model"] = "models/mosi/fallout4/props/junk/pot.mdl",
	["description"] = "For cooking.",
	["category"] = "Tools",
	["width"] = 2,
	["height"] = 2,
	["chance"] = 70
}

ITEMS.fryingpan = {
	["name"] = "Frying pan",
	["model"] = "models/mosi/fallout4/props/junk/fryingpan.mdl",
	["description"] = "For cooking.",
	["category"] = "Tools",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 80
}

ITEMS.stewpot = {
	["name"] = "Stewpot",
	["model"] = "models/mosi/fallout4/props/junk/saucepan01.mdl",
	["description"] = "For cooking.",
	["category"] = "Tools",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 90
}
	
	--Workstations--

ITEMS.industrial_furnace = {
	["name"] = "Industrial furnace.",
	["model"] = "models/props_forest/furnace01.mdl",
	["description"] = "Used to melt metals and plastics.",
	["category"] = "Workstation",
	["width"] = 20,
	["height"] = 0,
	["chance"] = 0
}

ITEMS.worktable = {
	["name"] = "Work-table.",
	["model"] = "models/props_wasteland/controlroom_desk001b.mdl",
	["description"] = "Used to work metal, cloth, leather and plastic.",
	["category"] = "Workstation",
	["width"] = 20,
	["height"] = 0,
	["chance"] = 0
}

	--Scrap--

ITEMS.wood = {
	["name"] = "Wood",
	["model"] = "models/mosi/fallout4/props/junk/components/wood.mdl",
	["description"] = "A pair of wooden planks.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 60
}

ITEMS.steel = {
	["name"] = "Steel",
	["model"] = "models/mechanics/solid_steel/plank_4.mdl",
	["description"] = "A steel plank.",
	["category"] = "Scrap",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 40
}

ITEMS.ceramic = {
	["name"] = "Ceramic",
	["model"] = "models/mosi/fallout4/props/junk/components/ceramic.mdl",
	["description"] = "A pair of clay bricks for pottery.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 80
}

ITEMS.cloth = {
	["name"] = "Cloth",
	["model"] = "models/mosi/fallout4/props/junk/components/cloth.mdl",
	["description"] = "A roll of cloth.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 70
}

ITEMS.leather = {
	["name"] = "Leather",
	["model"] = "models/mosi/fallout4/props/junk/components/leather.mdl",
	["description"] = "A roll of leather.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 40
}

ITEMS.plastic = {
	["name"] = "Plastic",
	["model"] = "models/mosi/fallout4/props/junk/pizzabox.mdl",
	["description"] = "A piece of plastic.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 10
}

ITEMS.ballisticfiber = {
	["name"] = "Balistic fiber.",
	["model"] = "models/mosi/fallout4/props/junk/components/ballisticfiber.mdl",
	["description"] = "A roll of ballistic fiber.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 70
}

ITEMS.glass = {
	["name"] = "Glass.",
	["model"] = "models/mosi/fallout4/props/junk/components/glass.mdl",
	["description"] = "A broken glass.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 50
}

ITEMS.cooper = {
	["name"] = "Cooper",
	["model"] = "models/mosi/fallout4/props/junk/components/copper.mdl",
	["description"] = "A cooper ingot.",
	["category"] = "Scrap",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 41
}

ITEMS.gold = {
	["name"] = "Gold",
	["model"] = "models/mosi/fallout4/props/junk/components/gold.mdl",
	["description"] = "A gold ingot.",
	["category"] = "Scrap",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 1
}

ITEMS.lead = {
	["name"] = "Lead",
	["model"] = "models/mosi/fallout4/props/junk/components/lead.mdl",
	["description"] = "A lead ingot.",
	["category"] = "Scrap",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 65
}


ITEMS.gears = {
	["name"] = "Gears box",
	["model"] = "models/mosi/fallout4/props/junk/components/gears.mdl",
	["description"] = "Box that include inside gears.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 25
}

ITEMS.oil = {
	["name"] = "Oil",
	["model"] = "models/mosi/fallout4/props/junk/components/oil.mdl",
	["description"] = "A bottle with oil.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 10
}

ITEMS.acid = {
	["name"] = "Acid",
	["model"] = "models/mosi/fallout4/props/junk/components/acid.mdl",
	["description"] = "A bottle with acid.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 2
}

ITEMS.tincooper = {
	["name"] = "Tin of cooper",
	["model"] = "models/mosi/fallout4/props/junk/tincan01.mdl",
	["description"] = "A tin of cooper.",
	["category"] = "Scrap",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 45
}

---------------------------------

ITEMS.broken_bastard = {
	["name"] = "Broken Bastard",
	["model"] = "models/devcon/mrp/weapons/w_bastard.mdl",
	["description"] = "It's broken, maybe jammed or something else, but it can still be repaired.",
	["width"] = 3,
	["height"] = 2,
	["chance"] = 10
}

ITEMS.broken_duplet = {
	["name"] = "Broken Duplet",
	["model"] = "models/kali/weapons/metro 2033/duplet.mdl",
	["description"] = "The mechanisms are badly damaged, you can’t shoot from it, but you can still fix it.",
	["width"] = 4,
	["height"] = 2,
	["chance"] = 1
}

ITEMS.broken_lowlife = {
	["name"] = "Broken Lowlife",
	["model"] = "models/kali/weapons/metro 2033/lolife.mdl",
	["description"] = "The mechanisms are badly damaged, you can’t shoot from it, but you can still fix it.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 10
}

ITEMS.broken_ashot = {
	["name"] = "Broken Ashot",
	["model"] = "models/redux/weapons/ashot.mdl",
	["description"] = "The mechanisms are badly damaged, you can’t shoot from it, but you can still fix it.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 1
}

ITEMS.broken_vsv = {
	["name"] = "Broken VSV",
	["model"] = "models/redux/weapons/vsv.mdl",
	["description"] = "The mechanisms are badly damaged, you can’t shoot from it, but you can still fix it.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 1
}

ITEMS.broken_uboinik = {
	["name"] = "Broken Uboinik",
	["model"] = "models/devcon/mrp/props/broken_shotgun.mdl",
	["description"] = "The mechanisms are badly damaged, you can’t shoot from it, but you can still fix it.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 8
}

ITEMS.broken_flashlight = {
	["name"] = "Broken Flashlight",
	["model"] = "models/lagmite/lagmite.mdl",
	["description"] = "Flashlight with broken glass and no batteries. However, it can still be fixed.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 80
}

ITEMS.metal = {
	["name"] = "Scrap metal",
	["model"] = "models/gibs/manhack_gib01.mdl",
	["description"] = "The basic material for creating anything is appreciated everywhere.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 60 --This is used for the 'item spawner plugin' this defines how many 'tickets' the item gets to spawn.
}

ITEMS.tape = {
	["name"] = "Insulating tape",
	["model"] = "models/mosi/fallout4/props/junk/ducttape.mdl",
	["description"] = "Insulating tape.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 40 --This is used for the 'item spawner plugin' this defines how many 'tickets' the item gets to spawn.
}

ITEMS.battery = {
	["name"] = "Battery",
	["model"] = "models/mosi/fallout4/props/junk/makeshiftbattery.mdl",
	["description"] = "A battery.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 17
}

ITEMS.gunpowder = {
	["name"] = "Gunpowder",
	["model"] = "models/kek1ch/dev_antirad.mdl",
	["description"] = "Gunpowder in a pouch.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 11
}

ITEMS.weapon_parts = {
	["name"] = "Weapon Pieces",
	["model"] = "models/props_lab/box01a.mdl",
	["description"] = "Old weapon parts.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 46
}

ITEMS.repair_kit = {
	["name"] = "Weapon Repair Kit",
	["model"] = "models/mosi/fallout4/props/junk/modcrate.mdl",
	["description"] = "In this container are small mechanisms from different types of weapons that are capable or repairing other weapons.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 30,
	["tool"] = true
}

ITEMS.newspaper = {
	["name"] = "Pre-war newspaper",
	["model"] = "models/props_junk/garbage_newspaper001a.mdl",
	["description"] = "An old newspaper that went out before the war.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 25
}

ITEMS.broken_radio = {
	["name"] = "Broken Handheld Radio",
	["model"] = "models/kek1ch/dev_fmradio.mdl",
	["description"] = "A broken radio without batteries and some wires sticking out of it.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 19
}

ITEMS.doll = {
	["name"] = "Doll",
	["model"] = "models/props_c17/doll01.mdl",
	["description"] = "An old shabby doll.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 90
}

ITEMS.porn = {
	["name"] = "Porn magazine",
	["model"] = "models/kek1ch/porn.mdl",
	["description"] = "Strongly appreciated among Metro residents.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 78
}

ITEMS.fabric = {
	["name"] = "Fabric",
	["model"] = "models/devcon/mrp/props/carpet_roll_2.mdl",
	["description"] = "There are many things you can do with it.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 40
}

ITEMS.electronics = {
	["name"] = "Electronics",
	["model"] = "models/mosi/fallout4/props/junk/modbox.mdl",
	["description"] = "One of the important components for a lot of things.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 17
}

ITEMS.normal_hammer = {
	["name"] = "Hammer",
	["model"] = "models/props_c17/TrapPropeller_Lever.mdl",
	["description"] = "A hammer devised of several tools.",
	["width"] = 1,
	["height"] = 2,
	["chance"] = 27,

}

ITEMS.normal_saw = {
	["name"] = "Circular saw",
	["model"] = "models/props/cs_militia/circularsaw01.mdl",
	["description"] = "Heavy circular saw. You know what it's for.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 67,
	
}

ITEMS.normal_sciss = {
	["name"] = "Scissors",
	["model"] = "models/mosi/fallout4/props/junk/scissors02.mdl",
	["description"] = "A very sharp tool.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 50,
	
}

ITEMS.normal_screwdriver = {
	["name"] = "Screwdriver",
	["model"] = "models/mosi/fallout4/props/junk/screwdriver.mdl",
	["description"] = "A full fledged screwdriver.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 80,
	
}

ITEMS.normal_clipper = {
	["name"] = "Clippers",
	["model"] = "models/props_c17/tools_pliers01a.mdl",
	["description"] = "This seems like an useful thing.",
	["width"] = 1,
	["height"] = 2,
	["chance"] = 77,
	
}

ITEMS.normal_wrench = {
	["name"] = "Wrench",
	["model"] = "models/props_c17/tools_wrench01a.mdl",
	["description"] = "A very uselful tool.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 53,
	
}




for k, v in pairs(ITEMS) do
	local ITEM = ix.item.Register(k, nil, false, nil, true)
	ITEM.name = v.name
	ITEM.model = v.model
	ITEM.description = v.description
	ITEM.category = v.category or "Materiales"
	ITEM.width = v.width or 1
	ITEM.height = v.height or 1
	ITEM.chance = v.chance or 0
	ITEM.isTool = v.tool or false
end