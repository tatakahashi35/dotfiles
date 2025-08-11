set -e # exit when error
set -x # debug mode

WORKING_DIR=~/dotfiles_tmp

function Log () {
    echo \[`date '+%Y/%m/%d %H:%M:%S'`\] $1
}

function Clean_up () {
    Log "Cleaning up working directory ..."
    rm -rf $WORKING_DIR
    Log "Cleaning up working directory [Done]"
}

Log "Start updating libraries ..."

# Clone dotfiles repository
Log "Cloning dotfiles repository ..."
mkdir -p $WORKING_DIR
cd $WORKING_DIR
git clone git@github.com:tatakahashi35/dotfiles.git
Log "Cloning dotfiles repository [Done]"

# Switch to the working branch
cd dotfiles
git pull origin main
git switch -c update_library

# Update Library versions
## brew
Log "Updating brew ..."
cd apps/brew
zsh update_Brewfile.sh
cd -
git add apps/brew/Brewfile
Log "Updating brew [Done]"

## vscode
Log "Updating vscode ..."
cd apps/vscode
zsh update_vscode_extensions.sh
cd -
git add apps/vscode/vscode_extensions.txt
Log "Updating vscode [Done]"

# Push changes
if git diff --cached --quiet; then
    Log "No changes added to commit"
    Log "Finish updating libraries"
    Clean_up
    exit 0
fi
git commit -m "Update library versions"
git push -f origin update_library

# Create a pull request
if [ "`gh pr list --head update_library --json url,title`" = "[]" ]; then
    Log "PR does not exist, creating a new one."
    Log "Creating PR ..."
    gh pr create --base main --head update_library --title "Update library" --body "Update library"
    Log "Creating PR [Done]"
else
    Log "PR already exists, skipping creation."
fi

# Clean up
Clean_up

Log "Completed updating libraries"
