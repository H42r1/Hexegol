# Création du dossier git_tools
mkdir ~/.exegol/my-resources/git_tools

# Ajout de penelope
git -C ~/.exegol/my-resources/git_tools clone https://github.com/brightio/penelope
ln -s /opt/my-resources/git_tools/penelope/penelope.py  ~/.exegol/my-resources/bin/penelope
chmod +x ~/.exegol/my-resources/git_tools/penelope/penelope.py

# Configuration de tmux
echo 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm' >> ~/.exegol/my-resources/setup/load_user_setup.sh
echo '~/.tmux/plugins/tpm/bin/install_plugins' >>  ~/.exegol/my-resources/setup/load_user_setup.sh
cp tmux.conf ~/.exegol/my-resources/setup/tmux/

# Ajout de burp
cp burp.sh ~/.exegol/my-resources/git_tools
chmod +x burp.sh
~/.exegol/my-resources/git_tools/burp.sh
rm burp.sh

