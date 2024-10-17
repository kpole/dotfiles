local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("没有找到 nvim-telescope")
  return
end

telescope.setup {
  defaults = {

  },
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    }
  }
}
