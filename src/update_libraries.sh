cd
cd dotfiles

# Switch to the working branch
git switch main
git pull origin main
git branch -D update_library
git switch -c update_library

# Update Library versions
## brew
echo "Updating brew ..."
cd apps/brew
zsh update_Brewfile.sh
cd -
git add apps/brew/Brewfile

## vscode
echo "Updating vscode ..."
cd apps/vscode
zsh update_vscode_extensions.sh
cd -
git add apps/vscode/vscode_extensions.txt

# Push changes
git commit -m "Update library versions"
git push -f origin update_library

# Create a pull request
echo "Creating PR"
gh pr create --base main --head update_library --title "Update library" --body "Update library"

# Clean up
git switch main
