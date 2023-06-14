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
    ["<leader>nb"] = { "<cmd> enew <CR>", "[N]ew [B]uffer" },
    ["<leader>tln"] = { "<cmd> set nu! <CR>", "[T]oggle [l]ine [n]umber" },
    ["<leader>tlr"] = { "<cmd> set rnu! <CR>", "[T]oggle [l]ine number [r]elative " },
  }
}

-- require("core.utils").load_mappings("custom")

return M
