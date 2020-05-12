
--[[--
Player model animation.

Helix comes with support for using NPC animations/models as regular player models by manually translating animations. There are
a few standard animation sets that are built-in that should cover most non-player models:
	citizen_male
	citizen_female
	metrocop
	overwatch
	vortigaunt
	player
	zombie
	fastZombie

If you find that your models are T-posing when they work elsewhere, you'll probably need to set the model class for your
model with `ix.anim.SetModelClass` in order for the correct animations to be used. If you'd like to add your own animation
class, simply add to the `ix.anim` table with a model class name and the required animation translation table.
]]
-- @module ix.anim

ix.anim = ix.anim or {}
ix.anim.citizen_male = {
	normal = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_COVER_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	pistol = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_RANGE_ATTACK_PISTOL},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_ATTACK_PISTOL_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_PISTOL,
		reload = ACT_RELOAD_PISTOL
	},
	smg = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SMG1_RELAXED, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE_RELAXED, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE_RELAXED, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_SMG1,
		reload = ACT_GESTURE_RELOAD_SMG1
	},
	shotgun = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SHOTGUN_RELAXED, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE_RELAXED, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE_RELAXED, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_SHOTGUN
	},
	grenade = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_MANNEDGUN},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_RANGE_ATTACK_THROW
	},
	melee = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY_MELEE},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_COVER_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_MELEE_ATTACK_SWING
	},
	glide = ACT_GLIDE,
	vehicle = {
		["prop_vehicle_prisoner_pod"] = {"podpose", Vector(-3, 0, 0)},
		["prop_vehicle_jeep"] = {ACT_BUSY_SIT_CHAIR, Vector(14, 0, -14)},
		["prop_vehicle_airboat"] = {ACT_BUSY_SIT_CHAIR, Vector(8, 0, -20)},
		chair = {ACT_BUSY_SIT_CHAIR, Vector(1, 0, -23)}
	},
}

