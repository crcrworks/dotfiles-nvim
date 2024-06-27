# CRCR's nvim configs

## [User Plugins](/lua/plugins/)
- [hop.nvim](https://github.com/hadronized/hop.nvim) : Jump anywhere
- [hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim) : Highlight the indent line
- [nvim-surround](https://github.com/kylechui/nvim-surround) : Surround selections with characters
- [xcodebuild.nvim](https://github.com/wojciech-kulik/xcodebuild.nvim) : Building, debugging, and testing for xcode
- [vim-ghost](https://github.com/raghur/vim-ghost) : Edit browser textarea content in vim/neovim
- [everforest](https://github.com/sainnhe/everforest) : Everforest colorscheme for nvim
- [vim-startuptime](https://github.com/rhysd/vim-startuptime) : Everforest colorscheme for nvim
- [noice.nvim](https://github.com/folke/noice.nvim) : Chagne view of messages. cmdline, and popupmenu
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) : Preview markdown as writing
- [vim-fugitive](https://github.com/tpope/vim-fugitive) : Run git command in v
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) : Super fast git decorations
- [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) : Scrollbar in nvim
- [at-vim-coder](https://github.com/ka-tsu-mo/at-vim-coder) : Atcoder in nvim
- [copilot](https://github.com/zbirenbaum/copilot.lua) : Copilot in nvim
- [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) Chat with copilot in nvim

## [Community plugins](/lua/community.lua) 
- astrocommunity.pack.lua
- astrocommunity.pack.typescript-all-in-one
- astrocommunity.pack.json
- astrocommunity.pack.yam"
- astrocommunity.pack.astro
- astrocommunity.pack.rust
- astrocommunity.pack.cs
- astrocommunity.pack.go
- astrocommunity.pack.markdown
- astrocommunity.pack.svelte
- astrocommunity.markdown-and-latex.markdown-preview-nvim
- astrocommunity.motion.tabout-nvim

## [Keymaps](/lua/plugins/astrocore.lua) 

### Navigator
- \<Tab> : Go next buffer
- \<S-Tab> : Go previous buffer

### Hop
- fw : Hop to word
- fl : Hop toa line 

### Copilot
- \<C-c> : Open Copilot Chat
- \<C-p> : Show Copilot Chat Action Prompt 
- \<C-CR> : Open Quick Copilot Chat 

### Resize Window
- \<A-K> : Resize split up
- \<A-J> : Resize split down
- \<A-H> : Resize split left
- \<A-L> : Resize split right

### Go to
- \<leader>sw : Go to wezterm config path

### Xcodebuild
- \<leader>xs : "Setup"
- \<leader>xd : "Select Device"
- \<leader>xp : "Select Project"
- \<leader>xb : "Build"
- \<leader>xr : "Run"
- \<leader>xB : "Build and Run"
