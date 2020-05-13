
ITEM.name = "Cram"
ITEM.model = Model("models/fallout 3/cram.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A rusted pre-war can storing a rather chunky, meat paste within it."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 4, 100))

		return true
	end,
}
