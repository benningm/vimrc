# vimrc
my personal vim configuration

## Installation

If a existing vim configuration exists. Move it away:

```
mv .vimrc .vim ~/attic
```

Then execute the `install.sh` script:

```
wget -O - https://raw.githubusercontent.com/benningm/vimrc/master/install.sh | bash
```

Or manualy clone the repository (with submodules) to your .vim config directory:

```
$ git clone --recursive https://github.com/benningm/vimrc.git .vim
```

Create a symlink from ~/.vimrc to .vim/vimrc:

```
ln -s ~/vim/vimrc ~/.vimrc
```

## On Windows

Clone to ~/vimfiles instead of ~/.vim and copy vimrc to ~/.vimrc.
