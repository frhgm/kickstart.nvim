-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Atajo para deshabilitar TERM mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CR>')

-- [[ Harpoon ]]

vim.keymap.set('n', 'hx', require('harpoon.mark').add_file, { desc = '[H]arpoon [A]dd' })
vim.keymap.set('n', 'hr', require('harpoon.mark').rm_file, { desc = '[H]arpoon [R]emove' })
vim.keymap.set('n', 'hu', require('harpoon.ui').toggle_quick_menu, { desc = '[H]arpoon [T]oggle' })
vim.keymap.set('n', 'hn', require('harpoon.ui').nav_next, { desc = '[H]arpoon [T]oggle' })
vim.keymap.set('n', 'hp', require('harpoon.ui').nav_prev, { desc = '[H]arpoon [T]oggle' })
vim.keymap.set('n', 'hto', OpenHarpoonTerm, { desc = '[H]arpoon [T]erminal [O]pen' })
vim.keymap.set('n', 'htc', CloseHarpoonTerm, { desc = '[H]arpoon [T]erminal [C]lose' })

-- Si lo quiero con Telescope
-- vim.keymap.set('n', 'ht', ':Telescope harpoon marks<CR>', { desc = '[H]arpoon [T]oggle' })

vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = '[C]ode [R]ename' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })

--Todo-Comments
vim.keymap.set('n', '<leader>st', ':TodoTelescope<CR>', { desc = '[S]earch [T]odos' })

--Si no funciona intentar con el comando :so
vim.keymap.set('n', '<leader>rr', ':luafile ~/AppData/Local/nvim/init.lua <CR>', { desc = '[R]eload' })
vim.keymap.set('v', '<leader>cr', ':lua vim.lsp.buf.code_action()<CR>', { desc = '[L]sp Action [R]ange' })

vim.keymap.set('n', '<leader>f', ':Format<CR>', { desc = '[F]ormat' })
vim.keymap.set('n', '<leader>F', ':FormatWrite<CR>', { desc = '[F]ormat and write' })

--Trouble
vim.keymap.set('n', '<leader>tt', ':TroubleToggle<CR>', { desc = '[T]rouble [T]oggle' })
vim.keymap.set('n', '<leader>tw', ':TroubleToggle<CR>', { desc = '[T]rouble [W]orkspace' })
vim.keymap.set('n', '<leader>td', ':TroubleToggle<CR>', { desc = '[T]rouble [D]ocument' })

--Telescope
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, {
	noremap = true,
	silent = true,
	desc = '[S]earch [R]esume',
})

vim.keymap.set('n', '<leader>tm', function()
	vim.cmd.split()
	vim.cmd.term()
end)
