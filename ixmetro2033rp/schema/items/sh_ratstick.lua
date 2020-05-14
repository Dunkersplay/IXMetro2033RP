
ITEM.name = "Cooked Rat Stick"
ITEM.model = Model("models/fallout 3/iguana_stick.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A wooden stick with cooked rat on it."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 1, 100))

		return true
	end,
}
