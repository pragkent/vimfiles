#!/bin/sh

VIMDIR=$(cd "$(dirname $0)" && pwd)
ln -vs $VIMDIR/vimrc ~/.vimrc
