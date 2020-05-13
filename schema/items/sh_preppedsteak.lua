
ITEM.name = "Pre-Cooked Steak"
ITEM.model = Model("models/fallout 3/steak_box.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A pre-war microwave dinner containing pre-cooked steak, a slightly mouldy brownie, and pre-cooked fries."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 8, 100))

		return true
	end,
}
