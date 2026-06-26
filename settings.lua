data:extend({
    {
        type = "double-setting",
        name = "exfret-biter-memoirs-name-chance",
        localised_name = "Biter Name Chance",
        minimum_value = 0,
        maximum_value = 1,
        setting_type = "runtime-global",
        default_value = 0.25 -- Do we really want this with Biter Info? It *will* make ages wrong
    },
    {
        type = "double-setting",
        name = "exfret-biter-memoirs-message-chance",
        localised_name = "Biter Message Chance",
        minimum_value = 0,
        maximum_value = 1,
        setting_type = "runtime-global",
        default_value = 0.07
    },
    {
        type = "double-setting",
        name = "exfret-biter-memoirs-min-message-delay",
        localised_name = "Minimum Message Delay",
        localised_description = "Minimum time (in seconds) after one biter memoir message before another can appear.",
        minimum_value = 0,
        maximum_value = 3600,
        setting_type = "runtime-global",
        default_value = 3
    }
})