-- vim.cmd('source ~/.config/nvim/old.vim')
local signs = {
	Error = '✘', -- ∅
	Warning = '•', -- '⚠'
	Hint = '!',
	Information = 'i'
}

local Colors = require('colors')

vim.opt.termguicolors = true
vim.opt.tabstop=2
vim.opt.smartcase = true
vim.opt.wrap = true
-- vim.opt.linebreak = true
-- vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.listchars = {
	space = ' ',
	tab = '. ',
	-- eol = "↲",
	-- showbreak = "↪",
	extends = ">",
	precedes = "<",
	trail = "~"
}
vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.list = true
vim.opt.cursorline = true
vim.cmd("set scrolloff=999")

vim.cmd("set t_Co=256")
-- Run ":so $VIMRUNTIME/syntax/hitest.vim" to see current coloring

vim.api.nvim_set_hl(0, "DiffAdd", { fg=Colors.Green })
vim.api.nvim_set_hl(0, "DiffChange", { fg=Colors.Orange })
vim.api.nvim_set_hl(0, "DiffDelete", { fg=Colors.Red })
vim.api.nvim_set_hl(0, "DiffText", { fg=Colors.Blue })

vim.cmd("hi clear SpellBad")
-- vim.opt.spell = true
vim.opt.spelllang = 'en_us'
vim.api.nvim_set_hl(0, "SpellBad", { undercurl=true })
vim.api.nvim_set_hl(0, "Normal", { ctermfg=White, fg=Colors.White })

vim.api.nvim_set_hl(
	0,
	"ErrorMsg",
	{ standout=true, ctermbg=88, ctermfg=White, bg=Colors.Red, fg=Colors.White }
)
vim.api.nvim_set_hl(0, "LineNr", { ctermbg=250, ctermfg=White, fg=Colors.White })
vim.api.nvim_set_hl(
	0,
	"Search",
	{
		reverse=true,
		ctermbg=DarkGrey,
		ctermfg=NONE,
		bg=Colors.DarkGrey,
		fg=Colors.White
	}
)
vim.api.nvim_set_hl(0, "WarningMsg", { ctermfg=88, fg=Colors.Red })
vim.api.nvim_set_hl(
	0,
	"CursorLineNr",
	{
		fg=Colors.Orange,
		bold=true
	}
)
vim.api.nvim_set_hl(0, "CursorLine", { bg=Colors.OtherGrey })
vim.api.nvim_set_hl(0, "Cursor", { fg=Colors.Black, bg=Colors.White })
vim.api.nvim_set_hl(0, "Visual", { ctermbg=LightGrey, bg=Colors.DarkGrey })
vim.cmd("hi clear SignColumn")
-- vim.cmd("set signcolumn=number")

vim.api.nvim_set_hl(0, "@variable", { ctermfg=White, fg=Colors.White })
vim.api.nvim_set_hl(0, "Identifier", { ctermfg=165, fg=Colors.Purple })
vim.api.nvim_set_hl(0, "Constant", { ctermfg=210, fg=Colors.Blue })
vim.api.nvim_set_hl(0, "Special", { ctermfg=165, fg=Colors.Purple })
vim.api.nvim_set_hl(0, "Statement", { ctermfg=208, fg=Colors.Orange })
-- vim.api.nvim_set_hl(0, "Keyword", { ctermfg=208, fg="#ffffff" })
vim.api.nvim_set_hl(0, "Function", { ctermfg=208, fg=Colors.Red })
vim.api.nvim_set_hl(0, "Comment", { ctermfg=Green, fg=Colors.Cyan })
vim.api.nvim_set_hl(0, "Identifier", { ctermfg=39, fg=Colors.OffWhite })
vim.api.nvim_set_hl(0, "String", { ctermfg=Green, fg=Colors.GruvGreen })
vim.api.nvim_set_hl(0, "Type", { ctermfg=34, fg=Colors.Green })
vim.api.nvim_set_hl(0, "PreProc", { ctermfg=210, fg=Colors.Red })
vim.api.nvim_set_hl(0, "Ignore", { ctermfg=244, fg=grey90 })
vim.api.nvim_set_hl(0, "MatchParen", { fg=Colors.BluerBlue, bold=true, underline=true })
-- vim.api.nvim_set_hl(0, "CoverageCovered", { ctermfg=34, fg='#00ff00'})
-- vim.api.nvim_set_hl(0, "CoverageUncovered", { ctermfg=88, fg='#ff0000'})
vim.api.nvim_set_hl(
	0,
	"PmenuSel",
	{
		ctermbg=LightGrey,
		ctermfg=DarkGrey,
		bg=Colors.LightGrey,
		fg=Colors.DarkGrey,
		blend=20
	}
)
vim.api.nvim_set_hl(
	0,
	"Pmenu",
	{
		ctermbg=DarkGray,
		ctermfg=LightGrey,
		bg=Colors.DarkGrey,
		fg=Colors.LightGrey,
		blend=20
	}
)
vim.api.nvim_set_hl(
	0,
	"NonText",
	{ term=bold, ctermfg=LightGrey, fg=Colors.LightGrey }
)


