#!/bin/bash

pkglist=(`cat ./vscode_extensions.txt | xargs`)

for pkg in ${pkglist[@]}; do
    echo -n "installing $pkg "
    code --install-extension $pkg
    echo done!
done

