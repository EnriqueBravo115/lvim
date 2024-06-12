require("nvim-tree").setup({
  view = {
    adaptive_size = true,
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  filters = {
    dotfiles = false,
  },
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = ""
        },
        git = {
          staged = "⊙",
          untracked = "⊙",
          unstaged = "⊙"
        }
      }
    }
  }
})

vim.cmd("highlight NvimTreeFolderIcon guifg=#ff7ab2")
vim.cmd("highlight NvimTreeIndentMarker guifg=#fd9353")

vim.cmd("highlight NvimTreeNormal guibg=#3f3f3f")
vim.cmd("highlight NvimTreeEndOfBuffer guifg=#3f3f3f")
vim.cmd("highlight NvimTreeCursorColumn guifg=#3f3f3f")
vim.cmd("highlight NvimTreeWinSeparator guifg=#3f3f3f")
