
ITEM.name = "Medical Kit"
ITEM.model = Model("models/bioshockinfinite/health_pack.mdl")
ITEM.description = "A bag containing basic surgical supplies and medical supplies."
ITEM.category = "Medical"
ITEM.price = 50

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 30, client:GetMaxHealth()))
	end
}
