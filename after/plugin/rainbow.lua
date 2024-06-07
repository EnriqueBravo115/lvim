vim.cmd("highlight RainbowDelimiterRed guifg=#a54e56")
vim.cmd("highlight RainbowDelimiterYellow guifg=#d9b263")
vim.cmd("highlight RainbowDelimiterBlue guifg=#668aab")
vim.cmd("highlight RainbowDelimiterOrange guifg=#c9826b")
vim.cmd("highlight RainbowDelimiterGreen guifg=#8aa872")
vim.cmd("highlight RainbowDelimiterViolet guifg=#9d7495")
vim.cmd("highlight RainbowDelimiterCyan guifg=#88c0d0")

require 'rainbow-delimiters.setup'.setup {
  highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow',
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterViolet',
    'RainbowDelimiterCyan',
  },
}
