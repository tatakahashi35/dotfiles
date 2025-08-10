set -e # exit when error
set -x # debug mode

WORKING_DIR=~/dotfiles_tmp

function Clean_up () {
    echo "Cleaning up working directory ..."
    rm -rf $WORKING_DIR
    echo "Cleaning up working directory [Done]"
}

echo "Start updating libraries ..."

# Clone dotfiles repository
echo "Cloning dotfiles repository ..."
mkdir -p $WORKING_DIR
cd $WORKING_DIR
git clone git@github.com:tatakahashi35/dotfiles.git
echo "Cloning dotfiles repository [Done]"

# Switch to the working branch
cd dotfiles
git pull origin main
git switch -c update_library

# Update Library versions
## brew
echo "Updating brew ..."
cd apps/brew
zsh update_Brewfile.sh
cd -
git add apps/brew/Brewfile
echo "Updating brew [Done]"

## vscode
echo "Updating vscode ..."
cd apps/vscode
zsh update_vscode_extensions.sh
cd -
git add apps/vscode/vscode_extensions.txt
echo "Updating vscode [Done]"

# Push changes
if git diff --cached --quiet; then
    echo "No changes added to commit"
    echo "Finish updating libraries"
    Clean_up
    exit 0
fi
git commit -m "Update library versions"
git push -f origin update_library

# Create a pull request
if [ "`gh pr list --head update_library --json url,title`" = "[]" ]; then
    echo "PR does not exist, creating a new one."
    echo "Creating PR ..."
    gh pr create --base main --head update_library --title "Update library" --body "Update library"
    echo "Creating PR [Done]"
else
    echo "PR already exists, skipping creation."
fi

# Clean up
Clean_up

echo "Completed updating libraries"
