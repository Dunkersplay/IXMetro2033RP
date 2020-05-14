
ITEM.name = "Metro Mushrooms"
ITEM.model = Model("models/devcon/mrp/props/mushroom_2.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A pair of mushrooms glowing green on a similar stem"
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 8, 100))

		return true
	end,
}