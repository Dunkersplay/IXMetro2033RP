
ITEM.name = "Mushroom Water"
ITEM.model = Model("models/props_junk/garbage_glassbottle001a.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A glass bottle filled with water, freshly squeezed from a mushroom."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 9, client:GetMaxHealth()))

		return true
	end,
}