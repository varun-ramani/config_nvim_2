return require('packer').startup(function() 
    -- Packer manages itself, apparently
    use 'wbthomason/packer.nvim'

    -- LSP Support!!
    use 'nvim-lua/completion-nvim'
    use 'neovim/nvim-lspconfig'

    -- Fuzzy searching!!
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Make Neovim look good!
    use 'folke/tokyonight.nvim'
end)
