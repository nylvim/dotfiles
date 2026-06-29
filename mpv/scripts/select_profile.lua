local function select_profile()
    local path = mp.get_property("path", "")
    local width = mp.get_property_number("width", 100000)
    local fps = mp.get_property_number("container-fps", 100000)

    if path:find("/mnt/nfs/bittorrent/anime") == 1 then
        if width >= 1080 then
            return "anime-high-a4k-1080p"
        elseif width >= 720 then
            return "anime-high-a4k-720p"
        else
            return "anime-high-artcnn"
        end
    end

    return "high"
end

mp.register_event("file-loaded", function()
    local profile = select_profile()
    mp.commandv("apply-profile", profile)
    mp.osd_message("Profile: " .. profile, 3)
end)
