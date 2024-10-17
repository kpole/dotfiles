-- define your colorscheme here
-- [monkai, 
--  monokai-pro, 
--  tokyonight,
--  tokyonight-storm,
--  tokyonight-day,
--  tokyonight-moon
--  catppuccin
--  catppuccin-latte
--  catppuccin-frappe
--  catppuccin-macchiato 
--  catppuccin-mocha
--  bamboo
--  ]
local colorscheme = 'catppuccin'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

