PLUGIN.name = "Ranged Actions"
PLUGIN.author = "Huargenn"
PLUGIN.description = "Plugin que añade los /me y los /it con larga y corta distancia."

-- [[ Comandos personalizados ]] --

ix.chat.Register("mel", {
	format = "*** %s %s",
	GetColor = function(self, speaker, text)
		local color = ix.chat.classes.ic:GetColor(speaker, text)

		-- Make the whisper chat slightly darker than IC chat.
		return Color(255, 116, 0)
	end,
	CanHear = ix.config.Get("chatRange", 280) * 3,
	prefix = {"/Mel"},
	description = "@cmdMe",
	indicator = "chatPerforming",
	deadCanChat = true
})

ix.chat.Register("mec", {
	format = "* %s %s",
	GetColor = function(self, speaker, text)
		local color = ix.chat.classes.ic:GetColor(speaker, text)

		-- Make the whisper chat slightly darker than IC chat.
		return Color(255, 116, 0)
	end,
	CanHear = ix.config.Get("chatRange", 280) * 0.5,
	prefix = {"/Mec"},
	description = "@cmdMe",
	indicator = "chatPerforming",
	deadCanChat = true
})
		
ix.chat.Register("itl", {
	OnChatAdd = function(self, speaker, text)
		chat.AddText(Color(0, 185, 255), "*** "..text)
	end,
	CanHear = ix.config.Get("chatRange", 280) * 3,
	prefix = {"/Itl"},
	description = "@cmdIt",
	indicator = "chatPerforming",
	deadCanChat = true	
})

ix.chat.Register("itc", {
	OnChatAdd = function(self, speaker, text)
		chat.AddText(Color(0, 185, 255), "* "..text)
	end,
	CanHear = ix.config.Get("chatRange", 280) * 0.5,
	prefix = {"/Itc"},
	description = "@cmdIt",
	indicator = "chatPerforming",
	deadCanChat = true	
})
