-- INIT.LUA
function run(core_modules)
	for _, module in ipairs(core_modules) do
		local ok, err = pcall(require, module)
		if not ok then
			return
		end
	end
end

local core_modules = {
	"brook/options",
	"brook/keymaps",
	"brook/plugins",

    "configs/impatient",
    "configs/completion",
    "configs/comments",
    "configs/gitsigns",
	"configs/telescope",
    "configs/statusline",
    "configs/alpha",
	"configs/nvim-tree",
	"configs/toggleterm",
	"configs/colorizer",
	"configs/autopairs",
	"configs/colorscheme",
}

run(core_modules)
