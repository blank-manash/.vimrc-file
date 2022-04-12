pushd $HOME
rm -rf .vimbackup/
echo "Creating Backup..."
mkdir -p .vimbackup
mv .vim .vimbackup/
mv .vimrc .vimbackup/
echo "Removing All Files"
rm -rf ~/.vim .vimrc
echo "Installing Vim Config"
curl -fsSL https://raw.githubusercontent.com/blank-manash/.vimrc-file/main/.vimrc >> .vimrc
vim ~/.vimrc
popd

