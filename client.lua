function Open_JobCenter()
    SendNUIMessage({
        action = 'empty'
    })
    SetNuiFocus(true, true)
    for k, v in ipairs(Config['JobCenter']) do
        SendNUIMessage({
            action = 'AddAppendLoc',
            job_name = v.job_name,
            job_price = v.Job_earned,
            job_description = v.job_description,
            font_awesome_icon = v.font_awesome_icon,
            job_name_sql = v.Sql_job_name
        })
        print(v.LocationName)
    end 
    SendNUIMessage({
        action = 'endumployed',
    })
    SendNUIMessage({
        action = 'Open',
    })
end


exports("OpenJobCenter", Open_JobCenter)

RegisterNetEvent('pixel-jobcenter:open_jobcenter', function()
    Open_JobCenter()
end)

RegisterNUICallback('SetJob', function(data)
    SetNuiFocus(false, false)
        TriggerServerEvent('pixel-jobcenter:Setjob', data.job, 1)
        print(data.job)

        if data.job == "unemployed" then
            TriggerServerEvent('pixel-jobcenter:Setjob', data.job, 0)
        end
    SendNUIMessage({ 
        action='close'
    })
end)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)



RegisterCommand('test333', function ()
    Open_SpawnSelect()
end)


