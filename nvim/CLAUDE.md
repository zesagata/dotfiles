# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a LazyVim-based Neovim configuration that uses the lazy.nvim plugin manager. The configuration is structured as follows:

- **Entry Point**: `init.lua` bootstraps the configuration by loading `config.lazy`
- **Core Configuration**: Located in `lua/config/` directory:
  - `lazy.lua`: Plugin manager setup and plugin specifications
  - `options.lua`: Vim options and settings
  - `keymaps.lua`: Custom keybindings
  - `autocmds.lua`: Autocommands
- **Plugin Configurations**: Individual plugin configurations in `lua/plugins/` directory
- **Session Management**: Uses `Session.vim` for session persistence

## Language Support

The configuration includes language-specific setups for:
- Go (with gopls LSP configuration)
- Rust
- Python
- TypeScript/JavaScript
- Tailwind CSS
- Prisma
- C# (OmniSharp)

## Key Custom Keybindings

- `<leader>cc`: Toggle Claude Code integration
- `<leader>cp`: Copy file path to clipboard
- `<leader>cn`: Copy file name to clipboard
- `<leader>qam`: Quit and save current session
- `<Ctrl+Up/Down/Left/Right>`: Window resizing
- `<Esc>` in insert mode: Save and exit insert mode

## Code Formatting

- Uses StyLua for Lua code formatting
- Configuration in `stylua.toml`: 2-space indentation, 120 column width
- Format with: `stylua .`

## Plugin Management

- Uses lazy.nvim for plugin management
- Plugin specifications are imported from `lua/plugins/` directory
- Lock file: `lazy-lock.json` (tracks exact plugin versions)
- Update plugins with `:Lazy` command in Neovim

## Custom Plugins

Key custom plugin configurations:
- **Claude Code**: Integrated AI assistant (`lua/plugins/claude-code.lua`)
- **LSP**: Customized language server settings, especially for Go (`lua/plugins/nvim-lspconfig.lua`)
- **Colorscheme**: Multiple theme options with "gorgoroth" as default (`lua/plugins/colorscheme.lua`)
- **Debugging**: DAP configurations for Go and other languages
- **Terminal**: ToggleTerm integration for terminal management

## Development Workflow

1. Configuration changes should be made in the appropriate `lua/config/` or `lua/plugins/` files
2. New plugins should be added as separate files in `lua/plugins/`
3. Use `:Lazy` to manage plugins (install, update, clean)
4. Sessions are automatically managed - use `<leader>qam` to save and quit
5. The configuration auto-saves on `<Esc>` in insert mode

## File Structure Notes

- All Lua files follow the return table pattern for plugin specifications
- Plugin configurations use the lazy.nvim specification format
- LSP settings are centralized in `nvim-lspconfig.lua` with language-specific optimizations
- Custom keymaps are defined functionally in `keymaps.lua`