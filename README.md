# vimrc
my personal vim configuration

## Installation

If a existing vim configuration exists. Move it away:

```
mv .vimrc .vim ~/attic
```

Clone the repository (with submodules) to your .vim config directory:

```
$ git clone --recursive https://github.com/benningm/vimrc.git .vim
```

Create a symlink from ~/.vimrc to .vim/vimrc:

```
ln -s ~/vim/vimrc ~/.vimrc
```

## On Windows

Clone to ~/vimfiles instead of ~/.vim and copy vimrc to ~/.vimrc.
