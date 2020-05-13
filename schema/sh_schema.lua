Schema.name = "Metro 2033 Roleplay"
Schema.author = "Dunkersplay"
Schema.description = "Welcome to the Underground."

ix.currency.model = "models/ninja/signalvariance/weapons/akm_mag.mdl"

ix.container.Register("models/devcon/mrp/props/cabinet_closed.mdl", {
	name = "Storage Locker",
	description = "A rusted metallic storage locker.",
	width = 10,
	height = 6,
})

function Schema:CanAutoFormatMessage(speaker, chatType, text)
	return chatType == "ic" or chatType == "w" or chatType == "y" or chatType == "radio" or chatType == "radio_eavesdrop" or chatType == "radio_eavesdrop"
end

function Schema:InitializedChatClasses()
	do
		local CLASS = {}
		CLASS.color = Color(75, 150, 50)
		CLASS.format = "%s radios in \"%s\""
	
		function CLASS:CanHear(speaker, listener)
			local character = listener:GetCharacter()
			local inventory = character:GetInventory()
			local bHasRadio = false
	
			for k, v in pairs(inventory:GetItemsByUniqueID("handheld_radio", true)) do
				if (v:GetData("enabled", false) and speaker:GetCharacter():GetData("frequency") == character:GetData("frequency")) then
					bHasRadio = true
					break
				end
			end
	
			return bHasRadio
		end
	
		function CLASS:OnChatAdd(speaker, text)
			chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
		end
	
		ix.chat.Register("radio", CLASS)
	end
	
	do
		local CLASS = {}
		CLASS.color = Color(255, 255, 175)
		CLASS.format = "%s radios in \"%s\""
	
		function CLASS:GetColor(speaker, text)
			if (LocalPlayer():GetEyeTrace().Entity == speaker) then
				return Color(175, 255, 175)
			end
	
			return self.color
		end
	
		function CLASS:CanHear(speaker, listener)
			if (ix.chat.classes.radio:CanHear(speaker, listener)) then
				return false
			end
	
			local chatRange = ix.config.Get("chatRange", 280)
	
			return (speaker:GetPos() - listener:GetPos()):LengthSqr() <= (chatRange * chatRange)
		end
	
		function CLASS:OnChatAdd(speaker, text)
			chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
		end
	
		ix.chat.Register("radio_eavesdrop", CLASS)
	end

	ix.chat.Register("itclose", {
		OnChatAdd = function(self, speaker, text)
			chat.AddText(Color(142, 68, 173), "*** "..text)
		end,
		CanHear = ix.config.Get("chatRange", 280) * 0.25,
		prefix = {"/ItClose","/DoClose"},
		description = "@cmdItClose",
		indicator = "chatPerforming",
		deadCanChat = true
	})

	ix.chat.Register("itfar", {
		OnChatAdd = function(self, speaker, text)
			chat.AddText(Color(142, 68, 173), "*** "..text)
		end,
		CanHear = ix.config.Get("chatRange", 280) * 2,
		prefix = {"/ItFar","/DoFar"},
		description = "@cmdItFar",
		indicator = "chatPerforming",
		deadCanChat = true
	})

	ix.chat.Register("meclose", {
		format = "*** %s %s",
		GetColor = ix.chat.classes.ic.GetColor,
		CanHear = ix.config.Get("chatRange", 280) * 0.25,
		prefix = {"/Mel", "/ActionClose"},
		description = "@cmdMeClose",
		indicator = "chatPerforming",
		deadCanChat = true
	})

	ix.chat.Register("mefar", {
		format = "*** %s %s",
		GetColor = ix.chat.classes.ic.GetColor,
		CanHear = ix.config.Get("chatRange", 280) * 2,
		prefix = {"/Med", "/ActionFar"},
		description = "@cmdMeFar",
		indicator = "chatPerforming",
		deadCanChat = true
	})
end

function Schema:ZeroNumber(number, length)
	local amount = math.max(0, length - string.len(number))
	return string.rep("0", amount)..tostring(number)
end

-- Include netstream
ix.util.Include("libs/thirdparty/sh_netstream2.lua")

ix.util.Include("sh_configs.lua")
ix.util.Include("sh_commands.lua")

ix.util.Include("cl_schema.lua")
ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sh_voices.lua")
ix.util.Include("sh_anims.lua")
ix.util.Include("sv_schema.lua")
ix.util.Include("sv_hooks.lua")

ix.flag.Add("v", "Access to light blackmarket goods.")
ix.flag.Add("V", "Access to heavy blackmarket goods.")
