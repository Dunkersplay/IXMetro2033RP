--TODO: POPULATE CRAFTING ITEMS AND RECIPES
PLUGIN.name = "Crafting"
PLUGIN.author = "Huargenn"
PLUGIN.desc = "Replacing the business menu with crafting because that's a more sensible thing to do."
STORED_RECIPES = {}

function PLUGIN:AddRecipe(name, model, desc, requirements, results, id, skills, blueprint, workstation, tools, tier, entity, category)
	if type(name) ~= "table" then
		local RECIPE = {}
		RECIPE["id"] = id --Unique ID of the recipe.
		RECIPE["name"] = name -- Name of the recipe.
		RECIPE["model"] = model -- Model it uses in the menu.
		RECIPE["desc"] = desc -- Description of what it is.
		RECIPE["req"] = requirements --Requirements to craft it(use item id's)
		RECIPE["results"] = results --Results of the craft (use item id's)
		RECIPE["blueprint"] = blueprint or false
		RECIPE["entity"] = entity or false
		RECIPE["category"] = category or "Miscellaneous"
		RECIPE["workstation"] = workstation or false
		RECIPE["tools"] = tools or false
		RECIPE["tier"] = tier or "I"

		if skills then
			RECIPE["skills"] = skills
		end

		STORED_RECIPES[id] = RECIPE
	else
		for k, v in pairs(name) do
			RECIPE["id"] = k --Unique ID of the recipe.
			RECIPE["name"] = v.name -- Name of the recipe.
			RECIPE["model"] = v.model -- Model it uses in the menu.
			RECIPE["desc"] = v.desc -- Description of what it is.
			RECIPE["req"] = v.requirements --Requirements to craft it(use item id's)
			RECIPE["results"] = v.results --Results of the craft (use item id's)
			RECIPE["blueprint"] = v.blueprint or false --Whether or not it uses a blueprint
			RECIPE["entity"] = v.entity or false --FUTURE: Whether or not it will use an entity.
			RECIPE["category"] = v.category or "Miscellaneous" --FUTURE: The Category
			RECIPE["workstation"] = v.workstation or false
			RECIPE["tools"] = v.tools or false
			RECIPE["tier"] = v.tier or "I"

			if skills then
				RECIPE["skills"] = skills
			end
		end
	end
end
--[[-------------------------------------------------------------------------
TODO: For release, demonstrate full capacity of plugin.
---------------------------------------------------------------------------]]
local NEW_RECIPES = {
	
	--Unique ID = name of the folders of attributes
	
	
	    --[[For example]]--
	
	
	--[[
	
	["nucleo_ia"] = {
		["name"] = "Droide: Núcleo de I.A.",
		["model"] = "models/props/starwars/weapons/ap_mine.mdl",
		["desc"] = "Un núcleo de Inteligencia Artificial.",
		["requirements"] = {["lingote_titanio"] = 2, ["circuito_cobre"] = 3, ["tabla_circuitos_oro_cobre"] = 2, ["sensor"] = 2, ["conjunto_piezas_metalicas"] = 4},
		["skills"] = {["eng"] = 35, ["des"] = 30},
		["tools"] = {"planos_nucleo_ia", "destornillador", "soldador", "tijeras", "martillo"},
		["results"] = {["nucleo_ia"] = 1},
		["workstation"] = "estacion_droides",
		["tier"] = "I",
		["category"] = "Ingenieria",
	},
	
	]]
	["crafting_valve2027"] = {
		["name"] = "Valve 2027",
		["model"] = "models/redux/weapons/preved.mdl",
		["desc"] = "Assemble a better Valve 2027, firing .50 BMG AT Rounds.",
		["requirements"] = {["welder"] = 1, ["metal"] = 10, ["wood"] = 10, ["normal_screwdriver"] = 1, ["repair_kit"] = 1, ["oil"] = 7, ["plastic"] = 2, ["cooper"] = 1, ["lead"] = 3, ["tape"] = 1, ["normal_wrench"] = 1, ["gunpowder"] = 2},
		["results"] = {["valve2027"] = 1},
		["skills"] = {["wea"] = 50},
		["category"] = "Weapon",
		["workstation"] = worktable
	},
	["worktable"] = {
		["name"] = "Worktable",
		["model"] = "models/props_wasteland/controlroom_desk001b.mdl",
		["desc"] = "Assemble a worktable for working on advanced projects.",
		["requirements"] = {["welder"] = 2, ["metal"] = 25, ["wood"] = 5, ["normal_screwdriver"] = 1, ["repair_kit"] = 1, ["oil"] = 5, ["plastic"] = 5, ["cooper"] = 10, ["lead"] = 2, ["tape"] = 1, ["electronics"] = 5, ["normal_hammer"] = 1, ["normal_wrench"] = 1},
		["results"] = {["bastard"] = 1},
		["skills"] = {["wea"] = 5},
		["category"] = "Utilities",
	},

	["breakdown_ashot"] = {
		["name"] = "Materials: Ashot Breakdown",
		["model"] = "models/mosi/fallout4/props/junk/modbox.mdl",
		["desc"] = "Dismantle an Ashot in exchange for parts.",
		["requirements"] = {["normal_screwdriver"] = 1, ["ashot"] = 1},
		["results"] = {["metal"] = 1, ["weapon_parts"] = 1, ["broken_ashot"] = 1},
		["category"] = "Materials",
	},
	["breakdown_bastard"] = {
		["name"] = "Bastard Breakdown",
		["model"] = "models/mosi/fallout4/props/junk/modbox.mdl",
		["desc"] = "Breakdown a Bastard Carbine.",
		["requirements"] = {["normal_screwdriver"] = 1, ["bastard"] = 1},
		["results"] = {["broken_bastard"] = 1, ["metal"] = 3, ["weapon_parts"] = 1,},
		["category"] = "Weapons",
	},
	["scrap_metal"] = {
		["name"] = "Scrap Metal",
		["model"] = "models/mechanics/solid_steel/plank_4.mdl",
		["desc"] = "Turn a pot into scrap metal.",
		["requirements"] = {["normal_screwdriver"] = 1, ["pot"] = 1},
		["results"] = {["metal"] = 5},
		["category"] = "Materials",
	},
	["scrap_metal"] = {
		["name"] = "Scrap Metal",
		["model"] = "models/mechanics/solid_steel/plank_4.mdl",
		["desc"] = "Turn a pot into scrap metal.",
		["requirements"] = {["normal_screwdriver"] = 1, ["pot"] = 1},
		["results"] = {["metal"] = 5},
		["category"] = "Materials",
	},
	["rifle_ammo"] = {
		["name"] = "Rifle Ammunition",
		["model"] = "models/devcon/mrp/props/ammo_lenta.mdl",
		["desc"] = "Make fresh Crude Munitions.",
		["requirements"] = {["normal_screwdriver"] = 1, ["welder"] = 1, ["lead"] = 1, ["tincooper"] = 2, ["metal"] = 2, ["gunpowder"] = 3,},
		["results"] = {["ar2ammo"] = 1},
		["skills"] = {["eng"] = 8}, {["int"] = 12},
		["category"] = "Materials",
		["workstation"] = "worktable",
	},
	["heavypistol_ammo"] = {
		["name"] = "Pistol Ammunition",
		["model"] = "models/devcon/mrp/props/ammo_lenta.mdl",
		["desc"] = "Make fresh Crude Munitions.",
		["requirements"] = {["normal_screwdriver"] = 1, ["welder"] = 1, ["lead"] = 1, ["tincooper"] = 2, ["metal"] = 1, ["gunpowder"] = 1,},
		["results"] = {["357ammo"] = 1},
		["skills"] = {["eng"] = 8}, {["int"] = 8},
		["category"] = "Materials",
		["workstation"] = "worktable",
	},
	["ashot"] = {
		["name"] = "Ashot Repair",
		["model"] = "models/redux/weapons/ashot.mdl",
		["desc"] = "Fix a previously broken Ashot.",
		["requirements"] = {["normal_screwdriver"] = 1, ["metal"] = 1, ["weapon_parts"] = 1, ["broken_ashot"] = 1},
		["results"] = {["ashot"] = 1},
		["category"] = "Weapons",
	},
	["lowlife"] = {
		["name"] = "Lowlife",
		["model"] = "models/kali/weapons/metro 2033/lolife.mdl",
		["desc"] = "Repair a previously broken pistol.",
		["requirements"] = {["broken_lowlife"] = 1, ["metal"] = 2, ["weapon_parts"] = 1, ["normal_screwdriver"] = 1, ["repair_kit"] = 1},
		["results"] = {["lowlife"] = 1},
		["skills"] = {["wea"] = 5}, {["eng"] = 25},
		["category"] = "Weapons",
	},
	["bastard"] = {
		["name"] = "Bastard Repair",
		["model"] = "models/devcon/mrp/weapons/w_bastard.mdl",
		["desc"] = "Repair a previously broken Bastard Carbine.",
		["requirements"] = {["broken_bastard"] = 1, ["metal"] = 3, ["weapon_parts"] = 2, ["normal_screwdriver"] = 1, ["repair_kit"] = 1},
		["results"] = {["bastard"] = 1},
		["skills"] = {["wea"] = 5}, {["eng"] = 8},
		["category"] = "Weapons",
	},
	["duplet"] = {
		["name"] = "Doublet Repair",
		["model"] = "models/kali/weapons/metro 2033/duplet.mdl",
		["desc"] = "Repair a previously broken shotgun.",
		["requirements"] = {["broken_duplet"] = 1, ["metal"] = 2, ["weapon_parts"] = 2, ["normal_screwdriver"] = 1, ["repair_kit"] = 1},
		["results"] = {["doublet"] = 1},
		["skills"] = {["wea"] = 5}, {["eng"] = 20},
		["category"] = "Weapons",
	},
	["flashlight"] = {
		["name"] = "Flashlight Repair",
		["model"] = "models/lagmite/lagmite.mdl",
		["desc"] = "Repair a previously broken flashlight.",
		["requirements"] = {["broken_flashlight"] = 1, ["battery"] = 1, ["normal_screwdriver"] = 1},
		["results"] = {["flashlight"] = 1},
		["skills"] = {["eng"] = 5},
		["category"] = "Utilities",
	},
	["handradio"] = {
		["name"] = "Handheld Radio Repair",
		["model"] = "models/kek1ch/dev_fmradio.mdl",
		["desc"] = "Repair a previously broken radio.",
		["requirements"] = {["broken_radio"] = 1, ["normal_screwdriver"] = 1, ["tape"] = 1, ["battery"] = 1, ["electronics"] = 1},
		["results"] = {["handheld_radio"] = 1},
		["skills"] = {["eng"] = 8}, {["int"] = 12},
		["category"] = "Utilities",
	},
	["paper_porn"] = {
		["name"] = "Pieces of paper",
		["model"] = "models/kek1ch/notes_document_case_3.mdl",
		["desc"] = "Get a nice pieces of paper for writing on from a porno magazine.",
		["requirements"] = {["porn"] = 1, ["normal_sciss"] = 1},
		["results"] = {["paper"] = 3},
		["category"] = "Materials",
	},
	["paper_newspaper"] = {
		["name"] = "Pieces of paper",
		["model"] = "models/kek1ch/notes_document_case_3.mdl",
		["desc"] = "Get a nice pieces of paper for writing on from a newspaper.",
		["requirements"] = {["newspaper"] = 1, ["normal_sciss"] = 1},
		["results"] = {["paper"] = 4},
		["category"] = "Materials",
	},
	["cooked_pork"] = {
		["name"] = "Cooked Pork",
		["model"] = "models/kek1ch/raw_flesh.mdl",
		["desc"] = "Cook some pork",
		["requirements"] = {["pigmeat"] = 1},
		["results"] = {["pork"] = 1},
		["category"] = "Utilities",
	},
	["bandage"] = {
		["name"] = "Bandage",
		["model"] = "models/props_wasteland/prison_toiletchunk01f.mdl",
		["desc"] = "Clean the cloth from dirt and pack it in a tampon.",
		["requirements"] = {["newspaper"] = 1, ["mushroom_vodka"] = 1},
		["results"] = {["bandage"] = 1},
		["category"] = "Medicine",
	},
	["porn"] = {
		["name"] = "Porn magazine",
		["model"] = "models/kek1ch/notes_writing_book_2.mdl",
		["desc"] = "Haha! You really just need it, man.",
		["requirements"] = {["paper"] = 12, ["tape"] = 1},
		["results"] = {["porn"] = 1},
		["category"] = "Materials",
	},
	
}

for k, v in pairs(NEW_RECIPES) do
	PLUGIN:AddRecipe(v.name, v.model, v.desc, v.requirements, v.results, k, v.skills or nil, v.blueprint or nil, v.workstation or nil, v.tools or nil, v.tier, v.entity or nil, v.category or "Miscellaneous")
end

--[[-------------------------------------------------------------------------
Tying in with the 'Citizen Production Plugin', adding schematics for study.
---------------------------------------------------------------------------]]
for k, v in pairs(ix.item.list) do
	if v.category == "Schematics" then
		local tbl = v.requirements
		local tbl2 = v.result
		local req_table_empty = {}
		local res_table_empty = {}
		for k2, v2 in pairs(tbl) do
			req_table_empty[v2[1]] = v2[2]
		end
		for k3,v3 in pairs(tbl2) do
			if v3[1] != "manufacturing_ticket" then
				res_table_empty[v3[1]] = v3[2]
			end
		end
		PLUGIN:AddRecipe(v.name, v.model, v.description .. "\nYou studied this blueprint from the factories.", req_table_empty, res_table_empty, v.uniqueID, false, v.uniqueID)
	end
end

ix.util.Include("cl_plugin.lua")
ix.util.Include("sv_plugin.lua")
ix.util.Include("sh_items.lua")

ix.command.Add("BlueprintGive", {
	description = "Give a blueprint to a player.",
	adminOnly = true,
	arguments = {ix.type.character, ix.type.string},
	OnRun = function(self, client, target, blueprint)
		local data = target:GetData("blueprints", {})

		if not table.HasValue(data, blueprint) then
			table.insert(data, blueprint)
		else
			client:Notify(target:GetName() .. " already has this blueprint.")

			return
		end

		target:SetData("blueprints", data)
		client:Notify("You have given " .. target:GetName() .. " the blueprint " .. blueprint .. ".")
		target.player:Notify("You have been given the blueprint " .. blueprint .. " by " .. client:Name())
	end
})

ix.command.Add("BlueprintRemove", {
	description = "Give a blueprint to a player.",
	adminOnly = true,
	arguments = {ix.type.character, ix.type.string},
	OnRun = function(self, client, target, blueprint)
		local data = target:GetData("blueprints", {})

		if table.HasValue(data, blueprint) then
			table.RemoveByValue(data, blueprint)
		else
			client:Notify(target:GetName() .. " does not have this blueprint.")
		end

		target:SetData("blueprints", data)
		client:Notify("You have taken " .. target:GetName() .. " the blueprint " .. blueprint .. ".")
		target.player:Notify("You have had the blueprint " .. blueprint .. " taken from you by " .. client:Name())
	end
})

local charMeta = ix.meta.character

function charMeta:GiveBlueprint(blueprint)
	local data = self:GetData("blueprints", {})

	if not table.HasValue(data, blueprint) then
		table.insert(data, blueprint)
	end

	self:SetData("blueprints", data)
end

function charMeta:RemoveBlueprint(blueprint)
	local data = target:GetData("blueprints", {})

	if table.HasValue(data, blueprint) then
		table.RemoveByValue(data, blueprint)
	end

	target:SetData("blueprints", data)
end