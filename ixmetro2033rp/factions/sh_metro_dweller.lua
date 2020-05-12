
FACTION.name = "Metro Dweller"
FACTION.description = "A dweller of the post-apocalyptic Metro tunnels."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true

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
