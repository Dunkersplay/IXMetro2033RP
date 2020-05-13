
ITEM.name = "Metro Moonshine"
ITEM.model = Model("models/props_junk/glassjug01.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A glass jug filled to the brim with moonshine. Its smell stings the nostrils, and it appears to be rather strong."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 20, client:GetMaxHealth()))

		return true
	end,
}