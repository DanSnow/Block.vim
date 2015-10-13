Block.vim
=========

# Description #
This plugin will open a block after you input left bracket and hit enter.
`{<Enter>` will become like
```
{
  <cursor here>
}
```
This key mapping now only for visual mode. Because delimitMate has a good support for now.

The key mapping is come from [c.vim](http://www.vim.org/scripts/script.php?script_id=213)

# Installation #

## Vundle ##
Insert this into your vimrc
```vim
Plugin 'DanSnow/Block.vim'
```
And type
```
:PluginInstall
```

# Setting #
You can use this to add more filetype that disable this keymapping at your vimrc.
```vim
call BlockIgnoreFiletype('<filetype>')
```

# Author #
DanSnow
