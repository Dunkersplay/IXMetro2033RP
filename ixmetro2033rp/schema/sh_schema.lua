Schema.name = "Metro 2033 Roleplay"
Schema.author = "Dunkersplay"
Schema.description = "Welcome to the Underground."

-- Include netstream
ix.util.Include("libs/thirdparty/sh_netstream2.lua")

ix.util.Include("sh_configs.lua")
ix.util.Include("sh_commands.lua")

ix.util.Include("cl_schema.lua")
ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sh_voices.lua")
ix.util.Include("sv_schema.lua")
ix.util.Include("sv_hooks.lua")

ix.flag.Add("v", "Access to light blackmarket goods.")
ix.flag.Add("V", "Access to heavy blackmarket goods.")