vim.fn.sign_define("DiagnosticSignError", {text='✘', texthl='DiagnosticSignError', linehl=NONE, numhl=NONE})
vim.fn.sign_define("DiagnosticSignWarn", {text='•', texthl='DiagnosticSignWarn', linehl=NONE, numhl=NONE})
vim.fn.sign_define("DiagnosticSignInfo", {text='i', texthl='DiagnosticSignInfo', linehl=NONE, numhl=NONE})
vim.fn.sign_define("DiagnosticSignHint", {text='!', texthl='DiagnosticSignHint', linehl=NONE, numhl=NONE})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl=true, sp='#ff0000' })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl=false, sp='#e5d5ac' })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl=false, sp='#33aaff' })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl=false, sp='#bcbcbc' })

-- " gray
vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", {bg=NONE, gui=strikethrough, fg='#808080'})
-- " blue
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {bg=NONE, fg='#569CD6'})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {bg=NONE, fg='#569CD6'})
--" light blue
vim.api.nvim_set_hl(0, "CmpItemKindVariable", {bg=NONE, fg='#9CDCFE'})
vim.api.nvim_set_hl(0, "CmpItemKindInterface", {bg=NONE, fg='#9CDCFE'})
vim.api.nvim_set_hl(0, "CmpItemKindText", {bg=NONE, fg='#9CDCFE'})
--" pink
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { bg=NONE, fg='#C586C0'})
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { bg=NONE, fg='#C586C0'})
--" front
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { bg=NONE, fg='#D4D4D4'})
vim.api.nvim_set_hl(0, "CmpItemKindProperty", { bg=NONE, fg='#D4D4D4'})
vim.api.nvim_set_hl(0, "CmpItemKindUnit", { bg=NONE, fg='#D4D4D4'})

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
-- automatically load the coverage signs when opening a file
vim.api.nvim_create_autocmd({"BufEnter"}, {
	pattern = "*.js, *.ts",
	callback = function()
		-- place (show) the signs immediately after loading
		require("coverage").load(true)
	end,
})
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


local servers = {
	eslint = {},
	pyright = {},
	pylsp = {},
	html = {},
	lua_ls = {
		Lua = {
			diagnostics = {
				globals = {"vim"},
			},
		}
	},
	gopls = {},
	vimls = {},
	bashls = {}
}

local treesitter_highlighters = {
	'javascript',
	'yaml',
	'python',
	'typescript',
	'go',
	'bash',
	'dockerfile'
}

