#!/bin/bash

cd ~

for f in .bashrc .profile .bash_profile .gitconfig .git-completion.bash .emacs.d .rdebugrc .tmux.conf
do
  cd ~ && ln -sf .dotfiles/$f $f
done
