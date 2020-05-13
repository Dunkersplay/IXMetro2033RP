
ITEM.name = "Baked Beans"
ITEM.model = Model("models/bioshockinfinite/baked_beans.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A rusted can containing beans inside."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 8, 100))

		return true
	end,
}
