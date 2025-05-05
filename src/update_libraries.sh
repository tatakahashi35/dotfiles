cd
cd dotfiles

# Switch to the working branch
git switch main
git pull origin main
git branch -D update_library
git switch -c update_library

# Update Library versions
## brew
cd brew
zsh update_Brewfile.sh
cd -
git add brew/Brewfile

## vscode
cd vscode
zsh update_vscode_extensions.sh
cd -
git add vscode/vscode_extensions.txt

# Push changes
git commit -m "Update library versions"
git push -f origin update_library

# Create a pull request
gh pr create --base main --head update_library --title "Update library" --body "Update library"

# Clean up
git switch main
