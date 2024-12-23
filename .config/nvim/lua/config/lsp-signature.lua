local status, lsp_signature = pcall(require, "lsp_signature")
if not status then
  vim.notify("not find lsp_signature")
  return
end

lsp_signature.setup({
  hint_enable = false,
  floating_window_off_x = 5,
  floating_window_off_y = function() -- adjust float windows y position. e.g. set to -2 can make floating window move up 2 lines
    local linenr = vim.api.nvim_win_get_cursor(0)[1] -- buf line number
    local pumheight = vim.o.pumheight
    local winline = vim.fn.winline() -- line number in the window
    local winheight = vim.fn.winheight(0)

    -- window top
    if winline - 1 < pumheight then
      return pumheight
    end

    -- window bottom
    if winheight - winline < pumheight then
      return -pumheight
    end
    return 0
  end,
  close_timeout = 1000,
})
