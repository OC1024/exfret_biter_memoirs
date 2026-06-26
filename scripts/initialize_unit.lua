---@param event {entity:LuaEntity, keep_hidden:boolean}|EventData.on_entity_spawned
function initialize_unit(event)
    local entity = event.entity
    if entity.type ~= "unit" then return end

    local biter_name = storage.biter_names[math.random(storage.biter_name_count)]
    ---@cast biter_name -?
    local show_name, renderObj = false, nil

    if (not event.keep_hidden)
    and math.random() < settings.global["exfret-biter-memoirs-name-chance"].value then
        show_name = true
        renderObj = rendering.draw_text{
            text = biter_name.name,
            color = biter_name.color or {1,1,1,1},
            surface = entity.surface_index,
            target = entity,
            alignment = "center",
            vertical_alignment = "top",
            use_rich_text = true,
        }
    end

    storage.unit_info[entity.unit_number--[[@as integer]]] = {
        name = biter_name,
        show_name = show_name,
        entity = event.entity,
        birth = game.tick,
        nametag = renderObj
    }
end