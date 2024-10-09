if SERVER then
	hook.Add("TTTBeginRound", "ReplaceDetectiveHat", function()
		local eligibleGroups = { "superadmin", "admin", "supporters", "vip" }

		for _, ply in ipairs(player.GetAll()) do
			if ply:GetRole() == ROLE_DETECTIVE and table.HasValue(eligibleGroups, ply:GetUserGroup()) then
				ply:AssignHat()
			end
		end
	end)
end
