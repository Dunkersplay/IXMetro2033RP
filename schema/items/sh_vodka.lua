
ITEM.name = "Bottle of Vodka"
ITEM.model = Model("models/props_junk/GlassBottle01a.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A glass bottle with a label on it, reading: Glorious Homeland Vodka, Est. 1973."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 3, client:GetMaxHealth()))

		return true
	end,
}