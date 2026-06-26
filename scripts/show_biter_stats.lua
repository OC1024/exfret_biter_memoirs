---TODO: flesh out and use `storage`
---HACK: emmylua does not handle LuaGuiElement.add right now

---@param ticks MapTick
---@return LocalisedString
local function format_time(ticks)
    local total_seconds = math.floor(ticks / 60)
    -- local seconds = total_seconds % 60
    local minutes = math.floor(total_seconds / 60) % 60
    local hours = math.floor(total_seconds / 3600) % 24
    local days = math.floor(total_seconds / 86400)

    local added_time = false
    ---@type LocalisedString
    local message = {""}
    ---@cast message -?
    if days > 0 then
        message[#message+1] = {"days", days}
        added_time = true
    end

    if hours > 0 then
        if added_time then
        message[#message+1] = ", "
        end
        message[#message+1] = {"hours", hours}
        added_time = true
    end

    if minutes > 0 then
        if added_time then
        message[#message+1] = ", "
        end
        message[#message+1] = {"minutes", minutes}
        added_time = true
    end

    -- if seconds > 0 then
    --     if added_time then
    --     message[#message+1] = ", "
    --     end
    --     message[#message+1] = {"seconds", seconds}
    --     added_time = true
    -- end

    if #message > 2 then
        message[#message-1] = {""," ",{"and"}," ",}
    end

    return message
end

---@param player LuaPlayer
---@param biter LuaEntity
function show_biter_gui(player, biter)
    local unit_info = storage.unit_info[biter.unit_number--[[@as int]]]
    local pollution = biter.surface.get_pollution(biter.position)

    local wellbeing_key = "biter-info.wellbeing-0"
    if pollution > 0 then
        wellbeing_key = "biter-info.wellbeing-1"
    elseif pollution >= 10 then
        wellbeing_key = "biter-info.wellbeing-10"
    elseif pollution >= 30 then
        wellbeing_key = "biter-info.wellbeing-30"
    elseif pollution >= 80 then
        wellbeing_key = "biter-info.wellbeing-80"
    elseif pollution >= 200 then
        wellbeing_key = "biter-info.wellbeing-200"
    end


    ---@diagnostic disable-next-line: missing-fields
    local stats_panel = player.gui.screen.add{
        ---@diagnostic disable-next-line: assign-type-mismatch
        type = "frame", 
        name = "biter_stats_panel", 
        caption = {"biter-info.title"}, 
        direction = "horizontal"
    }
    ---@diagnostic disable-next-line: missing-fields
    local left_panel = stats_panel.add{
        ---@diagnostic disable-next-line: assign-type-mismatch
        type = "flow",
        direction = "vertical",
    }
    ---@diagnostic disable-next-line: missing-fields
    left_panel.add{
        ---@diagnostic disable-next-line: assign-type-mismatch
        type = "label", 
        caption = {"biter-info.name", unit_info.name.name}
    }
    ---@diagnostic disable-next-line: missing-fields
    left_panel.add{
        ---@diagnostic disable-next-line: assign-type-mismatch
        type = "label", 
        caption = {"biter-info.age", format_time(game.tick - unit_info.birth)}
    }
    ---@diagnostic disable-next-line: missing-fields
    left_panel.add{
        ---@diagnostic disable-next-line: assign-type-mismatch
        type = "label",
        caption = {"biter-info.wellbeing", {wellbeing_key}}
    }
    --- Sooon:tm:
    -- ---@diagnostic disable-next-line: missing-fields
    -- local camera = stats_panel.add{
    --     ---@diagnostic disable-next-line: assign-type-mismatch
    --     type = "camera",
    --     position = biter.position,
    --     surface_index = biter.surface_index,
    -- }
    -- camera.style.width = 200
    -- camera.style.height = 200
end