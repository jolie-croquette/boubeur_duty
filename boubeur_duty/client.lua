---------------------------------------- duty 

    exports['qtarget']:AddBoxZone('onOffDuty', vector3(875.72, -2098.00, 30.48), 1, 1, {  ---- coords
        name='onOffDuty',
        heading=0.0,
        debugPoly=false,
        minZ=49.00,
        maxZ=50.00
    }, {
        options = {
            {
                event = "boubeur_mechanic:getDuty",
                icon = "fa-solid fa-clipboard-user",
                label = 'Prendre son service',
                job = {['mechanic'] = 0, ['offmechanic'] = 0},
                state = 'on'
            },
            {
                event = "boubeur_mechanic:getDuty",
                icon = "fa-solid fa-clipboard-user",
                label = 'Fin de service',
                job = {['mechanic'] = 0, ['offmechanic'] = 0},
                state = 'off'
            },
        },
            distance = 3.0
    })


RegisterNetEvent('boubeur_mechanic:getDuty',function(data)
    if data.state == 'on' then
        if ESX.PlayerData.job.name == 'offmechanic' or ESX.PlayerData.job.name == 'mechanic' then

            TriggerServerEvent('boubeur_mechanic:changeJob','mechanic')
			
            ESX.ShowNotification('Vous avez pris votre service!')  --- notifications
        end
    elseif data.state == 'off' then
        if ESX.PlayerData.job.name == 'offmechanic' or ESX.PlayerData.job.name == 'mechanic' then
		
            TriggerServerEvent('boubeur_mechanic:changeJob','offmechanic')
			
            ESX.ShowNotification('Vous etes maintenant en pause!') --- notifications
        end
    end
end)