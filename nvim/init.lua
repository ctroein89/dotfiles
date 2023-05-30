-- vim.cmd('source ~/.config/nvim/old.vim')
local signs = {
	Error = '✘', -- ∅
	Warning = '•', -- '⚠'
	Hint = '!',
	Information = 'i'
}

vim.opt.termguicolors = true
vim.opt.tabstop=2
vim.opt.smartcase = true
vim.opt.wrap = true
-- vim.opt.linebreak = true
-- vim.opt.breakindent = true
vim.opt.shiftwidth = 2
-- vim.opt.listchars = { tab = ">-", trail = "~", extends = ">", precedes = "<", eol = "↲", showbreak = "↪" }
	-- test
vim.opt.listchars = {
	space = ' ',
	tab = '. ',
	-- eol = "↲",
	trail = "~"
}
vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.list = true
vim.cmd("set t_Co=256")
-- Run ":so $VIMRUNTIME/syntax/hitest.vim" to see current coloring

vim.cmd("highlight DiffAdd      gui=none    guifg=NONE          guibg=#bada9f")
vim.cmd("highlight DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac")
vim.cmd("highlight DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0")
vim.cmd("highlight DiffText     gui=none    guifg=NONE          guibg=#8cbee2")

vim.cmd("hi clear SpellBad")
vim.cmd("hi SpellBad cterm=underline")
vim.cmd("hi Normal ctermfg=White guifg=#FFFFFF guibg=#111")
-- vim.cmd("hi Normal ctermfg=250 guifg=#D3D3D3")

vim.cmd("hi ErrorMsg term=standout ctermbg=88 ctermfg=White guibg=#ff8080 guifg=#FFFFFF")
vim.cmd("hi LineNr term=underline ctermfg=250 guifg=#FFFFFF")
vim.cmd("hi Search term=reverse ctermbg=DarkGrey ctermfg=NONE guibg=#5b5b5b guifg=NONE")
vim.cmd("hi WarningMsg term=standout ctermfg=88 guifg=#ff8080")
vim.cmd("hi CursorLine term=underline cterm=underline")
vim.cmd("hi Visual ctermbg=DarkGray guibg=#5b5b5b")
vim.cmd("hi clear SignColumn")
-- vim.cmd("set signcolumn=number")

vim.cmd("hi Identifier ctermfg=39 guifg=#33aaff")
vim.cmd("hi Constant term=underline ctermfg=210 guifg=#ff8080 guibg=#000")

vim.cmd("hi Constant ctermfg=210 guifg=#ff8080")
vim.cmd("hi Special term=bold ctermfg=165 guifg=#33aaff")
vim.cmd("hi Statement term=bold cterm=bold ctermfg=208 gui=bold guifg=#ff8200")
vim.cmd("hi Function term=bold cterm=bold ctermfg=208 gui=bold guifg=#ff8200")
vim.cmd("hi Comment ctermfg=Green guifg=#6acc4f")
-- vim.cmd("hi Comment ctermfg=250 guifg=#D3D3D3")
vim.cmd("hi Identifier ctermfg=39 guifg=#DDD")
vim.cmd("hi Type ctermfg=34 guifg=#6acc4f")
vim.cmd("hi PreProc term=bold cterm=bold ctermfg=Red gui=bold guifg=#e06666")
vim.cmd("hi Ignore ctermfg=244 guifg=grey90")
vim.cmd("hi MatchParen cterm=none ctermbg=251")
vim.cmd("hi CoverageCovered ctermfg=34 guifg=#00ff00")
vim.cmd("hi CoverageUncovered ctermfg=88 guifg=#ff0000")
vim.cmd("hi PmenuSel ctermbg=LightGrey ctermfg=DarkGrey guibg=#bcbcbc guifg=#5b5b5b")
vim.cmd("hi Pmenu ctermbg=DarkGray ctermfg=LightGrey guibg=#5b5b5b guifg=#bcbcbc")
vim.cmd("hi NonText term=bold ctermfg=LightGrey guifg=#bcbcbc")


vim.cmd("sign define DiagnosticSignError text=✘ texthl=DiagnosticSignError linehl= numhl=")
vim.cmd("sign define DiagnosticSignWarn text=• texthl=DiagnosticSignWarn linehl= numhl=")
vim.cmd("sign define DiagnosticSignInfo text=i texthl=DiagnosticSignInfo linehl= numhl=")
vim.cmd("sign define DiagnosticSignHint text=! texthl=DiagnosticSignHint linehl= numhl=")
vim.cmd("hi DiagnosticUnderlineError guifg=undercurl guisp=#ff0000")
vim.cmd("hi DiagnosticUnderlineWarn guifg=undercurl guisp=#e5d5ac")
vim.cmd("hi DiagnosticUnderlineInfo guifg=undercurl guisp=#33aaff")
vim.cmd("hi DiagnosticUnderlineHint guifg=undercurl guisp=#bcbcbc")
for type, icon in pairs(signs) do
	local hl = "LspDiagnosticsSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, linehl = "", numhl = "" })
