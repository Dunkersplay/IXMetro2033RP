
ITEM.name = "Nosalis Cheeseburger"
ITEM.model = Model("models/food/burger.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A burger made from the meat and cheese from a Nosalis mutant."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 1, 100))

		return true
	end,
}
