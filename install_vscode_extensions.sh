#!/bin/bash

pkglist=(
2gua.rainbow-brackets
bajdzis.vscode-database
bung87.rails
bung87.vscode-gemfile
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
chrmarti.regex
CoenraadS.bracket-pair-colorizer
CraigMaslowski.erb
DavidAnson.vscode-markdownlint
defaltd.go-coverage-viewer
donjayamanne.githistory
donjayamanne.jupyter
dunstontc.vscode-go-syntax
eamodio.gitlens
eg2.tslint
eriklynd.json-tools
formulahendry.vscode-mysql
foxundermoon.shell-format
hnw.vscode-auto-open-markdown-preview
humao.rest-client
ionutvmi.path-autocomplete
kogai.regex-railroad-diagrams
mechatroner.rainbow-csv
mikegleasonjr.theme-go
mkaufman.HTMLHint
MS-CEINTL.vscode-language-pack-ja
ms-mssql.mssql
ms-python.python
ms-vscode.cpptools
ms-vscode.Go
msyrus.go-doc
oderwat.indent-rainbow
PeterJausovec.vscode-docker
rebornix.ruby
robertohuertasm.vscode-icons
rogalmic.bash-debug
RomanPeshkov.go-test-outline
ryu1kn.partial-diff
shanoor.vscode-nginx
shardulm94.trailing-spaces
shd101wyy.markdown-preview-enhanced
sianglim.slim
windmilleng.vscode-go-autotest
wmaurer.vscode-jumpy
yzane.markdown-pdf
yzhang.markdown-all-in-one
)

for pkg in ${pkglist[@]}; do
    echo -n "installing $pkg "
    code --install-extension $pkg
    echo done!
done