require('lazy').setup({
	'folke/which-key.nvim',
	'joshdick/onedark.vim',
	'jbyuki/one-small-step-for-vimkind',
	'rcarriga/nvim-dap-ui',
	'theHamsta/nvim-dap-virtual-text',
	'mbbill/undotree', -- undos
	--  'fatih/vim-go', -- go
	-- 'tpope/vim-sleuth', -- automatic shiftwidth and tabstop configuration
	'leafgarland/typescript-vim',
	'nvim-lua/plenary.nvim',
	'MunifTanjim/nui.nvim',
	'smithbm2316/centerpad.nvim',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup {
			options = {
				icons_enabled = true,
				-- theme = 'auto',
				theme = {
					normal = {
						a = { fg = Colors.Black, bg = Colors.Purple },
						b = { fg = Colors.White, bg = Colors.DarkGrey },
						c = { fg = Colors.OffWhite, bg = Colors.Black },
					},
					insert = { a = { fg = Colors.Black, bg = Colors.Blue } },
					visual = { a = { fg = Colors.Black, bg = Colors.Green } },
					replace = { a = { fg = Colors.Black, bg = Colors.Red } },
					inactive = {
						a = { fg = Colors.White, bg = Colors.Black },
						b = { fg = Colors.White, bg = Colors.Black },
						c = { fg = Colors.Black, bg = Colors.Black },
					},
				},
				component_separators = { left = '|', right = '|'},
				section_separators = { left = '', right = '' },
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
				lualine_a = {
					{
						'mode', left = '', right_padding = 2,
					},
				},
				lualine_b = {
					{
						'branch',
						icon = {
							'', -- '🔨',
							color = {
								fg='green'
							}
						}
					},
					'diff',
					{
						'diagnostics',

						-- Table of diagnostic sources, available sources are:
						--   'nvim_lsp',
						--   'nvim_diagnostic',
						--   'nvim_workspace_diagnostic',
						--   'coc',
						--   'ale',
						--   'vim_lsp'.
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
				lualine_z = {
					{ 'location', separator = { right = '' }, left_padding = 2 },
				}
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
	--[[
	{
		'akinsho/bufferline.nvim',
		config = function()
			require('bufferline').setup()
		end
	},
	--]]
	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup({
				signs = {
					add          = { text = '│' },
					change       = { text = '┆' },
					delete       = { text = '_' },
					topdelete    = { text = '‾' },
					changedelete = { text = '~' },
					untracked    = { text = ':' },
				},
			})
		end
	},
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	},
	{
		'andythigpen/nvim-coverage',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'asb/lua-xmlreader'
		},
		rocks = { 'lua-xmlreader' },
		config = function()
			require("coverage").setup({
				auto_reload = true,
				commands = true,
				highlights = {
					-- customize highlight groups created by the plugin
					-- supports style, fg, bg, sp (see :h highlight-gui)
					covered = {
						fg = Colors.Green;
					},
					partial = {
						fg = Colors.Orange
					},
					uncovered = {
						fg = Colors.Red
					},
				},
				signs = {
					-- use your own highlight groups or text markers
					covered = { hl = "CoverageCovered", text = "▎" },
					uncovered = { hl = "CoverageUncovered", text = "▎" },
				},
				summary = {
					-- customize the summary pop-up
					-- minimum coverage threshold (used for highlighting)
					min_coverage = 0.0,
				},
				lang = {
					javascript = {
						coverage_file = "./es6/coverage/lcov.info",
							-- "./coverage/lcov.info",
							-- "../coverage/lcov.info"
					},
				},
			})
		end
	},
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require'colorizer'.setup()
		end
	},
	{
		'bennypowers/nvim-regexplainer',
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'MunifTanjim/nui.nvim',
		},
		config = function()
			require'regexplainer'.setup()
		end
	},
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup()
		end
	},
	{
		'neovim/nvim-lspconfig',
	},
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
		after = { "mason.nvim" },
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = servers,
				automatic_installation = true
			})
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-context'
		},
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
				ensure_installed = treesitter_highlighters,
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
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/vim-vsnip',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/cmp-cmdline',
			'onsails/lspkind.nvim',
		},
		after = "mason.nvim",
		config = function()
			local cmp = require('cmp')
			local cmp_formatting = {
				format = function(entry, vim_item)
					if vim.tbl_contains({ 'path' }, entry.source.name) then
						local icon, hl_group = require('nvim-web-devicons').get_icon(
							entry:get_completion_item().label
						)
						if icon then
							vim_item.kind = icon
							vim_item.kind_hl_group = hl_group
							return vim_item
						end
					end
					-- return require('lspkind').cmp_format({ with_text = false })(entry, vim_item)
					return require('lspkind').cmp_format({})(entry, vim_item)
				end
			}
			cmp.setup({
				formatting = cmp_formatting,
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
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
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
				formatting = formatting,
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = 'buffer' }
				}
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(':', {
				formatting = formatting,
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
					settings = lsp.settings
				}

				nvim_lsp[lsp].setup(opts)
			end
			nvim_lsp.pylsp.setup {
				cmd = {"pylsp"},
				filetypes = {"python"},
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {enabled = false},
							flake8 = {
								enabled = false,
								ignore = {},
								maxLineLength = 160
							},
							mypy = {enabled = false},
							isort = {enabled = false},
							yapf = {enabled = false},
							pylint = {
								enabled = true,
								args = {'--ignore=E1131'},
							},
							pydocstyle = {enabled = false},
							mccabe = {enabled = false},
							preload = {enabled = false},
							rope_completion = {enabled = false}
						}
					}
				},
				on_attach = on_attach
			}
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
				callback({
					type = 'server',
					host = config.host or '127.0.0.1',
					port = config.port or 8086
				})
			end
		end
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},
	{
		"lukas-reineke/virt-column.nvim", opts = {
			char = {
				"⋮",
				"¦",
				"|"
				-- "‖",
			},
			virtcolumn = "+1,80,100,120"
		}
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'https://codeberg.org/esensar/nvim-dev-container',
		dependencies = 'nvim-treesitter/nvim-treesitter',
		config = function()
			require("devcontainer").setup{}
		end
	},
})


-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.opt.tabstop=2
vim.cmd("set tabstop=2")
