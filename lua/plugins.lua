return require('packer').startup(function() 
    -- Packer manages itself, apparently
    use 'wbthomason/packer.nvim'

    -- idk
    use 'tpope/vim-sensible'

    -- Libraries for use later 
    use 'svermeulen/vimpeccable'

    -- Language Support!!
    use 'hrsh7th/nvim-compe'
    -- use 'nvim-lua/completion-nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            vim.cmd[[:TSUpdate]]
        end
    }
    use 'varun-ramani/dart-vim-plugin'
    use 'mfussenegger/nvim-jdtls'

    -- Fuzzy searching!!
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- General Editing Stuff
    use 'jiangmiao/auto-pairs'

    -- Make Neovim look good!
    use 'folke/tokyonight.nvim'
    use 'norcalli/nvim-colorizer.lua'
    -- use "glepnir/galaxyline.nvim"
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}

end)
