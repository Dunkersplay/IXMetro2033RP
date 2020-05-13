
ITEM.name = "Cooked Pork"
ITEM.model = Model("models/fallout 3/steak.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A cooked slab of pork, looking to be rather nicely cooked."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 15, 100))

		return true
	end,
}
