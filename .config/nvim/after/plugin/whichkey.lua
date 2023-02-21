local wk = require("which-key")

local conf = {
    window = {
      border = "double", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

wk.setup(conf)

wk.register({
  ["<leader>"] = {
    f = {
      name = "+File",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      n = { "<cmd>enew<cr>", "New File" },
    },
    g = {
      name = "+Git",
      s = {"Git status"},
      c = {"Git commit"},
      p = {"Git push"},
  },
   u = {"Undo Tree"},
   b = {
       name = "+Buffer",
       d = { "Close current buffer"},
   },
   h = {
       name = "+Harpoon",
       a = {"Add file"},
   },
   e = {"File Explorer"},
   p = {
       name = "+Telescope",
       f = {"Find files"},
       s = {"Search in files"},
       b = {"Buffer list"},
       g = {"Live grep"},
       h = {"Help tags"},

    },
   r = {"Run Python"},
   z = {
      name = "+Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      S = { "<cmd>PackerStatus<cr>", "Status" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },
}
})