ix.anim.citizen_female = {
	normal = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_COVER_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	pistol = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_PISTOL, ACT_IDLE_ANGRY_PISTOL},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_PISTOL},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM_PISTOL},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_PISTOL,
		reload = ACT_RELOAD_PISTOL
	},
	smg = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SMG1_RELAXED, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE_RELAXED, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE_RELAXED, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_SMG1,
		reload = ACT_GESTURE_RELOAD_SMG1
	},
	shotgun = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SHOTGUN_RELAXED, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE_RELAXED, ACT_WALK_AIM_RIFLE_STIMULATED},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE_RELAXED, ACT_RUN_AIM_RIFLE_STIMULATED},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_SHOTGUN
	},
	grenade = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_MANNEDGUN},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_RANGE_AIM_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_PISTOL},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH_AIM_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM_PISTOL},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_RANGE_ATTACK_THROW
	},
	melee = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_MANNEDGUN},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_LOW, ACT_COVER_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_MELEE_ATTACK_SWING
	},
	glide = ACT_GLIDE,
	vehicle = ix.anim.citizen_male.vehicle
}
ix.anim.metrocop = {
	normal = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_PISTOL_LOW, ACT_COVER_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	pistol = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_PISTOL, ACT_IDLE_ANGRY_PISTOL},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_PISTOL_LOW, ACT_COVER_PISTOL_LOW},
		[ACT_MP_WALK] = {ACT_WALK_PISTOL, ACT_WALK_AIM_PISTOL},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN_PISTOL, ACT_RUN_AIM_PISTOL},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_GESTURE_RANGE_ATTACK_PISTOL,
		reload = ACT_GESTURE_RELOAD_PISTOL
	},
	smg = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SMG1, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_SMG1_LOW, ACT_COVER_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE, ACT_WALK_AIM_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	shotgun = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SMG1, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_SMG1_LOW, ACT_COVER_SMG1_LOW},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE, ACT_WALK_AIM_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	grenade = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY_MELEE},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_PISTOL_LOW, ACT_COVER_PISTOL_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_ANGRY},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_COMBINE_THROW_GRENADE
	},
	melee = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY_MELEE},
		[ACT_MP_CROUCH_IDLE] = {ACT_COVER_PISTOL_LOW, ACT_COVER_PISTOL_LOW},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_ANGRY},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH, ACT_WALK_CROUCH},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_MELEE_ATTACK_SWING_GESTURE
	},
	glide = ACT_GLIDE,
	vehicle = {
		chair = {ACT_COVER_PISTOL_LOW, Vector(5, 0, -5)},
		["prop_vehicle_airboat"] = {ACT_COVER_PISTOL_LOW, Vector(10, 0, 0)},
		["prop_vehicle_jeep"] = {ACT_COVER_PISTOL_LOW, Vector(18, -2, 4)},
		["prop_vehicle_prisoner_pod"] = {ACT_IDLE, Vector(-4, -0.5, 0)}
	}
}
ix.anim.overwatch = {
	normal = {
		[ACT_MP_STAND_IDLE] = {"idle_unarmed", ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {ACT_CROUCHIDLE, ACT_CROUCHIDLE},
		[ACT_MP_WALK] = {"walkunarmed_all", ACT_WALK_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_AIM_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	pistol = {
		[ACT_MP_STAND_IDLE] = {"idle_unarmed", ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_CROUCHIDLE, ACT_CROUCHIDLE},
		[ACT_MP_WALK] = {"walkunarmed_all", ACT_WALK_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_AIM_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	smg = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SMG1, ACT_IDLE_ANGRY_SMG1},
		[ACT_MP_CROUCH_IDLE] = {ACT_CROUCHIDLE, ACT_CROUCHIDLE},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE, ACT_WALK_AIM_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	shotgun = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE_SMG1, ACT_IDLE_ANGRY_SHOTGUN},
		[ACT_MP_CROUCH_IDLE] = {ACT_CROUCHIDLE, ACT_CROUCHIDLE},
		[ACT_MP_WALK] = {ACT_WALK_RIFLE, ACT_WALK_AIM_SHOTGUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_RIFLE, ACT_RUN_AIM_SHOTGUN},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	grenade = {
		[ACT_MP_STAND_IDLE] = {"idle_unarmed", ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {ACT_CROUCHIDLE, ACT_CROUCHIDLE},
		[ACT_MP_WALK] = {"walkunarmed_all", ACT_WALK_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_AIM_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	melee = {
		[ACT_MP_STAND_IDLE] = {"idle_unarmed", ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {ACT_CROUCHIDLE, ACT_CROUCHIDLE},
		[ACT_MP_WALK] = {"walkunarmed_all", ACT_WALK_RIFLE},
		[ACT_MP_CROUCHWALK] = {ACT_WALK_CROUCH_RIFLE, ACT_WALK_CROUCH_RIFLE},
		[ACT_MP_RUN] = {ACT_RUN_AIM_RIFLE, ACT_RUN_AIM_RIFLE},
		[ACT_LAND] = {ACT_RESET, ACT_RESET},
		attack = ACT_MELEE_ATTACK_SWING_GESTURE
	},
	glide = ACT_GLIDE
}
ix.anim.vortigaunt = {
	melee = {
		["attack"] = ACT_MELEE_ATTACK1,
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "ActionIdle"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM},
	},
	grenade = {
		["attack"] = ACT_MELEE_ATTACK1,
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "ActionIdle"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK}
	},
	normal = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM},
		["attack"] = ACT_MELEE_ATTACK1
	},
	pistol = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "TCidlecombat"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		["reload"] = ACT_IDLE,
		[ACT_MP_RUN] = {ACT_RUN, "run_all_TC"},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, "Walk_all_TC"}
	},
	shotgun = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "TCidlecombat"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		["reload"] = ACT_IDLE,
		[ACT_MP_RUN] = {ACT_RUN, "run_all_TC"},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, "Walk_all_TC"}
	},
	smg = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "TCidlecombat"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		["reload"] = ACT_IDLE,
		[ACT_MP_RUN] = {ACT_RUN, "run_all_TC"},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, "Walk_all_TC"}
	},
	beam = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK_AIM},
		["attack"] = ACT_GESTURE_RANGE_ATTACK1,
		["reload"] = ACT_IDLE,
		["glide"] = {ACT_RUN, ACT_RUN}
	},
	glide = "jump_holding_glide"
}
ix.anim.player = {
	normal = {
		[ACT_MP_STAND_IDLE] = ACT_HL2MP_IDLE,
		[ACT_MP_CROUCH_IDLE] = ACT_HL2MP_IDLE_CROUCH,
		[ACT_MP_WALK] = ACT_HL2MP_WALK,
		[ACT_MP_RUN] = ACT_HL2MP_RUN,
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	},
	passive = {
		[ACT_MP_STAND_IDLE] = ACT_HL2MP_IDLE_PASSIVE,
		[ACT_MP_WALK] = ACT_HL2MP_WALK_PASSIVE,
		[ACT_MP_CROUCHWALK] = ACT_HL2MP_WALK_CROUCH_PASSIVE,
		[ACT_MP_RUN] = ACT_HL2MP_RUN_PASSIVE,
		[ACT_LAND] = {ACT_RESET, ACT_RESET}
	}
}
ix.anim.zombie = {
	[ACT_MP_STAND_IDLE] = ACT_HL2MP_IDLE_ZOMBIE,
	[ACT_MP_CROUCH_IDLE] = ACT_HL2MP_IDLE_CROUCH_ZOMBIE,
	[ACT_MP_CROUCHWALK] = ACT_HL2MP_WALK_CROUCH_ZOMBIE_01,
	[ACT_MP_WALK] = ACT_HL2MP_WALK_ZOMBIE_02,
	[ACT_MP_RUN] = ACT_HL2MP_RUN_ZOMBIE,
	[ACT_LAND] = {ACT_RESET, ACT_RESET}
}
ix.anim.fastZombie = {
	[ACT_MP_STAND_IDLE] = ACT_HL2MP_WALK_ZOMBIE,
	[ACT_MP_CROUCH_IDLE] = ACT_HL2MP_IDLE_CROUCH_ZOMBIE,
	[ACT_MP_CROUCHWALK] = ACT_HL2MP_WALK_CROUCH_ZOMBIE_05,
	[ACT_MP_WALK] = ACT_HL2MP_WALK_ZOMBIE_06,
	[ACT_MP_RUN] = ACT_HL2MP_RUN_ZOMBIE_FAST,
	[ACT_LAND] = {ACT_RESET, ACT_RESET}
}

