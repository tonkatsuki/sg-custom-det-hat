local PLAYER = FindMetaTable("Player")

function PLAYER:AssignHat()
	if IsValid(self.hat) then
		SafeRemoveEntity(self.hat)
	end

	local hat = ents.Create("ttt_hat_deerstalker")
	if IsValid(hat) then
		hat:SetPos(self:GetPos() + Vector(0, 0, 70))
		hat:SetAngles(self:GetAngles())
		hat:SetParent(self)

		hat:Spawn()
		hat:SetModel("models/player/items/humans/top_hat.mdl")

		self.hat = hat
	end
end
