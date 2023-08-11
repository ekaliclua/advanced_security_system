include("shared.lua")

local Laser = Material( "cable/redlaser" )

function ENT:Draw()

    self:DrawModel()

    local vecPos = self:GetPos()

    if LocalPlayer():GetPos():Distance(vecPos) > 500 then return end

    -- local angAngles = self:GetAngles()
    -- angAngles:RotateAroundAxis(angAngles:Forward(), 90)
    -- angAngles:RotateAroundAxis(angAngles:Right(), 270)

    -- local traceLine = util.TraceLine({
    --     start = vecPos,
    --     endpos = vecPos + angAngles:Up() * 1000,
    --     filter = self
    -- })

    -- local vecPos2 = traceLine.HitPos

end

function ENT:Initialize()  
	hook.Add("PreDrawViewModel","AS_laser_"..self:EntIndex(),function(vm,ply)
        if not self:IsValid() then
            hook.Remove("PreDrawViewModel","AS_laser_"..self:EntIndex())
            return
        end
		render.SetMaterial( Laser )
		render.DrawBeam( self:GetPos(), LocalPlayer():GetPos(), 5, 0, 1, Color( 175, 52, 52) ) 
	end)	
end

