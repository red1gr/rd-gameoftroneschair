local currentChair = nil
local isSitting = false
RegisterCommand("rd1", function(source, args)
    if isSitting then
        print("Already sitting. Use /stopchair to get up.")
        return
    end
    local animType = args[1] or "1" 
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local animData = {
        ["1"] = {
            dict = "timetable@ron@ig_5_p3",
            anim = "ig_5_p3_base",
            placement = {0.025, -0.2, -0.1, 45.0, -5.0, 180.0}
        },
        ["2"] = {
            dict = "timetable@reunited@ig_10",
            anim = "base_amanda",
            placement = {0.025, -0.15, -0.1, 45.0, 5.0, 180.0}
        },
        ["3"] = {
            dict = "timetable@ron@ig_3_couch",
            anim = "base",
            placement = {-0.05, 0.0, -0.2, 5.0, 0.0, 180.0}
        }
    }
    local data = animData[animType]
    if not data then
        print("Usage: /lawnchair [1|2|3]")
        return
    end
    local model = GetHashKey("rd1")
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    local obj = CreateObject(model, coords.x, coords.y, coords.z + 1.0, true, true, false)
    SetEntityHeading(obj, GetEntityHeading(playerPed))
    PlaceObjectOnGroundProperly(obj)
    RequestAnimDict(data.dict)
    while not HasAnimDictLoaded(data.dict) do Wait(0) end
    TaskPlayAnim(playerPed, data.dict, data.anim, 8.0, -8.0, -1, 1, 0, false, false, false)
    local boneIndex = GetPedBoneIndex(playerPed, 0)
    AttachEntityToEntity(
        obj,
        playerPed,
        boneIndex,
        data.placement[1],
        data.placement[2],
        data.placement[3],
        data.placement[4],
        data.placement[5],
        data.placement[6],
        true,
        true,
        false,
        true,
        1,
        true
    )
    isSitting = true
    currentChair = obj
    print("You sat down on lawnchair " .. animType)
end)
RegisterCommand("stopchair", function()
    local playerPed = PlayerPedId()
    if isSitting then
        ClearPedTasksImmediately(playerPed)
        if DoesEntityExist(currentChair) then
            DeleteEntity(currentChair)
        end
        currentChair = nil
        isSitting = false
        print("You stood up and stopped the emote.")
    else
        print("You’re not sitting on a lawnchair.")
    end
end)
