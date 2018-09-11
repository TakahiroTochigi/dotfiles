#!/bin/bash
set -u
DOT_DIRECTORY="${HOME}/dotfiles"

echo "link home directory dotfiles"
cd ${DOT_DIRECTORY}
for f in .??*
do
    [ ${f} = ".git" ] && continue
    [ ${f} = ".gitignore" ] && continue
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

echo "linked dotfiles complete!"
