local cmd = vim.cmd
local fn = vim.fn
cmd("packadd packer.nvim")
local present, packer = pcall(require, "packer")
local packer_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if not present then
	print("Cloning packer..")
	fn.delete(packer_path, "rf")
	fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		"--depth",
		"20",
		packer_path,
	})

	cmd("packadd packer.nvim")
	present, packer = pcall(require, "packer")

	if present then
		print("Packer cloned successfully.")
	else
		error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
	end
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
		prompt_border = "single",
	},
	git = {
		clone_timeout = 600,
	},
	auto_clean = true,
	compile_on_sync = true,
	-- auto_reload_compiled = true
})

return packer
