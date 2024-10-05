local wezterm = require("wezterm")
local config = {}

-- import modules
local colors = require("colors")
local fonts = require("fonts")
local window = require("window")
local keybindings = require("keybindings")

-- launch settings
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.automatically_reload_config = true

-- performance settings
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- merge configurations
for k, v in pairs(colors) do
	config[k] = v
end
for k, v in pairs(fonts) do
	config[k] = v
end
for k, v in pairs(window) do
	config[k] = v
end
for k, v in pairs(keybindings) do
	config[k] = v
end

return config
