#!/bin/sh

REPO="https://github.com/benningm/vimrc.git"
VIMDIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"
GIT=`which git`

if [ -z "$GIT" ] ; then
  echo "No git installed?!"
  exit 1
fi

if [ -e "$VIMDIR" ] ; then
  echo "$VIMDIR already exists!"
  exit 1
fi

if [ -e "$VIMRC" ] ; then
  echo "$VIMRC already exists!"
  exit 1
fi

echo "cloning to $VIMDIR..."
$GIT clone --recursive "$REPO" "$VIMDIR" >/dev/null || exit 1

echo "linking $VIMRC to $VIMDIR/vimrc..."
ln -s "$VIMDIR/vimrc" "$VIMRC"

