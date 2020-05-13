
FACTION.name = "Metro Dweller"
FACTION.description = "A dweller of the post-apocalyptic Metro tunnels."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true

FACTION.models = {
    "models/half-dead/metrollfix/a1b1.mdl",
	"models/half-dead/metrollfix/a3b1.mdl",
	"models/half-dead/metrollfix/a2b1.mdl",
	"models/half-dead/metrollfix/a4b1.mdl",
	"models/half-dead/metrollfix/a5b1.mdl",
	"models/half-dead/metrollfix/m2b1.mdl",
	"models/half-dead/metrollfix/m4b1.mdl",
	"models/half-dead/metrollfix/m5b1.mdl",
	"models/half-dead/metrollfix/m6b1.mdl",
	"models/half-dead/metrollfix/m7b1.mdl",
	"models/half-dead/metrollfix/m8b1.mdl",
	"models/half-dead/metrollfix/m9b1.mdl",
	"models/half-dead/metrollfix/a6b1.mdl",
	"models/half-dead/metrollfix/m3b1.mdl",
	"models/half-dead/metrollfix/m1b1.mdl",
	"models/half-dead/metrollfix/f7b1.mdl",
	"models/half-dead/metrollfix/f6b1.mdl",
	"models/half-dead/metrollfix/f4b1.mdl",
	"models/half-dead/metrollfix/f3b1.mdl",
	"models/half-dead/metrollfix/f2b1.mdl",
	"models/half-dead/metrollfix/f1b1.mdl"
}

function FACTION:OnCharacterCreated(client, character)
    local id = Schema:ZeroNumber(math.random(1, 99999), 5)
    local inventory = character:GetInventory()
    local Timestamp = os.time()
    local TimeString = os.date( "%H:%M:%S - %d/%m/%Y" , Timestamp )

    character:SetData("cid", id)
    inventory:Add("cid", 1, {
        ["citizen_name"] = character:GetName(),
        ["cid"] = id,
        ["issue_date"] = TimeString,
        ["associated_character"] = character:GetID(),
    })
end

FACTION_METRO = FACTION.index
