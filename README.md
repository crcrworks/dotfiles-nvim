# CRCR's nvim configs

## [User Plugins](/lua/plugins/) 
- [hop.nvim](/lua/plugins/hop.lua) : Jump anywhere  
- [hlchunk.nvim](/lua/plugins/hlchunk.lua) : Highlight the indent line  
- [nvim-surround](/lua/plugins/surround.lua) : Surround selections with characters  
- [xcodebuild.nvim](/lua/plugins/xcodebuild.lua) : Building, debugging, and testing for xcode  
- [vim-ghost](/lua/plugins/ghost.lua) : Edit browser textarea content in vim/neovim  
- [everforest](/lua/plugins/everforest.lua) : Everforest colorscheme for nvim  
- [vim-startuptime](/lua/plugins/startuptime.lua) : Everforest colorscheme for nvim  
- [noice.nvim](/lua/plugins/noice.lua) : Chagne view of messages. cmdline, and popupmenu  
- [nvim-scrollbar](/lua/plugins/scrollbar.lua) : scrollbar in nvim
- [copilot](/lua/plugins/copilot.lua) : Copilot in nvim
- [copilot-chat](/lua/plugins/copilot-chat.lua) Chat with copilot in nvim

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
