
FACTION.name = "The Red Line"
FACTION.description = "A Neo-Communist faction aimed at restoring the USSR in the Metro."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = true

function FACTION:OnCharacterCreated(client, character)
    inventory:Add("suitcase", 1)
end

FACTION_RED = FACTION.index