end


-- Not Really JS, but close enough
vim.cmd("au BufNewFile,BufRead *.pbxproj set filetype=javascript")

vim.cmd("au BufNewFile,BufRead *.jsc set filetype=javascript")
vim.cmd("au BufNewFile,BufRead *.yml set filetype=yaml")
vim.cmd("au BufNewFile,BufRead *.jsc set expandtab")
vim.cmd("au BufNewFile,BufRead *.js* set expandtab")
vim.cmd("au BufNewFile,BufRead *.ts set expandtab")
-- vim.cmd("au BufNewFile,BufRead *.sh* set expandtab")
vim.cmd("au BufNewFile,BufRead *.yaml* set expandtab")
vim.cmd("au BufNewFile,BufRead ~/.work_aliases set filetype=sh")
vim.api.nvim_create_autocmd(
	{ "BufRead", "BufNewFile" },
	{
		pattern = "*.jsc",
		command = "set filetype=javascript"
	}
)
vim.api.nvim_create_autocmd(
	{ "BufRead", "BufNewFile" },
	{
		pattern = "~/.work_aliases, ~/.bash_aliases, ~/.secrets",
		command = "set filetype=sh"
	}
)
vim.api.nvim_create_autocmd(
	{ "BufRead", "BufNewFile" },
	{
		pattern = "*.jsc, *.js, *.ts, *.yaml",
		command = "set expandtab"
	}
)
vim.api.nvim_create_autocmd(
	{ "BufRead", "BufNewFile" },
	{
		pattern = "*.go",
		command = "set noexpandtab"
	}
)

vim.api.nvim_set_keymap("n", "<F4>", ":lua require('dapui').toggle()<CR>", {})
vim.api.nvim_set_keymap("n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>", {})
vim.api.nvim_set_keymap("n", "<F9>", ":lua require('dap').continue()<CR>", {})

vim.api.nvim_set_keymap("n", "<F1>", ":lua require('dap').step_over()<CR>", {})
vim.api.nvim_set_keymap("n", "<F2>", ":lua require('dap').step_into()<CR>", {})
vim.api.nvim_set_keymap("n", "<F3>", ":lua require('dap').step_out()<CR>", {})

vim.api.nvim_set_keymap("n", "<Leader>dsc", ":lua require('dap').continue()<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>dsv", ":lua require('dap').step_over()<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>dsi", ":lua require('dap').step_into()<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>dso", ":lua require('dap').step_out()<CR>", { })

vim.api.nvim_set_keymap("n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>", { })
vim.api.nvim_set_keymap("v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>", { })

vim.api.nvim_set_keymap("n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", { })

vim.api.nvim_set_keymap("n", "<Leader>dro", ":lua require('dap').repl.open()<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>", { })

vim.api.nvim_set_keymap("n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>", { })

vim.api.nvim_set_keymap("n", "<Leader>dc", ":lua require('dap.ui.variables').scopes()<CR>", { })
vim.api.nvim_set_keymap("n", "<Leader>di", ":lua require('dapui').toggle()<CR>", {})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' ' -- Make sure to set `mapleader` before lazy so your mappings are correct

