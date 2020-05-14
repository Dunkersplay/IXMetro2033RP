ITEM.name = "Kartooshka Passport"
ITEM.model = "models/kek1ch/book2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A passport marking the KPF logo on the cover. It has a leather covering on the front and back. When opened, on the left is a sketch of the individual with their full name, and on the right is a blank piece of paper for leaving information of transit, etc."
ITEM.weight = 0.1

ITEM.functions.use = {
	name = "Write",
	icon = "icon16/pencil.png",
	OnRun = function(item)
		local client = item.player
		local id = item:GetID()
		if (id) then
			netstream.Start(client, "receivePaper", id, item:GetData("PaperData") or "")
		end
		return false
	end
}
