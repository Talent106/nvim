return {
    {
        dir = '~/Development/neovim-plugins/quick-notes.nvim',
        config = function ()
            local quickNotes = require('quick-notes');

            quickNotes:setup({open_command = 'vsplit', notes_dir = '/Work/Notes'});

            vim.keymap.set("n", "<leader>Qq", function() quickNotes:toggle() end, { desc = 'Toggle Quick Menu' });
            vim.keymap.set("n", "<leader>Ql", function() quickNotes:openLastNote() end, { desc = 'Open last open note' });
            vim.keymap.set("n", "<leader>Qn", function() quickNotes:new() end, { desc = 'Create new note on notes_dir' });
            vim.keymap.set("n", "<leader>Qb", function() quickNotes:browse() end, { desc = 'Browse to notes dir using Netrw' });
        end
    },
}
