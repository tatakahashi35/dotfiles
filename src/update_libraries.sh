set -e # exit when error
set -x # debug mode

echo "Start updating libraries ..."

# Remove existing dotfiles_tmp directory and recreate it
echo "Recreating dotfiles_tmp directory ..."
rm -rf ~/dotfiles_tmp
cp -r ~/dotfiles ~/dotfiles_tmp
cd ~/dotfiles_tmp
echo "Recreating dotfiles_tmp directory [Done]"

# Switch to the working branch
git pull origin main
if [ `git branch --list update_library` ]; then
    echo "update_library branch is already existing."
    git branch -D update_library
else
    echo "update_library branch isn't existing."
fi
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
    exit 0
fi
git commit -m "Update library versions"
git push -f origin update_library

# Create a pull request
echo "Creating PR ..."
gh pr create --base main --head update_library --title "Update library" --body "Update library"
echo "Creating PR [Done]"

echo "Completed updating libraries"
