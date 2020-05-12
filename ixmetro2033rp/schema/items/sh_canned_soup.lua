
ITEM.name = "Can of Soup"
ITEM.model = Model("models/props_junk/garbage_metalcan002a.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A chunky meat soup, preserved in a rusted can from Pre-War times. It appears slightly chunky."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 4, 100))

		return true
	end,
}