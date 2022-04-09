for i,v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer then
			local current_player_character = v.Character
			local exploiter_head_position = game.Players.LocalPlayer.Character.Head.Position
			local new_cframe = CFrame.new(exploiter_head_position.X+teleport_player_locally_offset, exploiter_head_position.Y, exploiter_head_position.Z)
			v.Character:SetPrimaryPartCFrame(new_cframe)
			v.Character.Head.Anchored = true
		end
	end
	
	for i,v in pairs(game.Players:GetChildren()) do
		local player_character = v.Character
		for j,w in pairs(player_character:GetChildren()) do
			if w:FindFirstChild("Handle") ~= nil and w.Parent.Name ~= game.Players.LocalPlayer.Character.Name then
				w:Remove()
			end
		end
	end