require('lazy').setup({
	'folke/which-key.nvim',
	'joshdick/onedark.vim',
	'jbyuki/one-small-step-for-vimkind',
	'rcarriga/nvim-dap-ui',
	'theHamsta/nvim-dap-virtual-text',
	'mbbill/undotree', -- undos
	'fatih/vim-go', -- go
	-- 'tpope/vim-sleuth', -- automatic shiftwidth and tabstop configuration
	'leafgarland/typescript-vim',
	'nvim-lua/plenary.nvim',
	'MunifTanjim/nui.nvim',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = { left = '|', right = '|'},
				section_separators = { left = '', right = ''},
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {
					-- 'branch',
					{
						'branch',
						icon = {
							'🔨', -- '',
							color = {
								fg='green'
							}
						}
					},
					'diff',
					-- 'diagnostics'
					{
						'diagnostics',

						-- Table of diagnostic sources, available sources are:
						--   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
						-- or a function that returns a table as such:
						--   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
						sources = { 'nvim_diagnostic', 'coc' },

						-- Displays diagnostics for the defined severity types
						sections = { 'error', 'warn', 'info', 'hint' },

						diagnostics_color = {
							-- Same values as the general color option can be used here.
							error = 'DiagnosticError', -- Changes diagnostics' error color.
							warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
							info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
							hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
						},
						symbols = {error = '✘', warn = '•', info = 'i', hint = '!'},
						colored = true,           -- Displays diagnostics status in color if set to true.
						update_in_insert = false, -- Update diagnostics in insert mode.
						always_visible = false,   -- Show diagnostics even if there are none.
					}
				},
				lualine_c = {'filename'},
				lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
		end
	},
	'lewis6991/gitsigns.nvim',
	'neovim/nvim-lspconfig',
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup({
				ui = {
					icons = {
						package_installed = '✓',
						package_pending = '➜',
						package_uninstalled = '✗'
					}
				}
			})
		end
	},
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = { 'nvim-lspconfig' },
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = servers,
				automatic_installation = true
			})
		end
	},
	--[[
	--]]
	--[[
	--]]
	{
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
		config = function()
			-- Enable Tree-sitter-based code folding.
			-- vim.o.foldmethod = 'expr'
			-- vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

			-- Enable Tree-sitter-based syntax highlighting.
			require('nvim-treesitter.configs').setup({
				ensure_installed = {
					'javascript',
					'yaml',
					'python',
					'typescript',
					'go',
					'bash',
					'dockerfile'
				},
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting=false,
				},
				ident = { enable = true },
				rainbow = {
					enable = true,
					colors = rainbow,
					termcolors = rainbow,
					extended_mode = true,
					max_file_lines = nil,
				}
			})
		end,
	},
	--[[
	--]]
	{
		'hrsh7th/nvim-cmp',
		dependencies = { 'neovim/nvim-lspconfig' },
		config = function()
		end
	},
	{
		'hrsh7th/cmp-buffer',
		dependencies = { 'hrsh7th/nvim-cmp' }
	},
	{
		'hrsh7th/cmp-nvim-lsp',
		dependencies = {
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-vsnip'
		},
		config = function()
			local servers = {
				'eslint',
				'pyright',
				'gopls',
				'bashls'
				-- 'yaml-language-server',
			}
				local cmp = require('cmp')
				cmp.setup({
					snippet = {
						-- REQUIRED - you must specify a snippet engine
						expand = function(args)
							vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
							-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
							-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
							-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
						end,
					},
					window = {
						-- completion = cmp.config.window.bordered(),
						-- documentation = cmp.config.window.bordered(),
					},
					mapping = cmp.mapping.preset.insert({
						['<C-b>'] = cmp.mapping.scroll_docs(-4),
						['<C-f>'] = cmp.mapping.scroll_docs(4),
						['<S-Tab>'] = cmp.mapping.complete(),
						['<C-Space>'] = cmp.mapping.complete(),
						['<C-e>'] = cmp.mapping.abort(),
						['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
					}),
					sources = cmp.config.sources({
						{ name = 'buffer' },
						{ name = 'nvim_lsp' },
					}, {
						{ name = 'buffer' },
					})
				})
				-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline({ '/', '?' }, {
					mapping = cmp.mapping.preset.cmdline(),
					sources = {
						{ name = 'buffer' }
					}
				})

				-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline(':', {
					mapping = cmp.mapping.preset.cmdline(),
					sources = cmp.config.sources({
						{ name = 'path' }
					}, {
						{ name = 'cmdline' }
					})
				})

			local nvim_lsp = require('lspconfig')
			local on_attach = function(client, bufnr)
				local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
				local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

				buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

				-- Mappings
				local opts = { noremap=true, silent=true }
				--buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
				--buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
				--buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
				--buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
				--buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
				--buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
				--buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
				--buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
				--buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
				--buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
				--buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
				--buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
				--buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
				--buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
				buf_set_keymap('n', '<tab>', '<cmd>(completion_smart_tab)', opts)
				buf_set_keymap('n', '<s-tab>', '<cmd>(completion_smart_s_tab)', opts)

				-- Set some keybinds conditional on server capabilities
				if client.server_capabilities.document_formatting then
					buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
				elseif client.server_capabilities.document_range_formatting then
					buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
				end
			end

			local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

			for _, lsp in ipairs(servers) do
				local opts = {
					on_attach = on_attach,
					capabilities = capabilities,
				}

				nvim_lsp[lsp].setup(opts)
			end
		end
	},
	{
		'mfussenegger/nvim-dap',
		config =  function ()
			local dap = require'dap'
			dap.configurations.lua = {
				{
					type = 'nlua',
					request = 'attach',
					name = 'Attach to running Neovim instance',
				}
			}
			dap.adapters.nlua = function(callback, config)
				callback({ type = 'server', host = config.host or '127.0.0.1', port = config.port or 8086 })
			end
		end
	},
})

-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.opt.tabstop=2
vim.cmd("set tabstop=2")
