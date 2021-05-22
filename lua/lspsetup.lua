local lspconfig = require('lspconfig')
local compe = require('compe')

-- local comp_nvim = require('completion')

vim.o.completeopt = "menuone,noinsert,noselect"

lspconfig.pyright.setup{}
lspconfig.dartls.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.clangd.setup{}
lspconfig.texlab.setup{}

compe.setup{
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 50;
    source_timeout = 200;
    incomplete_delay = 100;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
        path = true;
        nvim_lsp = true;
    };
}
