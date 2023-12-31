# kickstart-nvim
Kickstart your neovim configuration!

## Setup
Uninstall any existing config you might have installed!

### Uninstall:

```bash
# Linux / Macos
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
# Windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

### Install:

These packages have to be installed for the config to work.
+ [Ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with Telescope 
+ [C Compiler](https://www.mingw-w64.org/downloads/) Windows users must have mingw installed and set on path.
  
Then, clone my repo using this command:

```
# Linux / Macos:
git clone https://github.com/POP303U/simple-nvim ~/.config/nvim --depth 1 && nvim

# Windows:
git clone https://github.com/POP303U/simple-nvim $HOME\AppData\Local\nvim --depth 1; nvim
```

Installation directory might be different for Windows users.
After Neovim started up and lazy installed all plugins, quit and reopen Neovim!

## Features

**Plugins**

+ lazy: fastest package manager in town 
+ telescope: fuzzy finder in neovim
+ lsp-zero: lsp-server support with lsp-zero
+ nvim-cmp: auto completion with nvim-cmp

Treesitter will install highlighting automatically when entering a file.

Install any lsp-server using :LspInstall while in a file

This config is tailored to rust developers and you might have to do research to use other lsp-servers,
although using :LspInstall on a file like Typescript or Haskell will work 99% of the time.

## Keybindings and Features

Everytime the 'leader' key is mentioned it will refer to the Space key

Everytime the 'C' key is mentioned it will refer to Control/Ctrl

Everytime the 'CR' key is mentioned it will refer to the Enter key

## Plugin Specific

### telescope 
+ 'leader'ff: Find files in current directory recursively
+'leader'fo: Find recently opened files
+ 'leader'fg: Search for patterns/words in current directory 
+ 'leader'fh: Search for help files (uncommon)

### nvim-cmp
+ 'C-p': Select next completion
+ 'C-n': Select previous completion
+ 'C-f': Scroll up in the documentation
+ 'C-d': Scroll down in the documentation
+ 'C-Space': Open snippets
+ 'C-e': Close snippets
+ 'CR': Confirm current completion

### lsp-zero
+ 'gd': Jumps to problems or diagnostics in code
+ 'K': Get info about a variable, function etc.
+ 'leader'vws: Query a function name etc. (i don't understand this)
+ 'leader'vd: Show diagnostic
+ '[d': Go to next diagnostic
+ ']d': Go to previous diagnostic
+ 'leader'vca: Perform code action on analyzed code
+ 'leader'vrr: Finds references to code
+ 'leader'vrn: Renames EVERY definition in your code (be careful!)

## Global Keymaps
+ 'leader'-: Increment a number (if your cursor is pointing at one)
+ 'leader'+: Decrement a number (if your cursor is pointing at one)
+ 'leader'sv: Split window vertically
+ 'leader'sh: Split window horizontally
+ 'leader'se: Even the splits out
+ 'leader'sx: Close current buffer
+ 'K': Move highlighted text up and indent accordingly
+ 'J': Move highlighted text down and indent accordingly
+ 'leader'y: copy into the system clipboard (another action like y or d is required after)
+ 'leader'rw: replace all words in current buffer

