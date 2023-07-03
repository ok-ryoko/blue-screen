# Blue Screen

… is a minimal and monochromatic [Neovim] theme inspired by the notorious [blue screen of death] and dedicated to [error 0xA], `IRQL_NOT_LESS_OR_EQUAL`.

![Linux kernel source code relating to capability checks in Blue Screen colors](./docs/img/c-linux-commoncap.png)
Example: [Lines 66–87 from linux/security/commoncap.c@v6.0][example] featuring [Intel One Mono] at 12 pt, [nvim-treesitter], [Lualine][nvim-lualine/lualine.nvim] and [Indent Blankline][lukas-reineke/indent-blankline.nvim] rendered in [GNOME Terminal] at 80 × 24

## Installation

### Requirements

Neovim 0.9.0 or later

### [Packer]

```lua
use "ok-ryoko/blue-screen"
```

## Activation

### Lua

```lua
require("blue-screen").setup()
```

### Vimscript

```vim
colorscheme blue-screen
```

## Explicitly supported plugins

- [hrsh7th/nvim-cmp]
- [lewis6991/gitsigns.nvim]
- [lukas-reineke/indent-blankline.nvim]
- [nvim-lualine/lualine.nvim]
- [nvim-treesitter]

## License

Blue Screen is free and open source software licensed under the [MIT license].

[blue screen of death]: https://en.wikipedia.org/wiki/Blue_screen_of_death
[error 0xA]: https://learn.microsoft.com/en-us/windows-hardware/drivers/debugger/bug-check-0xa--irql-not-less-or-equal
[example]: https://github.com/torvalds/linux/blob/v6.0/security/commoncap.c#L66-L87
[GNOME Terminal]: https://wiki.gnome.org/Apps/Terminal
[Intel One Mono]: https://github.com/intel/intel-one-mono
[MIT license]: ./LICENSE.txt
[Neovim]: https://github.com/neovim/neovim
[Packer]: https://github.com/wbthomason/packer.nvim

[hrsh7th/nvim-cmp]: https://github.com/hrsh7th/nvim-cmp
[lewis6991/gitsigns.nvim]: https://github.com/lewis6991/gitsigns.nvim
[lukas-reineke/indent-blankline.nvim]: https://github.com/lukas-reineke/indent-blankline.nvim
[nvim-lualine/lualine.nvim]: https://github.com/nvim-lualine/lualine.nvim
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
