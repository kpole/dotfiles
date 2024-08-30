local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


nvim_tree.setup({
  -- 完全禁止内置 netrw
  -- disable_netrw = true,
  -- 是否显示 git 状态
  git = {
    enable = true,
  },
  sort_by = "case_sensitive",
  -- 过滤文件
  filters = {
    dotfiles = false, -- 过滤 dotfile
    custom = { "node_modules" }, -- 其他过滤目录
  },
  view = {
    -- 文件浏览器展示位置，左侧：left, 右侧：right
    side = "left",
    -- 行号是否显示
    number = true,
    relativenumber = true,
    -- 显示图标
    signcolumn = "yes", 
    width = 34,
  },
  renderer = {
    group_empty = true,
  },
  --actions = {
    --open_file = {
      -- 首次打开大小适配
      --   resize_window = true,
      -- 打开文件时关闭 tree
      --      quit_on_open = false,
      -- },
      --  },
})
