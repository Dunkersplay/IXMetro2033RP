
ITEM.name = "Cooked Dogmeat"
ITEM.model = Model("models/kek1ch/meat_pseudodog.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A half cut of a soup can containing cooked dog liver and a broth containing dog meat."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 8, 100))

		return true
	end,
}
