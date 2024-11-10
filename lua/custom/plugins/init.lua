-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      require('harpoon').setup()
      vim.keymap.set('n', '<C-h>', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
      vim.keymap.set('n', '<C-j>', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
      vim.keymap.set('n', '<C-k>', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
      vim.keymap.set('n', '<C-l>', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')
      vim.keymap.set('n', '<leader>j', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
    end,
  },
}