local translations = {}

--- Sets a model's animation class.
-- @realm shared
-- @string model Model name to set the animation class for
-- @string class Animation class to assign to the model
-- @usage ix.anim.SetModelClass("models/police.mdl", "metrocop")
function ix.anim.SetModelClass(model, class)
	if (!ix.anim[class]) then
		error("'" .. tostring(class) .. "' is not a valid animation class!")
	end

	translations[model:lower()] = class
end

--- Gets a model's animation class.
-- @realm shared
-- @string model Model to get the animation class for
-- @treturn[1] string Animation class of the model
-- @treturn[2] nil If there was no animation associated with the given model
-- @usage ix.anim.GetModelClass("models/police.mdl")
-- > metrocop
function ix.anim.GetModelClass(model)
	model = string.lower(model)
	local class = translations[model]

	if (!class and string.find(model, "/player")) then
		return "player"
	end

	class = class or "citizen_male"

	if (class == "citizen_male" and (
		string.find(model, "female") or
		string.find(model, "alyx") or
		string.find(model, "mossman"))) then
		class = "citizen_female"
	end

	return class
end
--This is for HL2RP. Delete at your own discretion. I'm leaving it in since all it does is take up a kilobyte or so of space.
ix.anim.SetModelClass("models/humans/group01/male_01.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_02.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_04.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_05.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_06.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_07.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_08.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_09.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group02/male_01.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group02/male_03.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group02/male_05.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group02/male_07.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group02/male_09.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_40.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_41.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_38.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_67.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_75.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_86.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_96.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_hc.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_93.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_83.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_117.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_122.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_120.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_115.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_110.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_111.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_12.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_51.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_65.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_63.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_50.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_49.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_62.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_70.mdl", "citizen_male")
ix.anim.SetModelClass("models/humans/group01/male_45.mdl", "citizen_male")
ix.anim.SetModelClass("models/bloo_ltcom/citizens/male_10.mdl", "citizen_male")
ix.anim.SetModelClass("models/bloo_ltcom/citizens/male_11.mdl", "citizen_male")
ix.anim.SetModelClass("models/barnes/refugee/female_31.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_32.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_34.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_41.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_42.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_caterina.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_01.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_02.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_03.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_06.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_07.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group02/female_01.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group02/female_03.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group02/female_06.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_04.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/citizen/female_01.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/citizen/female_02.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_05.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_40.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_38.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_28.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/citizen/female_03.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/citizen/female_04.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/citizen/female_06.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/citizen/female_07.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_67.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_28.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_03.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_06.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_07.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_04.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_43.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_25.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_29.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_43.mdl", "citizen_female")
ix.anim.SetModelClass("models/barnes/refugee/female_44.mdl", "citizen_female")
ix.anim.SetModelClass("models/humans/group01/female_78.mdl", "citizen_female")
ix.anim.SetModelClass("models/police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/arctic_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/biopolice.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/blacop.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/c08cop.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/civil_medic.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/elite_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/female_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/hdpolice.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/hl2beta_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/hl2concept.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/hunter_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/phoenix_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/police_bt.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/police_fragger.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/policetrench.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/resistance_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/retrocop.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/rogue_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/rtb_police.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/urban_police.mdl", "metrocop")
ix.anim.SetModelClass("models/auditor/custom/combine2019/chr_combine_soldier_hazmat.mdl", "overwatch")
ix.anim.SetModelClass("models/auditor/custom/combine2019/chr_combine_soldier_light.mdl", "overwatch")
ix.anim.SetModelClass("models/auditor/custom/combine2019/chr_combine_soldier_light_elite.mdl", "overwatch")
ix.anim.SetModelClass("models/auditor/custom/combine2019/chr_combine_soldier_patrol_vest.mdl", "overwatch")
ix.anim.SetModelClass("models/ninja/combine/combine_soldier.mdl", "overwatch")
ix.anim.SetModelClass("models/ninja/combine/combine_super_soldier.mdl", "overwatch")
ix.anim.SetModelClass("models/ninja/combine/combinonew_armor.mdl", "overwatch")
ix.anim.SetModelClass("models/wichacks/sandro.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/ted.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/vance.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/van.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/eric.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/erdim.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/art.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/joe.mdl", "citizen_male")
ix.anim.SetModelClass("models/wichacks/mike.mdl", "citizen_male")
ix.anim.SetModelClass("models/cultist/hl_a/vannila_combine/npc/combine_soldier.mdl", "overwatch")
ix.anim.SetModelClass("models/industrial_uniforms/industrial_uniform2.mdl", "citizen_male")
ix.anim.SetModelClass("models/industrial_uniforms/industrial_uniform.mdl", "citizen_male")
ix.anim.SetModelClass("models/cultist/hl_a/combine_commander/combine_commander.mdl", "overwatch")
ix.anim.SetModelClass("models/city8_ow_elite.mdl", "overwatch")
ix.anim.SetModelClass("models/city8_overwatch.mdl", "overwatch")
ix.anim.SetModelClass("models/city8_overwatch_elite.mdl", "overwatch")
ix.anim.SetModelClass("models/eliteshockcp.mdl", "metrocop")
ix.anim.SetModelClass("models/vortigaunt_ozaxi.mdl", "vortigaunt")
ix.anim.SetModelClass("models/c08cop_someguy.mdl", "metrocop")
ix.anim.SetModelClass("models/dpfilms/metropolice/playermodels/pm_zombie_police.mdl", "zombie")
ix.anim.SetModelClass("models/combine_super_soldier.mdl", "overwatch")
ix.anim.SetModelClass("models/combine_soldier_prisonGuard.mdl", "overwatch")
ix.anim.SetModelClass("models/combine_soldier.mdl", "overwatch")
ix.anim.SetModelClass("models/vortigaunt.mdl", "vortigaunt")
ix.anim.SetModelClass("models/vortigaunt_blue.mdl", "vortigaunt")
ix.anim.SetModelClass("models/vortigaunt_doctor.mdl", "vortigaunt")
ix.anim.SetModelClass("models/vortigaunt_slave.mdl", "vortigaunt")


