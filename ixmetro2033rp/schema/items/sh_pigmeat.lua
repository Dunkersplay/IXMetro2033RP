
ITEM.name = "Raw Pig"
ITEM.model = Model("models/kek1ch/raw_dog.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A slab of meat, cut from the carcass of a pig. It's recommended not to consume this raw."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 30, 100))

		return true
	end,
}
