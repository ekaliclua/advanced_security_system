function ASSystem:GetLang()
    return ASSystem.Config.Lang
end

function ASSystem:GetPhrase(sPhrase, ...)
    local sLang = ASSystem:GetLang()
    local tLangPhrases = ASSystem.Lang[sLang] or ASSystem.Lang["en"]
    
    local sPhraseText = tLangPhrases[sPhrase] or "Phrase not found"
    
    return string.format(sPhraseText, ...)
end

function ASSystem:PrintDebug(sMessage, ...)
    local tArgs = {...}

    print("[ASSystem] " .. string.format(sMessage, unpack(tArgs)))
end


local ENTITY = FindMetaTable("Entity")

function ENTITY:IsSecurityCamera()
    if not IsValid(self) then return false end

    return ASSystem.Constants.ClassCamera[self:GetClass()]
end