--Here are the Metro Models used. If you wanna add some, go ahead.
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner2_a3.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner2_artyom.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner2_hunter.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_banzay_hunter.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_banzay_rus_soldier_a3.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_banzay_rus_soldier_bf4.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_banzay_rus_soldier_hunter.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_bomj2_bf4.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_bomj2_hunter.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_2033_khan.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_34_pavel.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner_a3.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner_artyom.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner_bf4.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_middle_revolyucioner_hunter.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_fedor_burbon_artyom.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_fedor_burbon_bf4.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_ganza_a3.mdl","citizen_male")
ix.anim.SetModelClass("models/ninja/signalvariance/act_ganza_artyom.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/hanza/hanza_soldier_1.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/hanza/hanza_soldier_2.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/hanza/hanza_soldier_3.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/hanza/hanza_soldier_4.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/hanza/hanza_soldier_5.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/hazmat.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/hazmat_2.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/hazmat_3.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/hazmat_4.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/medic.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/medic2.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/medicshapka.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/new_medic01.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/new_medic02.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/new_medic03.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/security_station_v1.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/security_station_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/security_station_v3.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/security_station_v4.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/neutral/stalker.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_offcier_1.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_offcier_2.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_officer_3.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_officer_4.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_officer_5.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_officer_6.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_1.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_10.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_11.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_12.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_13.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_14.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_15.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_16.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_17.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_18.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_19.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_2.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_20.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_3.mdl","citizen_male")
ix.anim.SetModelClass("models/arx/redline/red_line_soldier_4.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit1.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit1_n.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit1_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit2_n.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit2_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit3.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit3_n.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit3_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit4.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit4_n.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit4_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit5.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit5_n.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit6.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit6_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit7_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit8_2_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bandit8_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/bourbon.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/civpilot.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_anna_summer.mdl","citizen_female")
ix.anim.SetModelClass("models/magma/exodus_damir.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_duke.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_idiot.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_katya.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_krest.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_lyosha.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_miller.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_miller_snow.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_sam.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_stepan.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/exodus_tokarev.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/hanzasoldier2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/hanzasoldier2_nosok.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/hanzasoldier_balaclava.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/hazmatsoldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/hazmatsoldier_face.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/hunter.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/leonid.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/officer_reich.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/pavel_original.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_heavy_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_flamethrower.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_kgb_lestnisky.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_kgb_soldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_kgb_soldier_mask.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_kgb_soldier_mask2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_patrolsoldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_privatesoldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_privatesoldier_face.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redline_soldier_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redlineofficer.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redlinesoldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redlinesoldier_nosok.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redlinesoldier_nosok_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/redlinesoldier_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_dieseldlc.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_general_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_hans.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_heavy_trooper.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_heavy_trooper_reinforcement.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_hood.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_hood2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_hookdlc.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_officer_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_othersoldier1.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_othersoldier1_black.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_othersoldier2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_othersoldier2_b.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_othersoldier3.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_patrolsold.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_shock_sniper.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_shock_trooper.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_trooper.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_trooper_1.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_trooper_2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reich_trooper_3.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reichsoldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reichsoldier_2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reichsoldier_n.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reichsoldier_n_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/reichsoldier_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/russoldier.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/russoldier_nosok.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/russoldier_nosok_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/russoldier_v2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/sparta_soldier_balaclava1.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/sparta_soldier_balaclava2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/sparta_soldier_balaclava4.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/sparta_soldier_balaclava5.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/spartan_blue_mod.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/spartan_danila.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/spartan_elite_ranger.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/spartan_heavy.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/spartan_new_face.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker1.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker1_balaclava.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker2.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker3.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker_hazmat.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker_hazmat_face.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/stalker_spartan_balaclava.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/suhoy.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/survivor2_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/survivor7_redux.mdl","citizen_male")
ix.anim.SetModelClass("models/magma/ulman.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/a1b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/a2b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/a3b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/a4b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/a5b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/f1b1.mdl","citizen_female")
ix.anim.SetModelClass("models/half-dead/metroll/f3b1.mdl","citizen_female")
ix.anim.SetModelClass("models/half-dead/metroll/f4b1.mdl","citizen_female")
ix.anim.SetModelClass("models/half-dead/metroll/f6b1.mdl","citizen_female")
ix.anim.SetModelClass("models/half-dead/metroll/f7b1.mdl","citizen_female")
ix.anim.SetModelClass("models/half-dead/metroll/m6b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/m7b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/m8b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/m9b1.mdl","citizen_male")
ix.anim.SetModelClass("models/half-dead/metroll/m5b1.mdl","citizen_male")
ix.anim.SetModelClass("models/exodus/spartan/anna_chemsuit.mdl","citizen_male")
ix.anim.SetModelClass("models/devcon/mrp/act/longlostblake.mdl","citizen_male")


