return {
  'HiPhish/rainbow-delimiters.nvim',
  lazy = false,
  main = 'rainbow-delimiters.setup',
  opts = {
    highlight = {
      'RainbowDelimiterViolet',
      'RainbowDelimiterYellow',
      'RainbowDelimiterBlue',
      -- "RainbowDelimiterCyan",
      'RainbowDelimiterGreen',
      -- "RainbowDelimiteriRed",
      -- "RainbowDelimiterOrange",
    },
    -- blacklist = { "jsx" },
    query = {
      javascript = 'rainbow-parens',
    },
  },
}
