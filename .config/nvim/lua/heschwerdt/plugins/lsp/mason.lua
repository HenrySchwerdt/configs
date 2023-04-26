local mason_status, mason = pcall(require, "mason")
if not mason_status then
 return 
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
 return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end


mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "bashls",
    "clangd",
    "cmake",
    "cssls",
    "denols",
    "docker_compose_language_service",
    "jdtls",
    "tsserver",
    "julials",
    "ltex",
    "lua_ls",
    "marksman",
    "pyre",
    "rust_analyzer",
    "tailwindcss",
    "vuels",
    "html"
  },
})
mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
  }
})
