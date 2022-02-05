local wk = require"which-key"

vim.o.timeoutlen = 300

local mappings = {
  ['/'] = { "<Plug>kommentary_line_default<cr>", "Comment" },
  ["w"] = { "<cmd>w!<CR>", "Save" },
  ["q"] = { "<cmd>q!<CR>", "Quit" },
  ["c"] = { "<cmd>bd!<CR>", "Close Buffer" },
  ["f"] = { "<cmd>Telescope find_files<CR>", "Find File" },
  e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
  ["g"] = {
    name = "Git",
    a = { "<cmd>Gitsigns attach<cr>", "Attach" },
    D = { "<cmd>Gitsigns detach_all<cr>", "Detach All" },
    d = { "<cmd>Gitsigns diffthis<cr>", "Diff" },
    b = { "<cmd>Gitsigns blame_line<cr>", "Blame Line" },
    c = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Blame Current Line" },
    g = { "<cmd>lua_lazygit_toggle()<cr>", "LazyGit" },
    p = { "<cmd>Gitsigns preview_hunk<cr>", "Preview Hunk" },
    S = { "<cmd>Gitsigns select_hunk<cr>", "Select Hunk" },
    r = { "<cmd>Gitsigns reset_buffer<cr>", "Reset Buffer" },
    R = { "<cmd>Gitsigns reset_buffer_index<cr>", "Reset Buffer Index" },
    l = { "<cmd>Gitsigns toggle_linehl<cr>", "Toggle LineHl" },
    n = { "<cmd>Gitsigns toggle_numhl<cr>", "Toggle NumberHl" },
    s = { "<cmd>Gitsigns toggle_signs<cr>", "Toggle Signs" },
    w = { "<cmd>Gitsigns toggle_word_diff<cr>", "Toggle Word Diff" },
    L = { "<cmd>Gitsigns setqflist<cr>", "List" },
  },
  h = {
    name = "Help",
    t = { "<cmd>Telescope builtin<cr>", "Telescope" },
    s = { "<cmd>Telescope highlights<cr>", "Search Highlight Groups" },
    -- l = { [[<cmd>TSHighlightCapturesUnderCursor<cr>]], "Highlight Groups at cursor" },
    f = { "<cmd>Telescope filetypes<cr>", "File Types" },
    o = { "<cmd>Telescope vim_options<cr>", "Options" },
    a = { "<cmd>Telescope autocommands<cr>", "Auto Commands" },
  },
  p = {
    name = "Packer",
    C = { "<cmd>PackerClean<cr>", "Clean" },
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    l = { "<cmd>PackerLoad<cr>", "Load" },
    p = { "<cmd>PackerProfile<cr>", "Profile" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },
  s = {
    name = "Search",
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope colorscheme<CR>", "Colorscheme" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    f = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media Files" },
    g = { "<cmd>Telescope live_grep<CR>", "Grep" },
    h = { "<cmd>Telescope help_tags<cr>", "Help Pages" },
    k = { "<cmd>Telescope keymaps<cr>", "Key Maps" },
    m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    r = { "<cmd>Telescope registers<cr>", "Registers" },
  }
}


wk.register(mappings, { prefix = "<leader>" })
