local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>b"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
  }
}
M.custom = {
  n = {
    -- Buffers
    ["<leader>nb"] = { "<cmd> enew <CR>", "[N]ew [B]uffer" },
    -- Line number
    ["<leader>tln"] = { "<cmd> set nu! <CR>", "[T]oggle [L]ine [N]umber" },
    ["<leader>tlr"] = { "<cmd> set rnu! <CR>", "[T]oggle [L]ine number [R]elative " },
    -- Git DiffView
    ["<leader>do"] = { "<cmd> DiffviewOpen <CR>", "[D]iffview [O]pen" },
    ["<leader>dc"] = { "<cmd> DiffviewClose <CR>", "[D]iffview [C]lose" },
    ["<leader>dh"] = { "<cmd> DiffviewFileHistory <CR>", "[D]iffview File [H]istory" },
    ["<leader>dl"] = { "<cmd> DiffviewLog <CR>", "[D]iffview view [L]og" },
    -- Spectre
    ["<leader>so"] = { "<cmd>lua require('spectre').open()<CR>", "[S]pectre [O]pen" },
    ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "[S]pectre search [W]ord" },
    -- Telescope
    ["<leader>Tf"] = { "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<CR>",
      "[T]elescope [F]requency" },
    ["<leader>Tb"] = { ":Telescope file_browser path=%:p:h select_buffer=true<CR>", "[T]elescope file [B]rowser" }
  }
}

-- require("core.utils").load_mappings("custom")

return M
