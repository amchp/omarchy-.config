local Plugin = {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				styles = {
					comments = "italic",
					keywords = "bold",
					functions = "bold",
					types = "bold,italic",
				},
			},
			groups = {
				all = {
					-- Functions: bright cyan to stand out from variables
					["@function"] = { fg = "palette.cyan", style = "bold" },
					["@function.call"] = { fg = "palette.cyan" },
					["@function.builtin"] = { fg = "palette.cyan", style = "italic" },
					["@method"] = { fg = "palette.cyan" },
					["@method.call"] = { fg = "palette.cyan" },

					-- Keywords: magenta/purple, bold for structure
					["@keyword"] = { fg = "palette.magenta", style = "bold" },
					["@keyword.function"] = { fg = "palette.magenta", style = "bold" },
					["@keyword.return"] = { fg = "palette.magenta", style = "bold,italic" },
					["@keyword.operator"] = { fg = "palette.magenta" },
					["@conditional"] = { fg = "palette.magenta", style = "bold" },
					["@repeat"] = { fg = "palette.magenta", style = "bold" },
					["@exception"] = { fg = "palette.magenta", style = "bold,italic" },
					["@include"] = { fg = "palette.magenta", style = "italic" },

					-- Types: yellow to clearly separate from functions/variables
					["@type"] = { fg = "palette.yellow", style = "bold" },
					["@type.builtin"] = { fg = "palette.yellow", style = "italic" },
					["@type.definition"] = { fg = "palette.yellow", style = "bold" },
					["@constructor"] = { fg = "palette.yellow" },

					-- Variables: white/fg for neutral, parameters orange
					["@variable"] = { fg = "palette.white" },
					["@variable.builtin"] = { fg = "palette.red", style = "italic" },
					["@parameter"] = { fg = "palette.orange", style = "italic" },

					-- Properties/fields: a distinct blue
					["@property"] = { fg = "palette.blue" },
					["@field"] = { fg = "palette.blue" },

					-- Strings: green
					["@string"] = { fg = "palette.green" },
					["@string.escape"] = { fg = "palette.orange", style = "bold" },
					["@string.regex"] = { fg = "palette.orange" },

					-- Numbers/booleans: distinct orange
					["@number"] = { fg = "palette.orange" },
					["@float"] = { fg = "palette.orange" },
					["@boolean"] = { fg = "palette.orange", style = "bold" },

					-- Constants: orange bold to stand out
					["@constant"] = { fg = "palette.orange", style = "bold" },
					["@constant.builtin"] = { fg = "palette.orange", style = "bold,italic" },

					-- Operators/punctuation: subtle but visible
					["@operator"] = { fg = "palette.pink" },
					["@punctuation.bracket"] = { fg = "palette.white.dim" },
					["@punctuation.delimiter"] = { fg = "palette.white.dim" },
					["@punctuation.special"] = { fg = "palette.pink" },

					-- Namespace/module
					["@namespace"] = { fg = "palette.yellow", style = "italic" },

					-- Tags (HTML/JSX)
					["@tag"] = { fg = "palette.red" },
					["@tag.attribute"] = { fg = "palette.orange", style = "italic" },
					["@tag.delimiter"] = { fg = "palette.white.dim" },
				},
			},
		})
		vim.cmd("colorscheme nightfox")
	end,
}

return Plugin