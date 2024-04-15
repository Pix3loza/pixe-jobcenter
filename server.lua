ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('pixel-jobcenter:Setjob', function (job, grade)
    local xPlayer = ESX.GetPlayerFromId(source)
    if ESX.DoesJobExist(job, grade) then 
        xPlayer.setJob(job, grade)
    end
end)