if (SERVER) then
	util.AddNetworkString("ixSequenceSet")
	util.AddNetworkString("ixSequenceReset")

	local playerMeta = FindMetaTable("Player")

	--- Player anim methods
	-- @classmod Player

	--- Forces this player's model to play an animation sequence. It also prevents the player from firing their weapon while the
	-- animation is playing.
	-- @realm server
	-- @string sequence Name of the animation sequence to play
	-- @func[opt=nil] callback Function to call when the animation finishes. This is also called immediately if the animation
	-- fails to play
	-- @number[opt=nil] time How long to play the animation for. This defaults to the duration of the animation
	-- @bool[opt=false] bNoFreeze Whether or not to avoid freezing this player in place while the animation is playing
	-- @see LeaveSequence
	function playerMeta:ForceSequence(sequence, callback, time, bNoFreeze)
		hook.Run("PlayerEnterSequence", self, sequence, callback, time, bNoFreeze)

		if (!sequence) then
			net.Start("ixSequenceReset")
				net.WriteEntity(self)
			net.Broadcast()

			return
		end

		sequence = self:LookupSequence(tostring(sequence))

		if (sequence and sequence > 0) then
			time = time or self:SequenceDuration(sequence)

			self.ixCouldShoot = self:GetNetVar("canShoot", false)
			self.ixSeqCallback = callback
			self:SetCycle(0)
			self:SetPlaybackRate(1)
			self:SetNetVar("forcedSequence", sequence)
			self:SetNetVar("canShoot", false)

			if (!bNoFreeze) then
				self:SetMoveType(MOVETYPE_NONE)
			end

			if (time > 0) then
				timer.Create("ixSeq"..self:EntIndex(), time, 1, function()
					if (IsValid(self)) then
						self:LeaveSequence()
					end
				end)
			end

			net.Start("ixSequenceSet")
				net.WriteEntity(self)
			net.Broadcast()

			return time
		elseif (callback) then
			callback()
		end

		return false
	end

	--- Forcefully stops this player's model from playing an animation that was started by `ForceSequence`.
	-- @realm server
	function playerMeta:LeaveSequence()
		hook.Run("PlayerLeaveSequence", self)

		net.Start("ixSequenceReset")
			net.WriteEntity(self)
		net.Broadcast()

		self:SetNetVar("canShoot", self.ixCouldShoot)
		self:SetNetVar("forcedSequence", nil)
		self:SetMoveType(MOVETYPE_WALK)
		self.ixCouldShoot = nil

		if (self.ixSeqCallback) then
			self:ixSeqCallback()
		end
	end
else
	net.Receive("ixSequenceSet", function()
		local entity = net.ReadEntity()

		if (IsValid(entity)) then
			hook.Run("PlayerEnterSequence", entity)
		end
	end)

	net.Receive("ixSequenceReset", function()
		local entity = net.ReadEntity()

		if (IsValid(entity)) then
			hook.Run("PlayerLeaveSequence", entity)
		end
	end)
end
