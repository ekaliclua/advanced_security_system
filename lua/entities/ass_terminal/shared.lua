ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Terminal"
ENT.Category = "ASSystem - Your Security"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.Author = "Ekali"

function ENT:SetupDataTables()
    -- self:NetworkVar("String", 0, "CameraName")
    -- self:NetworkVar("Int", 0, "CameraID")
    -- self:NetworkVar("String", 2, "CameraIP")
    -- self:NetworkVar("Int", 3, "CameraPort")
    -- self:NetworkVar("Vector", 0, "CameraViewPos")

    -- if SERVER then
    --     local tCamera = ASSystem.Camera:RegisterCamera(self)

    --     self:SetCameraName(tCamera.sName)
    --     self:SetCameraID(tCamera.iID)
    --     self:SetCameraIP(tCamera.sIP)
    --     self:SetCameraPort(tCamera.iPort)
    -- end

end