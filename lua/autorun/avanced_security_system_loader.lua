ASSystem = ASSystem or {}
ASSystem.Lang = ASSystem.Lang or {}

local function AddLuaFile(sDir)
    AddCSLuaFile("advanced_security_system/"..sDir)
end

local function IncludeLuaFile(sDir)
    include("advanced_security_system/"..sDir)
end

local function IncludeSharedFile(sDir)
    AddCSLuaFile("advanced_security_system/"..sDir)
    include("advanced_security_system/"..sDir)
end

for _, sDir in pairs(file.Find("advanced_security_system/langages/*.lua", "LUA")) do
    AddCSLuaFile("advanced_security_system/langages/"..sDir)
    include("advanced_security_system/langages/"..sDir)
    print("[ASSystem] Loaded langage : "..sDir)
end

IncludeSharedFile("shared/sh_config.lua")
IncludeSharedFile("shared/sh_functions.lua")
IncludeSharedFile("shared/sh_hooks.lua")
IncludeSharedFile("shared/sh_constants.lua")

if SERVER then
    IncludeLuaFile("server/sv_functions.lua")
    IncludeLuaFile("server/sv_hooks.lua")
    IncludeLuaFile("server/sv_network.lua")
    IncludeLuaFile("server/sv_main.lua")

    AddLuaFile("client/cl_functions.lua")
    AddLuaFile("client/cl_fonts.lua")
    AddLuaFile("client/cl_hooks.lua")
    AddLuaFile("client/cl_network.lua")
    AddLuaFile("client/cl_main.lua")
else
    IncludeLuaFile("client/cl_functions.lua")
    IncludeLuaFile("client/cl_fonts.lua")
    IncludeLuaFile("client/cl_hooks.lua")
    IncludeLuaFile("client/cl_network.lua")
    IncludeLuaFile("client/cl_main.lua")
end

local sLongMsg = [[
    
     ___   __________            __               
    /   | / ___/ ___/__  _______/ /____  ____ ___ 
   / /| | \__ \\__ \/ / / / ___/ __/ _ \/ __ `__ \
  / ___ |___/ /__/ / /_/ (__  ) /_/  __/ / / / / /
 /_/  |_/____/____/\__, /____/\__/\___/_/ /_/ /_/ 
                  /____/                          

]]

print(sLongMsg .." \n[ASSystem] Loaded successfully !")

resource.AddFile("models/cameraf606.mdl")
-- resource.AddSingleFile("materials/advanced_security_system/background_tool.png")