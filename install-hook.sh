#!/usr/bin/env bash

mkdir -p $HOME/.gittemplate/hooks
git config --global init.templatedir '~/.gittemplate'

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ln -s $SCRIPT_DIR/git-remaster $HOME/.gittemplate/hooks/post-checkout
