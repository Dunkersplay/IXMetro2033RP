
ITEM.name = "Tuskano On A Stick"
ITEM.model = Model("models/kek1ch/stick_tushkano.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A large wooden pole containing cooked mutated Tuskano."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 4, 100))

		return true
	end,
}
