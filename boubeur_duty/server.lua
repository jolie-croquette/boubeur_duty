------ duty

RegisterServerEvent('boubeur_mechanic:changeJob',function(job)
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.job.grade
	local total = 0
	if ESX.DoesJobExist(job, grade) then -- assurez-vous que le poste et le grade sont tous deux définis dans la base de données
		xPlayer.setJob(job, grade)
		TriggerEvent('boubeur_mechanic:updateBlips')
		if xPlayer.job.name == 'offmechanic' and Config.AutoStock then
			for k, v in pairs(Config.ArmoryAutoStock) do
				local got = xPlayer.getInventoryItem(v.item).count
				local have = v.amt
				if got > 0 then
					have = have - got
				end
				if have > 0 then
					xPlayer.addInventoryItem(v.item,have)
					total = total + v.cost * v.amt
				end
			end
			TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
				account.removeMoney(total)
			end) 
		end
	end 


end)

------- 