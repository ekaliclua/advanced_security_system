ASSystem.Camera = {}
ASSystem.Camera.List = {}

function ASSystem.Camera:RegisterCamera(eCamera)
    
    if not IsValid(eCamera) then return end


    local iCameraID = #self.List + 1

    local sCameraIP = ASSystem.Constants.CameraInfo["IPPrefix"]:format(iCameraID)

    self.List[iCameraID] = {
        eCamera = eCamera,
        sName = ("Camera %i"):format(iCameraID),
        iID = iCameraID,
        sIP = sCameraIP,
        iPort = ASSystem.Constants.CameraInfo["Port"]
    }

    print(("[ASSystem] Registered camera %s with IP %s and port %i"):format(self.List[iCameraID].sName, self.List[iCameraID].sIP, self.List[iCameraID].iPort))


    return self.List[iCameraID]
    
end

function ASSystem.Camera:UnregisterCamera(iCameraID)

    if not isnumber(iCameraID) then return end
    if not self.List[iCameraID] then return end

    self.List[iCameraID] = nil

    print(("[ASSystem] Unregistered camera %i"):format(iCameraID))
    
end


-- ASSystem.Laser = {}
-- ASSystem.Laser.List = {}

-- function ASSystem.Laser:RegisterLaser(eLaser)
    
    -- if not IsValid(eLaser) then return end

    -- local iLaserID = #self.List + 1

    -- local sLaserIP = ASSystem.Constants.LaserInfo["IPPrefix"]:format(iLaserID)
-- end