
ITEM.name = "Canned Sardines"
ITEM.model = Model("models/bioshockinfinite/sardine_can_open.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A rusted pre-war can with a scratched off label, containing sardines with an odd after taste"
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 5, 100))

		return true
	end,
}