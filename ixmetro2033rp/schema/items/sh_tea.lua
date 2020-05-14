
ITEM.name = "Cup of Tea"
ITEM.model = Model("models/props_junk/garbage_coffeemug001a.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A ceramic cup, filled with tea."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 8, client:GetMaxHealth()))

		return true
	end,
}
